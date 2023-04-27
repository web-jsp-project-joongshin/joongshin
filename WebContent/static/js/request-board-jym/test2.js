/**
 * 
 */

/*게시글 목록*/
/*게시글 */
showList();

function showList(){
/*	console.log(boards);*/
	boards = JSON.parse(boards);
	//files = JSON.parse(files);
	const $ul = $("#content-wrap ul");
	let text = "";
	
	boards.forEach(board => {
		text += `
			<li class="feed-item">
		        <div>
		            <a href="javascript:location.href='${contextPath}/board/detailOk.board'" data-testid="soomgo-life-feed-item">
						<p class="topic-name">${board.boardType}</p>
		                <section class="item-wrapper">
							<h3>${board.boardTitle}</h3>
							<p class="content">${board.boardContent}</p>
						</section>
			`;
			/*if(files[board.boardId]){
				text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="">`;
			}*/
			text += `
		            </a>
		        </div>
		    </li>
			`;
	});
	
	if(board.length == 0){
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
















