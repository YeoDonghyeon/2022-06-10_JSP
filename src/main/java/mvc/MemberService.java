package mvc;

public class MemberService {
	public int joinMember(MemberDTO newMemberInfo) {
		
		MemberDAO dao = new MemberDAO();
		boolean success = dao.insertMember(newMemberInfo);
		
		if(success == true) {
			return 200;
		} else {
			return 409;
		}
		
	}

	public int getMemberById(String id) {
		return 0;
	}

	public int updateMember(MemberDTO newMemberInfo) {
		return 0;
	}

	public int deleteMemberById(String id) {
		return 0;
	}
}
