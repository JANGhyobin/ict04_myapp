package test.team.team_pj_lingo.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import test.team.team_pj_lingo.dto.MemberDTO;

import java.util.Map;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired
    private SqlSession sqlSession;

    private static final String NAMESPACE = "com.example.Lingo.mapper.MemberMapper";

    // 로그인 처리 (ID, 비밀번호 확인)
    @Override
    public int idPasswordChk(Map<String, Object> map) {
        return sqlSession.selectOne(NAMESPACE + ".idPasswordChk", map);
    }

    // 회원 탈퇴 처리
    @Override
    public int deleteCustomer(String memId) {
        return sqlSession.delete(NAMESPACE + ".deleteCustomer", memId);
    }

    // 회원 정보 상세 조회
    @Override
    public MemberDTO CustomerDetail(String memId) {
        return sqlSession.selectOne(NAMESPACE + ".customerDetail", memId);
    }

    // 회원 정보 수정 처리
    @Override
    public int updateCustomer(MemberDTO dto) {
        return sqlSession.update(NAMESPACE + ".updateCustomer", dto);
    }
}