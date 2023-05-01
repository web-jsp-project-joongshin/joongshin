/*게시글 목록*/
showList();

function showList(){
	console.log(juniors);
	juniors = JSON.parse(juniors);
	//files = JSON.parse(files);
	const $table = $("#content-wraps");
	let text = "";
	
	juniors.forEach(board => {
		text += `
			<tr>	
                <td><input type="checkbox" class="pcheckbox"/></td>
                <td>${board.userName}</td>
                <td><a href="javascript:location.href='${contextPath}/templates/manager-doeunn/juniorBoardDetail.jsp'">${board.boardTitle}</a></td>
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
	
	if(juniors.length == 0){
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
















