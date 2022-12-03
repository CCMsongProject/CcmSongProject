package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class BoardDAO {

    @Autowired
    JdbcTemplate jdbcTemplate;

    public int insertBoard(BoardVO vo) {
        String sql = "insert into Song (title, nickname, singer, album, playtime, genre, comment) values ("
                + "" + vo.getTitle() + "," + "" + vo.getNickname() + "," + "" + vo.getSinger() + "," +
                "" + vo.getAlbum() + "," + "" + vo.getPlaytime() + "," + "" + vo.getGenre() + "," +
                "" + vo.getComment() + ")";
        return jdbcTemplate.update(sql);
    }

    public int deleteBoard(int seq) {
        String sql = "delete from Song where seq = " + seq;
        return jdbcTemplate.update(sql);
    }

    public int updateBoard(BoardVO vo) {
        String sql = "update Song set title=" + vo.getTitle() + "," + "nickname=" + vo.getNickname() + ","
                + "singer=" + vo.getSinger() + "," + "album=" + vo.getAlbum() + "," + "playtime=" + vo.getPlaytime() + ","
                + "genre=" + vo.getGenre() + "," + "comment=" + vo.getComment();
        return jdbcTemplate.update(sql);
    }

    class BoardRowMapper implements RowMapper<BoardVO> {
        @Override
        public BoardVO mapRow(ResultSet rs, int rowNum) throws SQLException {
            BoardVO vo = new BoardVO();
            vo.setSeq(rs.getInt("seq"));
            vo.setTitle(rs.getString("title"));
            vo.setNickname(rs.getString("nickname"));
            vo.setSinger(rs.getString("singer"));
            vo.setAlbum(rs.getString("album"));
            vo.setPlaytime(rs.getString("playtime"));
            vo.setGenre(rs.getString("genre"));
            vo.setComment(rs.getString("comment"));
            return vo;
        }
    }

    public BoardVO getBoard(int seq) {
        String sql = "select * from Song where seq=" + seq;
        return jdbcTemplate.queryForObject(sql, new BoardRowMapper());
    }

    public List<BoardVO> getBoardList() {
        String sql = "select * from Song order by regdate desc";
        return jdbcTemplate.query(sql, new BoardRowMapper());
    }

}
