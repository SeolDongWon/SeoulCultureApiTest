
import controller.CultureEventController;
import view.menuNumber;
import view.MenuViewer;

public class SeoulApiMain {

	public static void main(String[] args) throws Exception {
		mainMenu();
	}

	private static void mainMenu() {
		CultureEventController cEC = new CultureEventController();
		int selectMenu = 0;
		boolean stopFlag = false;

		while (!stopFlag) {
			try {
				MenuViewer.mainMenuView();
				selectMenu = MenuViewer.scan.nextInt();
				MenuViewer.scan.nextLine();

				switch (selectMenu) {
				case menuNumber.EXIT: // 프로그램 종료
					System.out.println("프로그램 종료");
					stopFlag = true;
					break;
				case menuNumber.IMPORT_DATA: // 데이터 가져오기
					cEC.importData();
					break;
				case menuNumber.SEARCH_DATA: // 데이터 검색하기
					cEC.searchData();
					break;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
