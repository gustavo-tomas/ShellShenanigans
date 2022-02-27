const commandsArray = [...document.querySelectorAll(".command")];
const displayContent = document.getElementById("display-content");

const setDisplayContent = (i) => {
  let innerText = "";
  return function () {
    switch (i) {
      case 0: // "Say Hello"
        innerText = "Hello!";
        break;
      case 1: // "Say Goodbye"
        innerText = "Goodbye!";
        break;
      case 2: // "Say my name"
        innerText = "You goddamn right";
        break;
      default:
        break;
    }
    if (innerText.length > 0)
      displayContent.innerText = innerText;
  };
}

for (let i = 0; i < commandsArray.length; i++) {
  commandsArray[i].addEventListener("click", setDisplayContent(i));
}
