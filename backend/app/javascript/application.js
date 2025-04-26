// Import básico de Rails
import "@hotwired/turbo-rails"
import "controllers"

// Control de modo oscuro
document.addEventListener("turbo:load", () => {
  const toggleButton = document.getElementById("theme-toggle");

  const applyTheme = (theme) => document.body.setAttribute('data-theme', theme);

  const savedTheme = localStorage.getItem("theme") || "light";
  applyTheme(savedTheme);

  toggleButton.addEventListener("click", () => {
    const currentTheme = localStorage.getItem("theme") || "light";
    const newTheme = currentTheme === "light" ? "dark" : "light";
    localStorage.setItem("theme", newTheme);
    applyTheme(newTheme);
  });
});
