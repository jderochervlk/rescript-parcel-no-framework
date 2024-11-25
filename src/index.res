open WebAPI
open Html

navigation->Element.setHTMLUnsafe(/* html */ `
    <a href="/">Home</a>
    <a href="/one">One</a>
    <a href="/two">Two</a>
`)

let _ = switch location.pathname {
| "/" => Js.import(Home.render)
| "/one" => Js.import(One.render)
| "/two" => Js.import(Two.render)
| _ => Js.import(FourOhFour.render)
}->Promise.thenResolve(render => render())
