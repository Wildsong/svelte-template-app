<script>
    import { OpenLayersMap } from '../components'
    const clatsop_county = [-123.75, 46.04];
	const zoom = 9;
</script>

<h1>Map</h1>
<div class="mapcontainer">
    <OpenLayersMap center={clatsop_county} zoom={zoom}/>
</div>

<style>
.mapcontainer {
    display: flex;
    margin: 2px;
}
</style>
