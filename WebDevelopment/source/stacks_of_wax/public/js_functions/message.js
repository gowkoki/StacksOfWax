window.onload = function () {
  var errorContainer = document.querySelector(".error");
  var successContainer = document.querySelector(".success");
  if (errorContainer) {
    setTimeout(function () {
      errorContainer.remove();
    }, 3000);
  }
  if (successContainer) {
    setTimeout(function () {
      successContainer.remove();
    }, 3000);
  }
};
