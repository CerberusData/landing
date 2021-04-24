<script>
	import DATA from '../utils/data'
	import Banner from '../components/Banner.svelte'
	import Solutions from '../components/Solutions.svelte'
	import Evolution from '../components/Evolution.svelte'
	import About from '../components/About.svelte'
	import UseCase from '../components/UseCase.svelte'
	import Contact from '../components/Contact.svelte'
	import Footer from '../components/Footer.svelte'
</script>

<svelte:head>
	<title>Cerberus AI</title>
	<meta name="description" content="Mejore la recopilación de datos mediante el uso de IoT y Machine Learning. Pruébelo en su navegador." />
	<html lang="es" />
</svelte:head>

<section id="Home">
	<!-- Banner -->
	<Banner bannerData={DATA.BANNER_DATA} />
	<!-- Solutions -->
	<Solutions solutionsData={DATA.SOLUTIONS_DATA} />
	<!-- Evolution -->
	<Evolution data={DATA.EVOLUTION_DATA} />
	<!-- About -->
	<About data={DATA.ABOUT_DATA} />
	<!-- UseCase -->
	<UseCase data={DATA.USECASE_DATA} />
	<!-- Contact -->
	<Contact />
	<!-- Footer -->
	<Footer />
</section>
