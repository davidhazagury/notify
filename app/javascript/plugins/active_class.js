const toggle = (event) => {
  const like = event.currentTarget.querySelector("i")
  if (like.classList.contains("fas")) {
    console.log("This heart is full")
    like.classList.remove("fas")
    like.classList.add("far")
  } else {
    console.log("This heart is empty")
    like.classList.remove("far")
    like.classList.add("fas")
  }
}


const heartToggler = () => {
  const hearts = document.querySelectorAll(".heart-link")
  hearts.forEach((heart) => {
     heart.addEventListener('click', toggle)
  })
}

// Put active class in the folder that is selected


const activeClass = () => {
  const folders = document.querySelectorAll(".folder");
  folders.forEach((folder) => {
    folder.addEventListener('click',(event)=> {
      // If current target doesn`t have the class active => add it.
      if(event.currentTarget.classList.contains("active")){
        event.currentTarget.classList.remove("active");
      } else {
        console.log("No tiene clase active");
      }
    })
  })
}

export { activeClass };
