
function val() {
  var requiredInputs = document.querySelectorAll('input[required]');
  for (var i = 0; i < requiredInputs.length; i++) {
    if (!requiredInputs[i].value) {
      alert('Please fill in all required fields.');
      return false;
    }
  }
  return true;
}

var myInput = document.getElementById("password");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");



// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
document.getElementById("message").style.display = "block";
}
// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
// Validate lowercase letters
var lowerCaseLetters = /[a-z]/g;
if(myInput.value.match(lowerCaseLetters)) {
    letter.classList.remove("invalid");
    letter.classList.add("valid");
} else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

// Validate capital letters
var upperCaseLetters = /[A-Z]/g;
if(myInput.value.match(upperCaseLetters)) {
    capital.classList.remove("invalid");
    capital.classList.add("valid");
} else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
}

// Validate numbers
var numbers = /[0-9]/g;
if(myInput.value.match(numbers)) {
    number.classList.remove("invalid");
    number.classList.add("valid");
} else {
    number.classList.remove("valid");
    number.classList.add("invalid");
}

// Validate length
if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
} else {
    length.classList.remove("valid");
    length.classList.add("invalid");
}
}
var passwordInput = document.getElementById("password");
var confirmPasswordInput = document.getElementById("confirmPassword");
var passwordMatchMessage = document.getElementById("passwordMatchMessage");

// Function to compare the password and confirmation fields
function validatePasswordConfirmation() {
var password = passwordInput.value;
var confirmPassword = confirmPasswordInput.value;

if (password === confirmPassword) {
    // Passwords match
    confirmPasswordInput.classList.remove("invalid");
    confirmPasswordInput.classList.add("valid");
    passwordMatchMessage.innerHTML = " <span style='color: green;'> &#10004; Passwords match!</span>";
} else {
    // Passwords do not match
    confirmPasswordInput.classList.remove("valid");
    confirmPasswordInput.classList.add("invalid");
    passwordMatchMessage.innerHTML = "<span style='color: red;'> &#10006; Passwords do not match!</span>";
}
}

// Bind the function to the onkeyup event of the confirmation field
confirmPasswordInput.addEventListener("keyup", validatePasswordConfirmation);
