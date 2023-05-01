console.log(myBoardList);

const $ul = $('ul.board-box');
let text = "";

myBoardList.forEach(board => {
	text += `
		<li class="board-item">
				<div class="comments">${board.boardTitle}</div>
				<div class="board-title">${board.boardContent}</div>
				<div class="time">${board.boardRegisterDate.split(' ')[0]}</div>
				<div class="line"></div>
		</li>
	`;
})

if(myBoardList.length == 0) {
	text = `
		<article class="no-items align-self-center text-center no-items">
			<i>
				<img src="https://assets.cdn.soomgo.com/icons/icon-coupon-empty.svg" alt="empty">
			</i>
			<h3>작성 게시물이 없습니다</h3>
			<p class="help-block p2">숨고생활에 올려진 정보와 질문에<br> 댓글을 작성해보세요!</p>
		</article>
	`;
}

$ul.append(text);