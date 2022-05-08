<script>
    import { OpenLayersMap } from '../components'
	const clatsop_county = [-123.75, 46.04];
	const zoom = 9;
</script>

<svelte:head>
    <title>Home</title>
</svelte:head>

<div class="Home">
    <h1>Home is where this map is.</h1>
    
	<div class="mapcontainer">
		<OpenLayersMap center={clatsop_county} zoom={zoom}/>
	</div>
</div>

<style>
	.mapcontainer {
		display: flex;
		margin: 2px;
	}
</style>