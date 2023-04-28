/*게시글 목록*/
showList();

function showList(){
	console.log(users);
	users = JSON.parse(users);
	//files = JSON.parse(files);
	const $table = $("#content-wrap");
	let text = "";
	
	users.forEach(board => {
		text += `
			<tr>	
		        <td><input type="checkbox" class="checkbox"/></td>
		        <td>${board.userId}</td>
		        <td>${board.boardTitle}</td>
		        <td>${board.boardContent}</td>
		        <td class="date">` + elapsedTime(board.boardRegisterDate) + `</td>
		        <td>${board.boardRegisterDate}</td>
		        <td class="pending">답변완료</td>
				<td><input type="checkbox" class="checkbox"/></td>
                <td>1</td>
                <td><a href="javascript:location.href='${contextPath}/templates/manager-doeunn/userBoardDetail.jsp'">제목이 들어갈 자리입니다</a></td>
                <td>내용이 들어갈 자리입니다</td>
                <td>2023-04-19</td>
                <td>21</td> 
			`;
			/*if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
			}*/
			text += `
		    </tr>
			`;
	});
	
	if(users.length == 0){
		text += `
			<li>
		        <div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}
	
	$table.append(text);
}
















