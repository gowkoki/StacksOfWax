//like
let likebtn = document.querySelector("#likebtn"); // like button

let input1 = document.querySelector("#likeinput"); // like btn value

likebtn.addEventListener("click", () => {
  input1.value = parseInt(input1.value) === 0 ? 1 : 0;
});
// end like

//rating
document.addEventListener("DOMContentLoaded", function () {
  (function () {
    let sr = document.querySelectorAll(".my-star");
    let i = 0;
    while (i < sr.length) {
      sr[i].addEventListener("click", function () {
        let cs = parseInt(this.getAttribute("data-star"));
        document.querySelector("#output").value = cs;
        let pre = cs;
        while (1 <= pre) {
          if (
            !document
              .querySelector(".star-" + pre)
              .classList.contains("is-active")
          ) {
            document.querySelector(".star-" + pre).classList.add("is-active");
          }
          --pre;
        }
        let succ = cs + 1;
        while (5 >= succ) {
          if (
            document
              .querySelector(".star-" + succ)
              .classList.contains("is-active")
          ) {
            document
              .querySelector(".star-" + succ)
              .classList.remove("is-active");
          }
          ++succ;
        }
      });
      i++;
    }
  })();
});
//end rating
