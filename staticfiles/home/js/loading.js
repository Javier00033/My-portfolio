document.addEventListener('DOMContentLoaded', function () {
    const loadingScreen = document.getElementById('loading-screen');
    setTimeout(() => {
        loadingScreen.style.opacity = "0";
        loadingScreen.style.visibility = "hidden";
    }, 1000);
});