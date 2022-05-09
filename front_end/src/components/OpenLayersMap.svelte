<script>
    import Map from 'ol/Map'
    import View from 'ol/View'
    import TileLayer from 'ol/layer/Tile'
    import OSM from 'ol/source/OSM'
    import {
        DragPan,
        defaults as defaultInteractions
    } from 'ol/interaction'
    import { fromLonLat } from 'ol/proj'
    
    //props 
    export let center;
    export let zoom;
    
    let viewDiv = "openlayersmap";
    let map = null;
    const setupMap = (node, _id) => {
        const baseLayer = new TileLayer({
            source: new OSM({attributions: ''}),
        })
        map = new Map({
            target: _id,
            interactions: defaultInteractions().extend([new DragPan()]),
            layers: [
                baseLayer,
            ],
            view: new View({ 
                center: fromLonLat(center),
                zoom
            })
        });
        return {
            destroy() {
                if (map) {
                    map.setTarget(null);
                    map = null;
                }
            }
        }
    }
</script>

<div>
    <div id={viewDiv} class="map" use:setupMap={viewDiv}/>
</div>
