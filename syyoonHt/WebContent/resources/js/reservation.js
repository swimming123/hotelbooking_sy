const inputs = document.querySelectorAll(".input");


function addcl(){
  let parent = this.parentNode.parentNode;
  parent.classList.add("focus");
}

function remcl(){
  let parent = this.parentNode.parentNode;
  if(this.value == ""){
    parent.classList.remove("focus");
  }

}


inputs.forEach(input => {
  input.addEventListener("focus", addcl);
  input.addEventListener("blur", remcl);
});

//Source :- https://github.com/sefyudem/Responsive-Login-Form/blob/master/img/avatar.svg

const menu = document.querySelector('.navbar__menu');
const icons = document.querySelector('.navbar__icons');

toggleBtn.addEventListener('click', () => {
    menu.classList.toggle('active')
    icons.classList.toggle('active')
});