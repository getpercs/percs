# Component API

You can load the library anywhere on the page and update your HTML template to
include some tags to present UI for web3 wallet interactions on an existing page

## Installation
Import the script in your header:
```html
<script type="text/javascript" src="https://api.getpercs.com/client-sdk.js?key=YOUR_KEY_HERE"></script>
```
Once that is loaded, a global `PERCS` object will be available with an emitter
for events from any components you include on your page.

You could also follow the [Javascript API docs](javascript-api.md) to load the ES6 version from NPM and initialize manually.

## Components

Prompt the user to login against a given audience scope.
```html
<percs-login-button scope="..." />
```

Present a simple client-side gating.
```html
<percs-gate scope="...">...</percs-gate>
```

Display a widget with a list of all active offers on your account
```html
<percs-offers />
```

You can wrap a buy button in this to trigger a redemption interaction for the given offer.
```html
<percs-redeem-button scope="...">Buy Now</percs-redeem-button>
```
