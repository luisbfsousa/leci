document.addEventListener('DOMContentLoaded', function() {
    const sidebar = document.getElementById("sidebar");
    const openSidebar = document.getElementById("openSidebar");
    const closeSidebar = document.getElementById("closeSidebar");
  
    if (openSidebar && sidebar && closeSidebar) {
        openSidebar.addEventListener("click", () => {
            sidebar.classList.add("open");
            document.body.classList.add("sidebar-open");
            openSidebar.style.display = "none";
        });
  
        closeSidebar.addEventListener("click", () => {
            sidebar.classList.remove("open");
            document.body.classList.remove("sidebar-open");
            openSidebar.style.display = "block";
        });
    }

    document.querySelector("form").addEventListener("submit", function(e) {
        e.preventDefault();
        
        const name = this.name.value.trim();
        const email = this.email.value.trim();
        const message = this.message.value.trim();
        
        if (!name || !email || !message) {
            alert("Please fill out all fields.");
            return;
        }

        const submitButton = this.querySelector("button[type='submit']");
        submitButton.disabled = true;
        submitButton.textContent = "A enviar...";

        setTimeout(() => {
            alert("Mensagem enviada, iremos entrar em contacto assim que possivel");
            
            this.reset();

            submitButton.disabled = false;
            submitButton.textContent = "Enviar mensagem";
        }, 2000);
    });
});