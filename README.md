# :computer: Academy Registration
- JSP를 활용한 프로그래밍 학원 수강신청 웹사이트 <br />
- MySQL로 데이터베이스를 연동하고 아파치 톰캣을 이용해 서버를 연결

<br />

## 개발 기간
>2023.06.01 - 2023.06.14

<br />

## 개발 환경
- 언어 : Java (JDK 1.8)
- 기술 : JSP
- DB : MySQL
- Server : Apache Tomcat 8.5
- 라이브러리
  - commons-collections4-4.4
  - commons-dbcp2-2.9.0
  - commons-pool2-2.11.1
  - mysql-connector-java-5.1.25-bin

<br />

## 구현 기능 및 기여도
- 기여도 : 100% (개인 프로젝트)
- 수강신청 기능
- 수강신청 목록 확인 기능
- 수강신청 정보 확인 기능
- 수강신청 수정 기능
- 수강신청 삭제 기능
- 회원가입 기능
- 회원 목록 확인 기능
- 로그인/로그아웃 기능
- 로그인 오류 처리 (ID 틀림, 비밀번호 틀림, DB오류)
- 개설 과목 검색 기능
- Bootstrap을 이용한 디자인 개선

<br />

## 파일 구조
<img src="https://github.com/na-kyoung/academy_website_jsp/assets/137421820/5486f5b4-e482-4385-b737-588f2009b81b" style="width:80%;"/>
<p></p>
<br />

<!--
![파일구조 최종](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/5486f5b4-e482-4385-b737-588f2009b81b)
-->

## 파일 설명
| 파일 이름 | 내용 |
|-----|-----|
| main.jsp | 아무 곳이나 클릭 시 메인 홈페이지로 이동 |
| main_sub.jsp | 메인 홈페이지 |
| main_nav.jsp | 메인 - 내비게이션 바 |
| main_carousel.jsp | 메인 - 이미지 슬라이드 |
| main_service.jsp | 메인 - 과목 카드 |
| loginForm.jsp | 로그인 페이지 - 정보 입력 후 로그인 버튼을 클릭 시, loginProc.jsp로 처리 |
| loginProc.jsp | 로그인 성공/실패 처리 - 로그인 실패 시 원인이 뜨고, 로그인 성공 시 메인 홈페이지로 이동 |
| joinForm.jsp | 회원가입 페이지 - 정보 입력 후 회원가입 버튼을 클릭 시, joinProc.jsp로 이동 |
| joinProc.jsp | 회원가입 완료 페이지 - 입력한 정보를 확인 |
| joinList.jsp | 회원 목록 페이지 - 회원 목록 확인 |
| searchProc.jsp  | 검색 결과 페이지 - 프로그래밍 언어 검색 시, 해당 언어 개설 과목 결과 확인 |
| registerForm.jsp | 수강신청 페이지 - 정보 입력 후 신청하기 버튼을 클릭 시, registerProc.jsp로 이동 |
| registerProc.jsp | 수강신청 완료 페이지 - 입력한 정보를 확인 |
| registerList.jsp | 수강신청 목록 페이지 - 수강신청 목록을 확인하고, 이름을 클릭 시 registerInfo.jsp로 이동 |
| registerInfo.jsp | 수강신청 정보 확인 페이지 - 선택한 이름의 수강신청 정보를 확인하고 수정/삭제/돌아가기 가능 |
| registerModify.jsp | 수강신청 수정 페이지 - 정보 수정 후 수정하기 버튼 클릭 시, registerList.jsp로 이동 |
| registerModifyProc.jsp | 수강신청 수정 처리 |
| registerDeleteProc.jsp | 수강신청 삭제 처리 |
| loginDo.java | 회원 정보 |
| loginDao.java | 회원 정보 처리 |
| registerDo.java | 수강신청 정보 |
| registerDao.java | 수강신청 정보 처리 |
| subjectDo.java	 | 과목 정보 |
| subjectDao.java | 과목 정보 처리 |

<br />

## 결과
<!-- [결과 보고서 보러가기](https://github.com/na-kyoung/academy_website_jsp/blob/master/academy_result.pdf) -->

![1](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/6599a046-c52f-44b6-8f78-30d16ad52f57)

![2](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/e1eb577f-6430-4aea-bb86-e8b03f2b611c)

![3](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/c7a24dd7-c472-4946-a006-75fe118c9bc1)

![4](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/0f2ccb09-24c0-4d9e-88f9-798033d98275)

![5](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/2d3ea0de-a62f-437b-abc6-1ead04c88718)

![6](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/31a3df44-055f-4850-b800-4b5751d7969c)

![7](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/eab4f871-046b-4c5e-ab92-175db351b3af)

![8](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/f6445d97-e22b-4614-9b4a-dc30153e36a3)

![9](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/82b79655-863f-478d-8c14-bbe8fb2ea083)

![10](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/9735fdaa-dde1-41fd-82a6-9c35783d6ef3)

![11](https://github.com/na-kyoung/academy_website_jsp/assets/137421820/8bea5069-81f3-4209-8d0e-7d2917bbd329)

