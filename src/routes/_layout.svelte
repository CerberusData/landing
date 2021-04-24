<script>
	import Nav from '../components/Nav.svelte';
	import DATA from '../utils/data';
</script>

<style>
	/* main {
		position: relative;
		max-width: 56em;
		background-color: white;
		padding: 2em;
		margin: 0 auto;
		box-sizing: border-box;
	} */
</style>

<Nav navlists={DATA.NAVBAR_DATA} />

<main>
	<slot></slot>
</main>