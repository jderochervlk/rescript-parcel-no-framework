open WebAPI

let navigation = document->Document.getElementById("navigation")
let main = document->Document.getElementById("main")

let replaceMain = html => main->Element.setHTMLUnsafe(html)
