package dao;

import java.util.ArrayList;

import dto.Consult;

public class ConsultRepository {

	private ArrayList<Consult> listOfConsults = new ArrayList<Consult>();
	private static ConsultRepository instance = new ConsultRepository();

	public static ConsultRepository getInstance(){
		return instance;
	} 
	

	public ConsultRepository() {
		Consult personalConsult = new Consult();
		personalConsult.setConsultId("C0001");
		personalConsult.setFilename("personal.jpg");
		personalConsult.setCName("개인상담");
		personalConsult.setDescription("개인상담은 일상생활을 방해하는 해결되지 않은 문제로 대학생활에 어려움을 겪을 때 1:1로 전문적인 상담자의 도움을 받는 것입니다. "
				+ "개인 상담을 통해 자신의 미해결과제를 해결하고 건강한 관계 속에서 성장을 도모할 수 있습니다.\r\n" + 
				"개인상담은 주1회 50분 진행되며 평균 12~15회 정도 진행됩니다.");
		personalConsult.setPicName("김영희");
		personalConsult.setPicPhone("010-1234-1234");
		personalConsult.setMaxNum(20);
		

		Consult groupConsult = new Consult();
		groupConsult.setConsultId("C0002");
		groupConsult.setFilename("group.jpg");
		groupConsult.setCName("집단상담");
		groupConsult.setDescription("두 사람 혹은 그 이상의 사람들이 상호간에 영향을 미치면서 공동의 주제에 대해 함께 이야기하며 개인의 대인관계, 사고 및 행동양식의 "
				+ "변화를 가져오는 장입니다. 지도자와 10명 내외의 학생들이 함께 매주 1회씩 2시간~3시간, 총 3회~5회의 집단상담이 이루어집니다.");
		groupConsult.setPicName("이철수");
		groupConsult.setPicPhone("010-2345-2345");
		groupConsult.setMaxNum(30);
		

		Consult peerConsult = new Consult();
		peerConsult.setConsultId("C0003");
		peerConsult.setFilename("peer.jpg");
		peerConsult.setCName("또래상담");
		peerConsult.setDescription("또래상담은 비슷한 연령과 유사한 경험 및 가치관 등을 가지고 있는 청소년들이 일정한 훈련을 받은 후에 자신의 경험을 바탕으로 하여 주변에 있는 다른 또래들의"
				+ " 정상적인 발달 과정에서 일어날 수 있는 문제의 해결에 조력하여 이들이 성장, 발달할 수 있도록 생활의 제반 영역에서 지지적인 도움을 제공하는 프로그램입니다.");
		peerConsult.setPicName("박정숙");
		peerConsult.setPicPhone("010-3456-3456");
		peerConsult.setMaxNum(10);
	/*
		Consult peer1Consult = new Consult();
		peer1Consult.setProgramId("p0003");
		peer1Consult.setPName("또래상담");
		peer1Consult.setDescription("개인상담은 일상생활을 방해하는 해결되지 않은 문제로 대학생활에 어려움을 겪을 때 1:1로 전문적인 상담자의 도움을 받는 것입니다. "
				+ "개인 상담을 통해 자신의 미해결과제를 해결하고 건강한 관계 속에서 성장을 도모할 수 있습니다.\r\n" + 
				"개인상담은 주1회 50분 진행되며 평균 12~15회 정도 진행됩니다.");
		peer1Consult.setPicName("박정숙");
		peer1Consult.setPicPhone("010-3456-3456");
		peer1Consult.setMaxNum(30);
	*/

		listOfConsults.add(personalConsult);
		listOfConsults.add(groupConsult);
		listOfConsults.add(peerConsult);
		//listOfConsults.add(peer1Consult);
	}

	public ArrayList<Consult> getAllConsults() {
		return listOfConsults;
	}
	
	public Consult getConsultById(String consultId) {
		Consult consultById = null;

		for (int i = 0; i < listOfConsults.size(); i++) {
			Consult consult = listOfConsults.get(i);
			if (consult != null && consult.getConsultId() != null && consult.getConsultId().equals(consultId)) {
				consultById = consult;
				break;
			}
		}
		return consultById;
	}
	
	public void addConsult(Consult consult) {
		listOfConsults.add(consult);
	}
}
