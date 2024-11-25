// By opening Html we can do replaceMain directly instead of Html.replaceMain
// You don't need to do this, but I find it cleaner
open Html

let render = () =>
  // the html comment here allows for certain editor plugins to provide syntax highlighting
  replaceMain(/* html */ `
        <h1>404</h1>
        <p>Page not found</p>
    `)
