# ReScript and Parcel
This is a simple example of a webapp created using Parcel and ReScript.
There is no framework, just simple WebAPIs to match on the URL and render different HTML. Pages are lazy imported to allow for code splitting, this means that each route will get it's own JS bundle.

## Running
```
npm install
npm run res:dev // run this in one terminal tab
npm run dev // run this in another terminal tab
```

## Building
```
npm install
npm run build
```