<script>
  function sendData() {
    const forms = document.querySelectorAll('.form-floating');
    Array.prototype.slice.call(forms)
      .forEach(function (form) {
        form.addEventListener('submit', function (event) {
          if (!form.checkValidity()) {
            event.preventDefault()
            event.stopPropagation()
          }

          form.classList.add('was-validated')
        }, false)
      });
    console.log(forms)
  };
</script>

<style>
  img {
    max-width: 100%;
    height: auto;
    margin: auto;
    display: block;
  }
  input {
    border-radius: 20px;
  }
  .btn-send {
    background: linear-gradient(90deg, #4285f4 0%, #69727e 100%);
    border-radius: 55px;
    color: white;
    width: 150px;
  }
</style>

<section id="contact" class="py-4 my-4">
  <div class="container py-4">
    <div class="row g-0 | justify-content-center">
      <div class="col-10 col-sm-6">
        <img src="images/contact.png" alt="contact">
      </div>
      <div class="col-10 col-sm-6">
        <h3 class="text-center fw-bold mb-4">Contáctanos</h3>
        <!-- FORM -->
        <div class="form-floating mb-3">
          <input type="text" class="form-control" id="floatingName" placeholder="name">
          <label for="floatingName">Nombre</label>
        </div>
        <div class="form-floating mb-3">
          <input type="email" class="form-control" id="floatingEmail" placeholder="name@example.com">
          <label for="floatingEmail">Correo</label>
        </div>
        <div class="form-floating mb-3">
          <input type="number" class="form-control" id="floatingNumber" placeholder="3133333333">
          <label for="floatingNumber">Número</label>
        </div>
        <div class="form-floating mb-2">
          <input type="text" class="form-control" id="floatingMessage" placeholder="Mensaje">
          <label for="floatingMessage">Mensaje</label>
        </div>
        <div class="d-flex align-items-center justify-content-center">
          <button class="btn btn-send" type="submit" on:click={sendData}>ENVIAR ></button>
        </div>
      </div>
    </div>
  </div>
</section>
