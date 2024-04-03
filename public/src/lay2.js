// document.getElementById("r1").addEventListener("click", displayInfo);

// function displayInfo() {
//   document.getElementById("r1").style.backgroundColor = "red";
// }

let previousid = "wordpress";

function next_cl(id) {
  document.getElementById(previousid).style.display = "none";
  document.getElementById(id).style.display = "block";
  previousid = id;
}

function prevslide() {
  const pr = document.getElementById("rp2-scr");
  pr.scrollLeft -= 200;
  console.log(pr);
}

function nextslide() {
  const pr = document.getElementById("rp2-scr");
  pr.scrollLeft += 200;
}
