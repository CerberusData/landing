<script>
	export let navlists = [];
</script>

<style>
  #nav-bar {
    position: sticky;
    top: 0;
    z-index: 10;
  }

	.navbar-brand {
		color: black;
		letter-spacing: 0.00px;
		line-height: 44px;
		min-height: 39px;
		white-space: nowrap;
	}

  .navbar-nav li a {
		letter-spacing: 0.00px;
		line-height: 25px;
		min-height: 31px;
		white-space: nowrap;
    font-weight: 600;
    text-transform: uppercase;
    float: right;
    text-align: left;
  }
</style>

<section id="nav-bar">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid mx-4">
			<a class="navbar-brand" href="." >
				<img src="images/logo.png" alt="Logo" width="43" height="30" class="d-inline-block align-text-top">
				Cerberus
			</a>
			<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarText">
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					{#each navlists as list}
						<li class="nav-item">
							<a class="ms-3 nav-link light-color" href={list.url}>{list.label}</a>
						</li>
					{/each}
				</ul>
			</div>
		</div>
	</nav>
</section>
