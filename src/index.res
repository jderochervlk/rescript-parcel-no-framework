open WebAPI
open Html
// This navigation section will be on every page
// You could add more to the app shell if you wanted
navigation->Element.setHTMLUnsafe(/* html */ `
    <a href="/">Home</a>
    <a href="/one">One</a>
    <a href="/two">Two</a>
`)

// Switching on the pathname allows us to render different content for each url
let _ = switch location.pathname {
| "/" => Js.import(Home.render) // Js.import lazy loads in the module, so we get code splitting
| "/one" => Js.import(One.render)
| "/two" => Js.import(Two.render)
| _ => Js.import(FourOhFour.render)
}->Promise.thenResolve(render => render()) // once we have loaded in the correct module we want to resolve the promise and call the render function
