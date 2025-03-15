document.addEventListener("turbo:load", function () {
  const hamburgerButton = document.getElementById("hamburgerButton");
  const dropdownMenu = document.getElementById("dropdownMenu");

  if (hamburgerButton && dropdownMenu) {
    // メニューボタンをクリックで開閉
    hamburgerButton.addEventListener("click", function (event) {
      dropdownMenu.classList.toggle("hidden"); // メニューの表示/非表示を切り替え
      event.stopPropagation(); // イベントの伝播を防止
    });

    // 他の場所をクリックしたらメニューを閉じる
    document.addEventListener("click", function () {
      if (!dropdownMenu.contains(event.target) && event.target !== hamburgerButton) {
      dropdownMenu.classList.add("hidden"); // メニューを非表示に
      }
    });

    // メニュー内をクリックしても閉じないようにする
    dropdownMenu.addEventListener("click", function (event) {
      event.stopPropagation(); // メニュー内でのクリック伝播を防止
    });
  }
});