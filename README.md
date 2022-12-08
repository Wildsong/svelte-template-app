# svelte-template-app

A template for creating apps based on Svelte and Parcel.

Or maybe it's svelte-parcel... I have two right now, not sure which one will win.

* Routing
* OpenLayers Map
* Login using Auth0 as the auth service provider

I run this in a Docker so I can test an external auth provider (Auth0).
The site has to be reachable from the Internet
for the callbacks to work.

If you are writing an app that does not need auth then you can run locally.
I am tired of setting up slightly different node environments
on each machine and spending hours getting the app to run on them.
Using Docker all the time is easier, I can move from Linux to Windows to Mac*
and it works the same everywhere.

*12/22 I stopped testing on Mac because I put Elementary OS ontoi my last MacBookPro.

## Testing

I am using docker-compose to make running behind a proxy easier.

```bash
docker-compose --file=docker-compose.debug.yml up
```

## Deployment

Once the template is functioning I can write this section.

## Resources

[Auth0 and Svelte](https://auth0.com/blog/authenticating-svelte-apps/)

