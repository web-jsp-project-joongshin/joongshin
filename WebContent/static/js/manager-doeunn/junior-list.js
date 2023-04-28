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
                <td><input type="checkbox" class="checkbox"/></td>
                <td>${board.userId}</td>
                <td><a href="javascript:location.href='${contextPath}/templates/manager-doeunn/juniorBoardDetail.jsp'">${board.userName}</a></td>
                <td>${board.userResume}</td>
                <td>${board.userCareerYears}</td>
                <td>${board.boardRegisterDate}</td>
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
















