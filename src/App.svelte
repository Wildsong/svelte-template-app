<script>
	import Router from './pages/index.svelte';
	import { Header, Footer, Button } from './components'
</script>

<main>
	<Header/>
	<h1>svelte-parcel template</h1>
	<Router />
	<Footer/>
</main>

<style>
	main {
		padding: 1em;
		margin: 0 auto;
	}
	.footer {
		width: 800px;
	}
	@media (min-width: 640px) {
		main {
			max-width: none;
		}
	}
</style>