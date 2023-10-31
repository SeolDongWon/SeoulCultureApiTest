package controller;

import java.util.List;
import java.util.Scanner;

import model.CultureEventVO;

public class CultureEventController {
	public static Scanner scan = new Scanner(System.in);
	private CultureEventDAO cEDAO = new CultureEventDAO();

	// 데이터 가져오기
	public void importData() throws Exception {
		List<CultureEventVO> list = null;
		int rowNum = 0;

		System.out.printf("가져올 레코드의 수 입력>>");
		rowNum = scan.nextInt();
		scan.nextLine();

		list = CultureEventApi.importDataApi(rowNum);

		cEDAO.truncate();
		for (CultureEventVO data : list) {
			cEDAO.importDataDAO(data);
		}
	}

	// 데이터 검색
	public void searchData() throws Exception {
		CultureEventVO cEVO = new CultureEventVO();
		int selectMenu = 0;
		String keyWord = null;
		boolean stopFlag = false;

		String searchCODENAME = " 1 ";
		String searchGUNAME = " 1 ";
		String searchTITLEE = " 1 ";

		System.out.println("검색대상을 선택안하면 전체보기");

		while (!stopFlag) {
			System.out.println("검색할 컬럼의 번호를 선택하세요");
			System.out.println("0:이대로검색시작 1:분류 2:지역 3:행사명");
			selectMenu = scan.nextInt();
			scan.nextLine();

			
			
			
			
			if (selectMenu == 0) {
				break;
			} else if (selectMenu < 0 || 4 < selectMenu) {
				continue;
			}

			System.out.println("검색 키워드 입력");
			keyWord = scan.nextLine();

			switch (selectMenu) {
			case 1:
				searchCODENAME = "CODENAME";
				cEVO.setCODENAME(keyWord);
				break;
			case 2:
				searchGUNAME = "GUNAME";
				cEVO.setGUNAME(keyWord);
				break;
			case 3:
				searchTITLEE = "TITLE";
				cEVO.setTITLE(keyWord);
				break;
			default:
			}
		}
		String searchEvent = "select * from culturalEventInfo where " + searchCODENAME + " like ? and " + searchGUNAME
				+ " like ? and " + searchTITLEE + " like ? ";

		cEDAO.searchDataDAO(searchEvent, cEVO);
	}

}
