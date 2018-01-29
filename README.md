# Auth0 Phoenix Portal Sample

 Auth0 Universal Login and Embedded Login with Phoenix & Elixir - as a Single Page App using Implicit Grant flow.

This is a simple sample for illustrating (using plain HTML and JavaScript):

1. Centralised Login usage
2. Silent Authentication for tokens refresh (checkSession) 
3. Single Sign-On usage
4. Single Sign-Out usage
5. Local Sign-Out usage
6. Usage of Auth0.js Authentication Client for userinfo api endpoint
7. Usage of Auth0.js Management Client library 

 Note on versions: This sample was developed and tested against:

 - Elixir v1.6
 - Phoenix v1.3
 - Erlang / OTP v20.2
 - Node.js v8.9 and NPM v4.1.2 (node and npm required for Brunch - Phoenix dependency)

Please see respective websites for details on installation and setup.
Auth0 does also offer a docker container if preferrred with all dependencies pre-installed.

## Setup

### Dashboard

Create a Single Page Application Client.

Under settings ensure you have:

Client-Type: Single Page App

Allowed Callback URLs:
 - http://app1.com:3000,
 - http://app1.com:3000/callback.html

Allowed Web Origins:
 - http://app1.com:3000

Allowed Logout URLs
 - http://app1.com:3000


Under Advanced Settings -> Oauth, switch ON the OIDC Conformant toggle.

Set up a Database connection, and optionally social connections.
For example, test against Auth0 DB Connection and Google Social Auth.

Note: Ordinarily, Phoenix apps by defualt use port 3000.
This sample uses port 3000 - see `config/dev.exs`

### Locally

Add:

```
127.0.0.1  app1.com
```

to your `/etc/hosts` file.

This is important, all references locally are to `app1.com` and not `localhost`.
Required for cross-origin and SSO to work properly.

Update your `/assets/static/index.html` variable entries for your own Auth0
Client ID, and Auth0 Domain.  eg.

```
const AUTH0_CLIENT_ID = 'zalZ1MTxYGmq72QYJ3fhsMl13Z5xfZga';
const AUTH0_DOMAIN = 'demonstration.auth0.com';
```

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`
  * mix phx.server


Then access the application from browser at `http://app1.com:4000`


Ready to run in production? Please [check the phoenix deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more about phoenix

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix


## What is Auth0?

Auth0 helps you to:

* Add authentication with [multiple authentication sources](https://docs.auth0.com/identityproviders), either social like **Google, Facebook, Microsoft Account, LinkedIn, GitHub, Twitter, Box, Salesforce, amont others**, or enterprise identity systems like **Windows Azure AD, Google Apps, Active Directory, ADFS or any SAML Identity Provider**.
* Add authentication through more traditional **[username/password databases](https://docs.auth0.com/mysql-connection-tutorial)**.
* Add support for **[linking different user accounts](https://docs.auth0.com/link-accounts)** with the same user.
* Support for generating signed [Json Web Tokens](https://docs.auth0.com/jwt) to call your APIs and **flow the user identity** securely.
* Analytics of how, when and where users are logging in.
* Pull data from other sources and add it to the user profile, through [JavaScript rules](https://docs.auth0.com/rules).

## Create a free account in Auth0

1. Go to [Auth0](https://auth0.com) and click Sign Up.
2. Use Google, GitHub or Microsoft Account to login.

## Issue Reporting

If you have found a bug or if you have a feature request, please report them at this repository issues section. Please do not report security vulnerabilities on the public GitHub issue tracker. The [Responsible Disclosure Program](https://auth0.com/whitehat) details the procedure for disclosing security issues.

## Author

[Auth0](auth0.com)

## License

This project is licensed under the MIT license. See the [LICENSE](LICENSE) file for more info.


