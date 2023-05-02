/*게시글 목록*/
showList();

function showList(){
	console.log(users);
	users = JSON.parse(users);
	//files = JSON.parse(files);
	const $table = $("#content-wraps");
	let text = "";
	
	users.forEach(board => {
		text += `
			<tr>	
                <td><input type="checkbox" class="pcheckbox"/></td>
                <td>${board.userName}</td>
                <td><a href="javascript:location.href='${contextPath}/listUserDetailOk.admin?boardId=${board.boardId}'">${board.boardTitle}</a></td>
                <td>${board.boardContent}</td>
				<td class="date">` + elapsedTime(board.boardRegisterDate)+`</td>
                <td>${board.boardType}</td>
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
















