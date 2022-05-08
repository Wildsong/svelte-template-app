<script>
    import { Login } from '../components'
</script>

<svelte:head>
    <title>Home</title>
</svelte:head>

<div class="Home">
	<p>
		This template is for building apps based on the <a href="https://svelte.dev">Svelte framework</a> 
		and the <a href="https://parceljs.org">Parcel</a> build tool.
	</p>
	<p>
		Try this: <code>npx degit wildsong/svelte-template-parcel <i>your_new_project_name</i>/code>
	</p>

    <h1>Home is here.</h1>
    <Login/>

	<Button/>
</div>
