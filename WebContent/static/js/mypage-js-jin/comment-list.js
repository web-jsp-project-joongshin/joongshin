
const $ul = $('ul.comment-box');
let text = "";

console.log(myCommentList);

myCommentList.forEach(comment => {
	text += `
		<li class="comment-item">
				<div class="comments">${comment.commentComments}</div>
				<div class="board-title">${comment.boardTitle}</div>
				<div class="time">${comment.commentRegisterDate.split(' ')[0]}</div>
				<div class="line"></div>
		</li>
	`;
})

if(myCommentList.length == 0) {
	text = `
		<article class="no-items align-self-center text-center no-items">
			<i>
				<img src="https://assets.cdn.soomgo.com/icons/icon-coupon-empty.svg" alt="empty">
			</i>
			<h3>작성 댓글이 없습니다</h3>
			<p class="help-block p2">숨고생활에 올려진 정보와 질문에<br> 댓글을 작성해보세요!</p>
		</article>
	`;
}

$ul.append(text);