<script>
  export let bannerData = {};
  const { DESCRIPTION, BUTTON_TEXT, BUTTON_URL } = bannerData;
</script>

<style>
  section {
    padding-top: 5%;
  }
  #Banner {
    height: 80vh;
    background: rgb(76,143,253);
    background: linear-gradient(90deg, rgba(76,143,253,1) 0%, rgba(49,95,170,1) 65%, rgba(33,68,123,1) 100%);
    color: white;
    font-family: 'HelveticaNeue-Regular', Helvetica;
  }

  .btn-demo {
    background: linear-gradient(90deg, #d2e3fc 0%, #69727e 100%);
    border-radius: 55px;
  }
  a {
    text-decoration: none;
    color: inherit;
  }
  h1 {
    font-size: 2.2vw;
  }
</style>

<section id="Banner">
  <div class="container d-flex align-items-center h-100">
    <div class="row">
      <div class="col-md-6 | d-flex flex-column justify-content-center align-items-center align-items-sm-start">
        <h1 class="mb-3 | text-center text-sm-start">{DESCRIPTION}</h1>
        <button type="button" class="btn btn-secondary btn-demo col-5 col-sm-3 | py-2 mb-3" >
          <a href={BUTTON_URL} target="_blank">{BUTTON_TEXT}</a>
        </button>
      </div>
      <div class="col-md-6">
        <img src="images/banner-img.png" alt="Banner" class="img-fluid">
      </div>
    </div>
  </div>
</section>
