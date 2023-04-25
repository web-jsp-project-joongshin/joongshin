const body = document.querySelector('body');
const modal = document.querySelector('.modal');
const btnOpenPopup = document.querySelector('.btn-open-popup');
const modal2 = document.querySelector('.modal2');
const btnOpenPopup2 = document.querySelector('.btn-open-popup2');

btnOpenPopup.addEventListener('click', () => {
  modal.classList.toggle('show');

  if (modal.classList.contains('show')) {
    body.style.overflow = 'hidden';
  }
});

modal.addEventListener('click', (event) => {
  if (event.target === modal) {
    modal.classList.toggle('show');

    if (!modal.classList.contains('show')) {
      body.style.overflow = 'auto';
    }
  }
});

btnOpenPopup2.addEventListener('click', () => {
	  modal2.classList.toggle('show');

	  if (modal2.classList.contains('show')) {
	    body.style.overflow = 'hidden';
	  }
	});

	modal2.addEventListener('click', (event) => {
	  if (event.target === modal2) {
	    modal2.classList.toggle('show');

	    if (!modal2.classList.contains('show')) {
	      body.style.overflow = 'auto';
	    }
	  }
	});