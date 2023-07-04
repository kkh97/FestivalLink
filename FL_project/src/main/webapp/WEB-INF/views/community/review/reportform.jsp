<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="https://cdn.ckeditor.com/4.17.2/standard/ckeditor.js"></script>

<script>
	$(function(){
		CKEDITOR.replace("content", {
			autoParagraph: false,
		});
		$("#rf").submit(function(){
			let str = CKEDITOR.instances.content.getData();
			if(!str){
				alert("글내용을 입력하세요");
				CKEDITOR.instances.content.focus();
				return false;
			}
									
			return true;
		});
	});
</script>

<div class="row">
	<div align="center" class="col-md-8 offset-md-2 my-4">
		<h2>리뷰 신고하기</h2>
		<!--파일 업로드시
 			method: POST
  			enctype: multipart/form-data 
   		-->
		<form name="rf" id="rf" action="report" method="post">
			<!-- 글쓰기: write, 답글쓰기: rewrite, 수정: edit -->
			<input type="hidden" name="mode" value="write">
			<input type="hidden" name="user_id" value="${user_id}">
			<table class="table">
				<tr>
					<td style="width: 20%"><b>글쓴이</b></td>
					<td style="width: 80%; border:1">
						<input type="text" name="nickname" id="nickname" class="form-control" value="${nickname}" readonly>
					</td>
				</tr>
				<tr>
					<td style="width: 20%"><b>신고글</b></td>
					<td style="width: 80%; border:1">
						<input type="text" name="title" id="title" class="form-control" value="${title}" readonly>
					</td>
				</tr>
				<tr>
					<td style="width: 20%"><b>신고내용</b></td>
					<td style="width: 80%">
						<textarea name="content" id="content" rows="10" cols="50" class="form-control"></textarea>
					</td>
				</tr>
				<tr>
					<td colspan="2" class="text-center">
						<button type="submit" id="btnWrite" class="btn btn-success">신고하기</button>
						<button type="reset" id="btnReset" class="btn btn-warning">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
	<!-- .col end-->
</div>
<!-- .row end-->