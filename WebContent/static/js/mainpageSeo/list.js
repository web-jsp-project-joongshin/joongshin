	let boards = `${boards}`;
	let contextPath = `${pageContext.request.contextPath}`;
	let $form = $("form[name='page-form']");
	
	
	$("a.change-page").on("click", function(e){
		e.preventDefault();
		$form.find("input[name='page']").val($(this).attr("href"));
		$form.submit();
	});

function showList(){
	boards = JSON.parse(boards);
	console.log(boards);
	//files = JSON.parse(files);
	const $ul = $("#content-wrap ul");
	let text = "";
	
	boards.forEach(board => {
		text += `
			<li>
		        <div>
		            <a href="javascript:location.href='${contextPath}/detailOk.board?boardId=${board.boardId}'">
		                <section class="content-container">
		                    <div class="profile">
		                        <div><img src="${contextPath}/static/image/error.png" width="15px"></div>
		                        <h6 class="writer">${board.userName}</h6>
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
















