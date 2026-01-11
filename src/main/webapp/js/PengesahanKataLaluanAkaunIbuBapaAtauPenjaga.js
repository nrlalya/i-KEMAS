/* 
    Document   : PengesahanKataLaluanAkaunIbuBapaAtauPenjaga.js
*/

document.addEventListener("DOMContentLoaded", function () {

    // Password strength indicator
    const passwordInput = document.getElementById("kataLaluanAkaun");
    const strengthText = document.getElementById("passwordStrength");

    if (passwordInput && strengthText) {
        passwordInput.addEventListener("input", function () {
            const value = passwordInput.value;
            let strength = 0;

            // Kira kekuatan password
            if (value.length >= 8)
                strength++;
            if (/[A-Z]/.test(value))
                strength++;
            if (/[a-z]/.test(value))
                strength++;
            if (/[0-9]/.test(value))
                strength++;
            if (/[^A-Za-z0-9]/.test(value))
                strength++;

            // Tentukan status
            let status = "";
            let color = "";
            if (strength <= 2) {
                status = "Lemah";
                color = "red";
            } else if (strength === 3 || strength === 4) {
                status = "Sederhana";
                color = "orange";
            } else if (strength === 5) {
                status = "Kuat";
                color = "green";
            }

            // Paparkan status
            strengthText.textContent = "Kekuatan Kata Laluan: " + status;
            strengthText.style.color = color;
        });
    }

    // Confirm password match (live message)
    const confirmInput = document.getElementById("pengesahanKataLaluanAkaun");
    const matchMsg = document.getElementById("passwordMatchMsg"); // <span> untuk mesej

    if (passwordInput && confirmInput && matchMsg) {
        confirmInput.addEventListener("input", function () {
            if (confirmInput.value !== passwordInput.value) {
                matchMsg.textContent = "Pengesahan Kata Laluan: Tidak Sama";
                matchMsg.style.color = "red";
            } else {
                matchMsg.textContent = "Pengesahan Kata Laluan: Sama";
                matchMsg.style.color = "green";
            }
        });
    }
});
