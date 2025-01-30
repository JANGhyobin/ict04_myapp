package test.team.team_pj_lingo.service;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import test.team.team_pj_lingo.dao.MemberDAO;
import test.team.team_pj_lingo.dto.MemberDTO;


@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberDAO memberDAO;

    // 로그인 처리 / 회원정보 인증(수정, 탈퇴)
    @Override
    public void loginAction(HttpServletRequest request, Model model) 
    		throws ServletException, IOException {
        String memId = request.getParameter("memId");
        String memPwd = request.getParameter("memPwd");

        Map<String, Object> map = new HashMap<String, Object>();
        map.put("memId", memId);
        map.put("memPwd", memPwd);

        int selectCnt = memberDAO.idPasswordChk(map);
        
        if(selectCnt == 1) {
        	request.getSession().setAttribute("sessionId", memId);
        }
        else {
        	request.getSession().setAttribute("sessionId", null);
        }
        model.addAttribute("loginResult", selectCnt > 0 ? "success" : "fail");
    }

    // 회원 탈퇴 처리
    @Override
    public void deleteCustomerAction(HttpServletRequest request, Model model) 
    		throws ServletException, IOException {
        String memId = request.getParameter("memId");

        int deleteCnt = memberDAO.deleteCustomer(memId);

        model.addAttribute("deleteResult", deleteCnt > 0 ? "success" : "fail");
    }

    // 회원정보 상세 조회
    @Override
    public void modifyDetailAction(HttpServletRequest request, Model model) 
    		throws ServletException, IOException {
        String memId = request.getParameter("memId");

        MemberDTO member = memberDAO.CustomerDetail(memId);
        model.addAttribute("member", member);
    }

    // 회원정보 수정 처리
    @Override
    public void modifyCustomerAction(HttpServletRequest request, Model model) throws ServletException, IOException {
        MemberDTO dto = new MemberDTO();
        dto.setMemId(request.getParameter("memId"));
        dto.setMemPwd(request.getParameter("memPwd"));
        dto.setMemName(request.getParameter("memName"));
        dto.setMemCountry(request.getParameter("memCountry"));
        
        // 날짜 변환을 한 줄로 처리
        try {
            String memBirthdayStr = request.getParameter("memBirthday");
            if (memBirthdayStr != null && !memBirthdayStr.isEmpty()) {
                dto.setMemBirthday(new SimpleDateFormat("yyyy-MM-dd").parse(memBirthdayStr));
            }
        } catch (ParseException e) {
            model.addAttribute("error", "잘못된 날짜 형식입니다.");
            return;
        }

        // 나머지 세팅
        dto.setMemAddress(request.getParameter("memAddress"));
        dto.setMemHp(request.getParameter("memHp"));
        dto.setMemEmail(request.getParameter("memEmail"));
        dto.setMemComment(request.getParameter("memComment"));

        int updateCnt = memberDAO.updateCustomer(dto);
        model.addAttribute("updateResult", updateCnt > 0 ? "success" : "fail");
    }


}
