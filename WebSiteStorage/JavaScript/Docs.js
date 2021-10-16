function sleep(milliseconds) {
  var start = new Date().getTime();
  for (var i = 0; i < 1e7; i++) {
    if ((new Date().getTime() - start) > milliseconds){
      break;
    }
  }
}

function Doc_FATALERROR(Part) {
  const Element = document.getElementsByClassName(Part)
  Element.style.backgroundColor = "red";
  sleep(3000)
  Element.style.backgroundColor = 'transparent'
}
