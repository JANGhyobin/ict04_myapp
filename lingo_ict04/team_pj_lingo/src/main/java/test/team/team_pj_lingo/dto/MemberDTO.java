package test.team.team_pj_lingo.dto;

import java.sql.Timestamp;
import java.util.Date;

public class MemberDTO {
    private int memNo;
    private String memId;
    private String memPwd;
    private String memName;
    private String memCountry;
    private Date memBirthday;
    private String memAddress;
    private String memHp;
    private int memRank;
    private String memEmail;
    private String memComment;
    private Timestamp memRegdate;

    public MemberDTO() {}

    public MemberDTO(int memNo, String memId, String memPwd, String memName, String memCountry, Date memBirthday, 
                     String memAddress, String memHp, int memRank, String memEmail, String memComment, Timestamp memRegdate) {
        this.memNo = memNo;
        this.memId = memId;
        this.memPwd = memPwd;
        this.memName = memName;
        this.memCountry = memCountry;
        this.memBirthday = memBirthday;
        this.memAddress = memAddress;
        this.memHp = memHp;
        this.memRank = memRank;
        this.memEmail = memEmail;
        this.memComment = memComment;
        this.memRegdate = memRegdate;
    }

	public int getMemNo() {
		return memNo;
	}

	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPwd() {
		return memPwd;
	}

	public void setMemPwd(String memPwd) {
		this.memPwd = memPwd;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemCountry() {
		return memCountry;
	}

	public void setMemCountry(String memCountry) {
		this.memCountry = memCountry;
	}

	public Date getMemBirthday() {
		return memBirthday;
	}

	public void setMemBirthday(Date memBirthday) {
		this.memBirthday = memBirthday;
	}

	public String getMemAddress() {
		return memAddress;
	}

	public void setMemAddress(String memAddress) {
		this.memAddress = memAddress;
	}

	public String getMemHp() {
		return memHp;
	}

	public void setMemHp(String memHp) {
		this.memHp = memHp;
	}

	public int getMemRank() {
		return memRank;
	}

	public void setMemRank(int memRank) {
		this.memRank = memRank;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemComment() {
		return memComment;
	}

	public void setMemComment(String memComment) {
		this.memComment = memComment;
	}

	public Timestamp getMemRegdate() {
		return memRegdate;
	}

	public void setMemRegdate(Timestamp memRegdate) {
		this.memRegdate = memRegdate;
	}

	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memId=" + memId + ", memPwd=" + memPwd + ", memName=" + memName
				+ ", memCountry=" + memCountry + ", memBirthday=" + memBirthday + ", memAddress=" + memAddress
				+ ", memHp=" + memHp + ", memRank=" + memRank + ", memEmail=" + memEmail + ", memComment=" + memComment
				+ ", memRegdate=" + memRegdate + "]";
	}

    
}
