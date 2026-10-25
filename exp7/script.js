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

if (window.location.hostname.endsWith(".github.io")) {

    const portfolioURL = window.location.origin + window.location.pathname;

    qrImage.src =
        "https://api.qrserver.com/v1/create-qr-code/?size=150x150&data="
        + encodeURIComponent(portfolioURL);

    qrBox.style.display = "block";
}