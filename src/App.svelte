<script>
	import Router from './pages/index.svelte';
	import { Header, Footer, Button } from './components'
</script>

<main>
	<Header/>

	<Router />

	<h1>svelte-parcel template</h1>
	<div class="footer">
		<p>
			This template is for building apps based on the <a href="https://svelte.dev">Svelte framework</a> 
			and the <a href="https://parceljs.org">Parcel</a> build tool.
		</p>
		<p>
			Try this: <code>npx degit wildsong/svelte-parcel <i>your_new_project_name</i>/code>
		</p>
	</div>

	<Button/>
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