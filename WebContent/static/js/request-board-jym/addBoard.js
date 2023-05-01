/**
 * 
 */

/*게시글 목록*/
/*게시글 */
showList();

function showList() {
	/*	console.log(boards);*/
	boards = JSON.parse(boards);
	//files = JSON.parse(files);
	const $ul = $("ul#content-wrap");
	let text = "";

	boards.forEach(board => {
		text += `
			<li class="feed-item">
		        <div>
		            <a href="javascript:location.href='/detailOk.board'" data-testid="soomgo-life-feed-item">
						<p class="topic-name">${board.boardType}</p>
		                <section class="item-wrapper">
							<h3>${board.boardTitle}</h3>
							<p class="content">${board.boardContent}</p>
						</section>
						<p>${board.userName}</p>
						<div class="feed-footer">
							<div class="user-interaction">
								<span class="like sg-text-description sg-font-regular sg-text-gray-300"></span>
                            	<span class="comment sg-text-description sg-font-regular sg-text-gray-300"></span>
                            </div>
							<span class="sg-text-description sg-font-regular sg-text-gray-300">${elapsedTime(board.boardRegisterDate)}</span>
						</div>
			`;

		text += `
		            </a>
		        </div>
		    </li>
			`;
	});

	if (boards.length == 0) {
		text += `
			<li>
		        <div>
					현재 게시글이 없습니다. 게시글 작성을 해보세요!
				</div>
			</li>
		`
	}
	console.log($ul);
	$ul.append(text);
}
















