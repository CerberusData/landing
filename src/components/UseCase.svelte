<script>
  export let data = {};
</script>

<style>
  #usecase {
    background: var(--blueberry);
    color: white;
  }
  .scrolling-wrapper {
    overflow-x: scroll;
    overflow-y: hidden;
    white-space: nowrap;
    -webkit-overflow-scrolling: touch;
    color: black;
  }
  .scrolling-wrapper::-webkit-scrollbar {
    display: none;
    width: 0;
  }
  .card {
    position: relative;
    display: inline-block;
    width: 600px;
    height: 350px;
    background: var(--blueberry);
    border: var(--blueberry);
  }
  .rectangle {
    position: absolute;
    left: 0;
    bottom: 0;
    width: 90%;
    height: 85%;
    max-height: 100%;
    background: white;
    color: rgba(112,112,112,1.0);
    overflow: hidden;
    border-radius: 20px;
  }
  .circle {
    position: absolute;
    top: 0;
    right: 0;
    width: 7%;
    height: 15%;
    min-width: 140px;
    min-height: 140px;
    background: rgba(230,230,230,1.0);
    border-radius: 50%;
    color: var(--blueberry);
  }
  img {
    max-width: 20%;
    height: auto;
  }
</style>

<section id="usecase">
  <div class="py-4">
    <h1 class="mb-2 text-center ">{data.HEADING}</h1>
    <div class="scrolling-wrapper">
      {#each data.CARDS as card}
        <div class="card ms-4">
          <div class="rectangle d-flex flex-column justify-content-center | py-4 px-3">
            <p class="lh-sm me-4 text-wrap">{card.DESCRIPTION}</p>
            <div class="row d-flex align-items-center">
              <img class="col-2" src={card.IMAGE_URL} alt={card.IMAGE_LABEL}>
              <p class="m-0 | col-9">{card.IMAGE_LABEL}</p>
            </div>
          </div>
          <div class="circle d-flex align-items-center justify-content-center fs-1 fw-bold">{card.SAVE}</div>
        </div>
      {/each}
    </div>
  </div>
</section>