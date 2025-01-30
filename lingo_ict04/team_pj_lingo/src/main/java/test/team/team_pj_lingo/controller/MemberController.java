package test.team.team_pj_lingo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import test.team.team_pj_lingo.service.MemberService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

@Controller
@RequestMapping("/member")
public class MemberController {
	
    @Autowired
    private MemberService memberService;
    
    private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

    // 첫 페이지
    @RequestMapping("/main.do")
    public String main() {
        logger.info("<<< url ==> /main.do >>>");
        return "common/main";
    }

    // 로그인 처리
    @RequestMapping("/login.do")
    public String login(HttpServletRequest request, Model model) throws ServletException, IOException {
        logger.info("<<< url ==> /member/login.do >>>");
        memberService.loginAction(request, model);
        return "member/login";
    }

    // 회원 탈퇴 처리
    @RequestMapping("/delete.do")
    public String deleteCustomer(HttpServletRequest request, Model model) throws ServletException, IOException {
        logger.info("<<< url ==> /member/delete.do >>>");
        memberService.deleteCustomerAction(request, model);
        return "member/delete";
    }

    // 회원 상세 정보 조회
    @RequestMapping("/detail.do")
    public String customerDetail(HttpServletRequest request, Model model) throws ServletException, IOException {
        logger.info("<<< url ==> /member/detail.do >>>");
        memberService.modifyDetailAction(request, model);
        return "member/detail";
    }

    // 회원 정보 수정 처리
    @RequestMapping("/modify.do")
    public String modifyCustomer(HttpServletRequest request, Model model) throws ServletException, IOException {
        logger.info("<<< url ==> /member/modify.do >>>");
        memberService.modifyCustomerAction(request, model);
        return "member/modify";
    }
}
