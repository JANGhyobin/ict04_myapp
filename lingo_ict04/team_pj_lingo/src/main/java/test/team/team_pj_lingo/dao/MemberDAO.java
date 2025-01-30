package test.team.team_pj_lingo.dao;

import java.util.Map;

import test.team.team_pj_lingo.dto.MemberDTO;

public interface MemberDAO {
    
    // 로그인 처리 / 회원정보 인증 (ID, 비밀번호 확인)
    int idPasswordChk(Map<String, Object> map);

    // 회원 탈퇴 처리
    int deleteCustomer(String memId);

    // 회원 정보 상세 조회
    MemberDTO CustomerDetail(String memId);

    // 회원 정보 수정 처리
    int updateCustomer(MemberDTO dto);
}

