<script>
  export let data = {};
</script>

<style>
  img {
    max-width: 20%;
    height: auto;
    margin: auto;
    display: block;
  }
  h1 {
    font-weight: 600;
  }
</style>

<section id="about" class="py-4 mb-4">
  <h1 class="text-center mb-3 | pt-4 mt-4">{data.HEADING}</h1>
  <div class="row g-0 justify-content-around align-items-center | pb-4 mb-4">
    {#each data.ITEMS as item}
      <div class="col-10 col-sm-4">
        <img class="mb-2" src={item.IMAGE_URL} alt={item.DESCRIPTION}>
        <h1 class="text-center">{item.LABEL}</h1>
        <p class="text-center">{item.DESCRIPTION}</p>
      </div>
    {/each}
  </div>
</section>
