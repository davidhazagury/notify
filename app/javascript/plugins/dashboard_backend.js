  // We want to display the notes that are contained in a folder. In the right side of the dashboard.
  // REMEMBER: FIRST WE GET THE ELEMENT.
  // 1. Get the element we want to inject the notes.
const grid = document.querySelector('.notes-grid');
// 2. Add event listeners to EACH button.
const buttons = document.querySelectorAll('.folder');
buttons.forEach((button) => {
  button.addEventListener("click",(event) =>{
    event.currentTarget.console.log("Hola");
  });
})


export {das};
