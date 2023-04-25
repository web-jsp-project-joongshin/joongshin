/*게시글 목록*/
showList();

function showList(){
	console.log(boards);
	boards = JSON.parse(boards);
	//files = JSON.parse(files);
	const $ul = $("#content-wrap ul");
	let text = "";
	
	boards.forEach(board => {
		text += `
			<li>
		        <div>
		            <a href="javascript:location.href='${contextPath}/board/detailOk.board'">
		                <section class="content-container">
		                    <div class="profile">
		                        <div><img src="${contextPath}/static/images/profile.png" width="15px"></div>
		                        <h6 class="writer">${board.memberName}</h6>
		                    </div>
		                    <h4 class="title">${board.boardTitle}</h4>
		                    <h6 clss="board-info">
		                        <span class="read-count">조회 ${board.boardReadCount}</span>
		                        <span>·</span>
		                        <span class="date">`+ elapsedTime(board.boardRegisterDate) +`</span>
		                    </h6>
		                </section>
			`;
			/*if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
			}*/
			text += `
		            </a>
		        </div>
		    </li>
			`;
	});
	
	if(boards.length == 0){
		text += `
			<li>
		        <div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}
	
	$ul.append(text);
}
















