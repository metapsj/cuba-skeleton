/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./assets/**/*.{css, js}", "./views/**/*.erb"],
  theme: {
    extend: {},
  },
  plugins: [require("@tailwindcss/typography"), require("daisyui")],
};
