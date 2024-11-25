// by opening the WebAPI module, we can use Document and Element directly instead of doing WebAPI.Document and WebAPI.Element.
open WebAPI

// getting these here makes it easier to use them in other modules
let navigation = document->Document.getElementById("navigation")
let main = document->Document.getElementById("main")

// this function will replace the innerHTML of the main element with the given html
let replaceMain = html => main->Element.setHTMLUnsafe(html)
