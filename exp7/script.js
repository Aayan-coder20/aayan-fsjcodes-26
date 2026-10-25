document.getElementById("contactForm").addEventListener("submit", function(event) {

    event.preventDefault();

    let name = document.getElementById("name").value.trim();
    let email = document.getElementById("email").value.trim();
    let message = document.getElementById("message").value.trim();

    let formMessage = document.getElementById("formMessage");

    let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    if (name === "" || email === "" || message === "") {

        formMessage.style.color = "red";
        formMessage.textContent = "Please fill in all fields.";

    } else if (!emailPattern.test(email)) {

        formMessage.style.color = "red";
        formMessage.textContent = "Please enter a valid email address.";

    } else {

        formMessage.style.color = "green";
        formMessage.textContent =
            "Thank you, " + name + "! Your form has been validated successfully.";

        document.getElementById("contactForm").reset();
    }
});

const qrBox = document.getElementById("qrBox");
const qrImage = document.getElementById("qrImage");

const portfolioURL =
    "https://aayan-coder20.github.io/aayan-fsjcodes-26/exp7/";

qrImage.src =
    "https://api.qrserver.com/v1/create-qr-code/?size=200x200&data="
    + encodeURIComponent(portfolioURL);

qrBox.style.display = "block";