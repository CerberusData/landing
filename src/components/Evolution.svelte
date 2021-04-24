<script>
  export let data = {};
</script>

<style>
  #evolution {
    background: var(--blueberry);
    color: white;
  }
  .title {
    font-weight: 700;
    font-size: 4vw;
  }
  .question {
    line-height: 30px;
    min-height: 37px;
  }
  .btn-demo {
    background: linear-gradient(90deg, #d2e3fc 0%, #69727e 100%);
    border-radius: 55px;
  }
  a {
    text-decoration: none;
    color: inherit;
  }
  img {
    max-width: 50%;
    height: auto;
  }
</style>

<section id="evolution" class="py-4 my-4">
  <div class="container d-flex flex-column align-items-center py-4">
    <h1 class="mb-4 | title | text-center">{data.HEADING}</h1>
    <h3 class="my-4 text-center | col-10">{data.DESCRIPTION}</h3>
    <p class="my-2 | fs-4 | question">{data.QUESTION}</p>
    <button type="button" class="btn btn-secondary mb-4 | btn-demo col-4 col-sm-2">
      <a href={data.BUTTON_URL} target="_blank">{data.BUTTON_TEXT}</a>
    </button>
    <img src={data.IMAGE_URL} alt={data.HEADING}>
  </div>
</section>
