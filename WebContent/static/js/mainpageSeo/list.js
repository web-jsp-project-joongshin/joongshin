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
		            <a href="javascript:location.href='${contextPath}/detailOk.board?boardId=${board.boardId}'">
		                <section class="content-container">
		                        <h6 class="writer">${board.userName}</h6>
		                    <h4 class="title">${board.boardTitle}</h4>
		                    <h6 clss="board-info">
		                        <span class="content">${board.boardContent}</span>
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
















