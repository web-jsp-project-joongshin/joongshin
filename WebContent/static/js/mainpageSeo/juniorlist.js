
showListJS();

function showListJS() {
  console.log(boards);
  const $ul = $("#content-wrap-js ul");
  let text = "";
  boards.forEach((board) => {
    text += `
      <li style="display: inline-block;">
        <div>
          <a href="javascript:location.href='${contextPath}/detailOk.board?boardId=${board.boardId}'">
            <section class="content-container" style="width: 70%">
              <h6 class="writer">${board.userName}</h6>
              <h4 class="title">${board.boardTitle}</h4>
              <h6 clss="board-info">
              </h6>
            </section>`;
    /*if(files[board.boardId]){
                text += `<img src="${contextPath}/upload/${files[board.boardId].fileSystemName}" class="preview">`;
            }*/
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
          현재 인기 주니어가 없습니다
        </div>
      </li>
    `;
  }
  $ul.append(text);
}
