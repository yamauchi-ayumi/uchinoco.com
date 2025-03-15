document.addEventListener("turbo:load", function () {
  const flashMessage = document.getElementById("flash-message");
  
  if (flashMessage) {
    setTimeout(() => {
      flashMessage.classList.add("fade-out");
    }, 3000); // 3秒後にフェードアウト

    setTimeout(() => {
      flashMessage.remove(); // 4秒後に完全に削除
    }, 4000);
  }
});