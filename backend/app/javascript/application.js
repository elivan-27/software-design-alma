// Import básico de Rails
import "@hotwired/turbo-rails"
import "controllers"

document.addEventListener("turbo:load", () => {
  const toggleButton = document.getElementById("theme-toggle");
  const themeToggleXl = document.getElementById("theme-toggle-xl");

  const applyTheme = (theme) => document.body.setAttribute('data-theme', theme);

  const savedTheme = localStorage.getItem("theme") || "light";
  applyTheme(savedTheme);

  //! Control de modo oscuro
  const toggleTheme = () => {
    const currentTheme = localStorage.getItem("theme") || "light";
    const newTheme = currentTheme === "light" ? "dark" : "light";
    localStorage.setItem("theme", newTheme);
    applyTheme(newTheme);
  } 
  toggleButton.addEventListener("click", toggleTheme);
  themeToggleXl.addEventListener("click", toggleTheme);

  //! Cambiar idioma
  const languageButton = document.getElementById("internalization");
  const languageButtonXl = document.getElementById("internalization-xl");

  const changeLanguage = () => {
    const currentLocale = window.location.pathname.split("/")[1];
    const newLocale = currentLocale === "es" ? "en" : "es";

    const newPath = window.location.pathname.replace(/^\/(en|es)/, "/" + newLocale);
    window.location.href = newPath + window.location.search;
  }

  languageButton.addEventListener("click", changeLanguage);
  languageButtonXl.addEventListener("click", changeLanguage);
});
