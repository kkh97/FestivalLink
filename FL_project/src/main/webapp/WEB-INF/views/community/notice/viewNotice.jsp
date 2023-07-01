<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>
	table.table{
		width:90%;
		margin:auto;
	}
</style>

<h2 class="text-center my-3">공지사항 내용</h2>

<table class="rounded shadow-sm table border='1'">
	<tr>
		<td width="20%">작성일</td>
		<td width="30%"><c:out value="${notice.notice_date1}" /></td>
	</tr>
	<tr>
		<td width="20%">글쓴이</td>
		<td width="30%"><c:out value="${notice.notice_nickname}" /></td>
		<td width="20%">조회수</td>
		<td width="30%"><c:out value="${notice.notice_readnum}" /></td>
	</tr>
	<tr height="60">
		<td width="20%">글내용</td>
		<td class="bg-white" colspan="3" align="left">${notice.notice_content}</td>
	</tr>
</table>