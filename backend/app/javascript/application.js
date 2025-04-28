// Import básico de Rails
import "@hotwired/turbo-rails"
import "controllers"

// Control de modo oscuro
document.addEventListener("turbo:load", () => {
  const toggleButton = document.getElementById("theme-toggle");
  const themeToggleXl = document.getElementById("theme-toggle-xl");

  const applyTheme = (theme) => document.body.setAttribute('data-theme', theme);

  const savedTheme = localStorage.getItem("theme") || "light";
  applyTheme(savedTheme);

  const toggleTheme = () => {
    const currentTheme = localStorage.getItem("theme") || "light";
    const newTheme = currentTheme === "light" ? "dark" : "light";
    localStorage.setItem("theme", newTheme); // Guardar el nuevo tema
    applyTheme(newTheme); // Aplicar el nuevo tema
  } 

  // Añadir el event listener para ambos botones
  toggleButton.addEventListener("click", toggleTheme);
  themeToggleXl.addEventListener("click", toggleTheme);
});

