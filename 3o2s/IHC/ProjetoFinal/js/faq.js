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

    document.querySelectorAll(".faq-item").forEach(item => {
        item.addEventListener("click", () => {
            item.classList.toggle("open");
        });
    });
});