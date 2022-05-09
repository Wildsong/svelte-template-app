<script>
	import { onMount } from "svelte";
	import Router from './pages/index.svelte';
	import { Header, Footer, Button } from './components'
	import auth from "./authService";
	import { isAuthenticated, user } from "./store";

	let auth0Client;
	let newTask;

  	onMount(async () => {
		auth0Client = await auth.createClient();
		isAuthenticated.set(await auth0Client.isAuthenticated());
		user.set(await auth0Client.getUser());
	});

	function login() {
		auth.loginWithPopup(auth0Client);
	}

	function logout() {
		auth.logout(auth0Client);
	}
</script>

<main>
	<Header/>
	<h1>svelte-parcel template</h1>
	<Router />

	{#if $isAuthenticated}
		Welcome citizen.
		<span class="text-white">&nbsp;&nbsp;{$user.name} ({$user.email})</span>
	{:else}
		<span>you are not authenticated</span>
		<span class="navbar-text">
			<ul class="navbar-nav float-right">
			  {#if $isAuthenticated}
				<li class="nav-item">
				  <a class="nav-link" href="/#" on:click={logout}>Log Out</a>
				</li>
			  {:else}
				<li class="nav-item">
				  <a class="nav-link" href="/#" on:click={login}>Log In</a>
				</li>
			  {/if}
			</ul>
		</span>
	{/if}

	<Footer/>
</main>

<style>
	main {
		padding: 1em;
		margin: 0 auto;
		margin-top: 50px;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>