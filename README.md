# svelte-template-app
A template for creating apps based on Svelte and Parcel.

* Routing
* OpenLayers Map
* Login using Auth0 as the auth service provider

I run this in a Docker so I can test an external auth provider (Auth0).
The site has to be reachable from the Internet
for the callbacks to work.

If you are writing an app that does not need auth then you can run locally.
Frankly though I am tired of setting up slightly different node environments
on each machine and spending hours getting the app to run on them.
Using Docker all the time is just easier, I can move from Mac to Linux to Windows
and it works the same everywhere.

## Testing

I am using docker-compose to make running behind a proxy easier. The usual boring

```bash
docker-compose up
```

## Resources

[Auth0 and Svelte](https://auth0.com/blog/authenticating-svelte-apps/)
