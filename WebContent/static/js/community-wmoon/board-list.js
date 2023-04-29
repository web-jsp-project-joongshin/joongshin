/*게시글 목록*/
showList();

function showList(){
	console.log(boards);
	boards = JSON.parse(boards);
	//files = JSON.parse(files);
	const $ul = $(".feed-list li");
	let text = ""; 
	boards.forEach(board => {
		text += `
							
										<li class="feed-item">
											<a href="http://localhost:8090/joongshin/templates/community-users-wmoon/view-detail.jsp" class>
												<div class="feed-content service-address-info">
													<div>
														<section class="item-wrapper">
															<h3 class="sg-text-subhead5 sg-font-medium sg-text-gray-900">${board.boardTitle}</h3>
															<p class="content sg-text-body2 sg-font-regular sg-text-gray-500">${board.boardContent} </p>
														</section>
														<p data-v-23814058="" class="sub-information sg-text-description sg-font-regular sg-text-gray-500"></p>
													</div>
											
												</div>
												<div class="feed-footer">
													<div class="user-interaction">
														<span class="like sg-text-description sg-font-regular sg-text-gray-300">${board.userName}</span>
														<span class="comment sg-text-description sg-font-regular sg-text-gray-300">1</span>
													</div>
													<span class="sg-text-description sg-font-regular sg-text-gray-300 time">`+ elapsedTime(board.boardRegisterDate) +`</span>
												</div>
											</a>
										</li>

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
	
	/*게시글이 없다면 해당 문구 출력*/ 
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
















