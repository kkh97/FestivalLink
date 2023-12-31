<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	@font-face {
	    font-family: 'NanumSquareNeo-Variable';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_11-01@1.0/NanumSquareNeo-Variable.woff2') format('woff2');
	    font-weight: normal;
	    font-style: normal;
	}
	
	h1.title{
		color: aliceblue;
	    font-family: 'NanumSquareNeo-Variable';
	}
</style>

<div class="container">
	<div class="row mt-3">
		<div class="col-12 my-5">
			<h1 class="title text-center text-light">공지 내용</h1>
		</div>
		<div class="col-12">
			<table class="rounded bg-light shadow-sm table border='1'">
				<tr>
					<td width="5%"><b>글쓴이</b></td>
					<td width="45%" colspan="3"><c:out value="${notice.notice_nickname}" /></td>
				</tr>
				<tr>
					<td width="5%"><b>작성일</b></td>
					<td width="20%">
						<c:out value="${notice.notice_date1} " />
						<c:out value="${notice.notice_time}" />
					</td>
					<td width="5%"><b>조회수</b></td>
					<td width="20%"><c:out value="${notice.notice_readnum}" /></td>
				</tr>
				<tr height="60">
					<td width="5%"><b>글내용</b></td>
					<td class="bg-white" colspan="3" align="left">
						<textarea name="content" id="content" rows="10" cols="50" class="form-control" readonly><c:out value="${notice.notice_content}"/></textarea>
					</td>
				</tr>
				<tr>
					<td class="text-center" colspan="4">
						<button type="button" class="btn btn-secondary" onclick="location.href='javascript:history.back()'">닫기</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>