//Login form
//For the demo this is a GET request, before live this needs to be changed to a POST request to hide the credentials
function validate(event) {
  event.preventDefault(); // prevent page reload on form submission
  var username = document.getElementById("username").value;
  var password = document.getElementById("password").value;
  var errorElem = document.getElementById("error-msg");

  if (username === "test" && password === "test") {
    window.location.href = "documentation.html";
  } else {
    errorElem.innerText = "Incorrect username or password. Please try again.";
    errorElem.style.display = "block";
  }
}
