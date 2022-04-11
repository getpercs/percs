# Getting Started

- Setup an account
    - Reach out to our support team for access to the beta
- Choose an integration method
    - [Component API](component-api.md)
    - [Javascript API](javascript-api.md)
- Create an audience and offer

# Offer Types

## Events
Generate and redeem unique QR codes for each token in your audience.  We provide an app to scan the generated QR codes to validate access at the event.  No development work is required.

## URL Content
Your NFT holders are given access to an private URL once they have verified ownership.

Redirected URL with include get parameters and a signature that is verifiable with a public key for your account.
- `offer`: the ID for the offer
- `contract`: the contract address for the verified token
- `token`: the token id for the verified token
- `sig`: the PKI signature for the URL

You can verify the URL on the server or client with a public key check.  Sample Node.js server code:
```js
import { createPublicKey, verify } from "crypto"

const publicKey = createPublicKey(YOUR_PUBLIC_KEY)

/**
 * @param url The fully qualified URL for the request (host should match the URL configured for your offer)
 */
function verifyRequestUrl(url) {
    url = new URL(url);
    const signature = url.searchParams.get("sig");
    url.searchParams.delete("sig");

    if (verify(null, Buffer.from(url.toString()), publicKey, Buffer.from(signature, "base64"))) {
        // TODO: Signature is valid, return the content for the given offer
    } else {
        // TODO: Signature is invalid, display error
    }
}
```
