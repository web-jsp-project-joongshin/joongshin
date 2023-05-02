/*게시글 목록*/
showList();

function showList(){
	console.log(boards1);
	boards1 = JSON.parse(boards1);
	//files = JSON.parse(files);
	const $table = $("tbody");
	let text = "";
	
	boards1.forEach(board => {
		/*text += `
			<tr>	
		        <td><input type="checkbox" class="pcheckbox"/></td>
		        <td>${board.userId}</td>
		        <td><a href="javascript:location.href='${contextPath}/templates/manager-doeunn/inquiriesAnswer.jsp'">${board.boardTitle}</a></td>
		        <td>${board.boardContent}</td>
				<td class="date">` + elapsedTime(board.boardCreationDate)+`</td>
		        <td>${board.boardReplyDate}</td>
		        <td class="pending">답변대기</td>
						 
			`;
			/*if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
			}*/
			/*
			text += `
		    </tr>
			`;
			*/
			if(board.boardStatus == null) {
				console.log(board.boardStatus);
				//css 속성
				text += `

					<tr>	
				        <td><input type="checkbox" class="pcheckbox"/></td>
				        <td>${board.boardId}</td>
				        <td><a href="javascript:location.href='${contextPath}/updateBoardList.admin?boardId=${board.boardId}'">${board.boardTitle}</a></td>
				        <td ${contextPath}/updateBoardList.admin?answer={board.boardContent}>${board.boardContent}</td>
						<td class="date">` + elapsedTime(board.boardRegisterDate)+`</td>
				        <td class="pending">답변대기</td>
						<td>${board.boardType}</td>
					</tr>
				
				`;
				
			} else {
					text += `
					
						<tr>	
					        <td><input type="checkbox" class="pcheckbox"/></td>
					        <td>${board.boardId}</td>
					        <td><a href="javascript:location.href='${contextPath}/updateBoardList.admin?boardId=${board.boardId}'">${board.boardTitle}</a></td>
					        <td name="answer">${board.boardContent}</td>
							<td class="date">` + elapsedTime(board.boardRegisterDate)+`</td>
					        <td class="success">${board.boardStatus}</td>
							<td>${board.boardType}</td>
						</tr>

				`;

			}
	});
	
	if(boards1.length == 0){
		text += `
			<table>
				<tr rowspan='2'style="text-align:center">
					<td>
						현재 게시글이 없습니다. 게시글 작성을 해보세요!
					</td>
				</tr>
			</table>
		`;
	}
	
	$table.append(text);
}
















