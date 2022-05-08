<script>
  import { Router, Route, Link } from 'svelte-routing'

	import Home from './home.svelte'
	import Content from './content.svelte'
  import Map from './map.svelte'
	import Admin from './admin.svelte'
  import About from './about.svelte'

  export let url = '';
</script>
  
<Router {url}>
  <div>
      <Link to="/">Home</Link>
      <Link to="/map">Map Viewer</Link>
      <Link to="content">Content Manager</Link>
      <Link to="admin">Site Admin</Link>
      <Link to="about">About</Link>
  
      <Route path="/" component={Home} />
      <Route path="/map" component={Map} />
      <Route path="content" component={Content} />
      <Route path="admin" component={Admin} />
      <Route path="about" component={About} />
  </div>
</Router>
