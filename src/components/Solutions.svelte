<script>
  export let solutionsData = {};
</script>

<style>
  section {
    margin-top: 5%;
    margin-bottom: 5%;
  }
  h1 {
    color: rgba(112,112,112,1.0);
  }
  img {
    max-width: 60%;
    height: auto;
    margin: auto;
    display: block;
  }
  .color-text {
    color: rgba(112,112,112,1.0);
    font-weight: 400;
    line-height: 25px;
  }
</style>

<section id="solutions">
  <div class="container">
    <h1 class='mb-2 text-center | py-4'>{solutionsData.HEADING}</h1>
    <!-- Solucions one -->
    <div class="row py-4">
      <div class="col-12 col-sm-6">
        <h3 class='mb-4 text-center'>{solutionsData.LABEL_ONE}</h3>
        <img src={solutionsData.IMAGE_ONE} alt={solutionsData.LABEL_ONE} />
      </div>
      <div class="col-12 col-sm-6 | text-center d-flex align-items-center | color-text">
        {solutionsData.DESCRIPTION_ONE}
      </div>
    </div>
    <!-- Solucions TWO -->
    <div class="d-flex flex-row-reverse py-4">
      <div class="col-12 col-sm-6">
        <h3 class='mb-4 text-center'>{solutionsData.LABEL_TWO}</h3>
        <img src={solutionsData.IMAGE_TWO} alt={solutionsData.LABEL_TWO} />
      </div>
      <div class="col-12 col-sm-6 | text-center d-flex align-items-center | color-text">
        {solutionsData.DESCRIPTION_TWO}
      </div>
    </div>
    <!-- Solucions THREE -->
    <div class="row py-4">
      <div class="col-12 col-sm-6">
        <h3 class='mb-4 text-center'>{solutionsData.LABEL_THREE}</h3>
        <img src={solutionsData.IMAGE_THREE} alt={solutionsData.LABEL_THREE} />
      </div>
      <div class="col-12 col-sm-6 | text-center d-flex align-items-center | color-text">
        {solutionsData.DESCRIPTION_THREE}
      </div>
    </div>
    <!-- Solucions FOUR -->
    <div class="d-flex flex-row-reverse py-4">
      <div class="col-12 col-sm-6">
        <h3 class='mb-4 text-center'>{solutionsData.LABEL_FOUR}</h3>
        <img src={solutionsData.IMAGE_FOUR} alt={solutionsData.LABEL_FOUR} />
      </div>
      <div class="col-12 col-sm-6 | text-center d-flex align-items-center | color-text">
        {solutionsData.DESCRIPTION_FOUR}
      </div>
    </div>
  </div>
</section>
