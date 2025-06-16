document.addEventListener('DOMContentLoaded', function() {
  const sidebar = document.getElementById("sidebar");
  const openSidebar = document.getElementById("openSidebar");
  const closeSidebar = document.getElementById("closeSidebar");

  if (openSidebar && sidebar && closeSidebar) {
    openSidebar.addEventListener("click", () => {
      sidebar.classList.add("open");
      openSidebar.style.display = "none";
    });

    closeSidebar.addEventListener("click", () => {
      sidebar.classList.remove("open");
      openSidebar.style.display = "block";
    });
  }
});