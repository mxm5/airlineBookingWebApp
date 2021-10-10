<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
      integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
      crossorigin="anonymous"
    />
    <!-- <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
      crossorigin="anonymous"
    /> -->
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> -->

    <!-- Optional theme
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
      integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
      crossorigin="anonymous"
    />
-->
    <style>
      /* .big-checkbox {width: 30px; height: 30px;}
      html {
        font-size: large  ;
      }
      body{
        font-size: 1.1rem;
      }


      .p {
        font-size: 1.1rem;
      }

      p {
        font-size: 1.1rem;
         font-weight: 10;
      }  */
    </style>
  </head>

  <body>
    <div class="container">
      <div class="nav navbar">
        <div class="navbar-nav">
          <p class="btn btn disabled">
            <span
              class="glyphicon glyphicon-plane p btn btn disabled"
              aria-hidden="true"
            >
            </span>
            Airline booking
          </p>
        </div>
        <div class="navbar-nav">
          <a class="btn-link">
            <p class="btn">
              <span
                class="btn glyphicon glyphicon-tags disabled p"
                aria-hidden="true"
              >
              </span>
              customer pannel
            </p>
          </a>
        </div>
        <div class="navbar-nav">
          <a class="btn-link">
            <p class="btn">
              <span
                class="btn glyphicon glyphicon-edit disabled p"
                aria-hidden="true"
              >
              </span>
              moderator pannel
            </p>
          </a>
        </div>
      </div>
    </div>

    <form class="container" action="simple" method="POST">
      <div class="form-group">
        <label for="exampleInputEmail1">User Name</label>
        <br />
        <input
          type="text"
          class="form-control p"
          size="55"
          id="exampleInputEmail1"
          aria-describedby="emailHelp"
          placeholder="Enter user name "
          name="username"
        />
        <br />
        <!-- <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <br />
        <input
          type="password"
          class="form-control p"
          size="55"
          id="exampleInputPassword1"
          placeholder="Enter Password"
          name="password"
        />
      </div>
      <div class="form-check">
        <input
          type="checkbox"
          class="form-check-input p big-checkbox"
          id="exampleCheck1"
        />
        <label class="form-check-label" for="exampleCheck1"
          >keep me logged in</label
        >
      </div>
      <button type="submit" class="btn btn-primary p">Submit</button>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <div class="container">
      <ul class="list-group">
        <li class="list-group-item">Dapibus ac facilisis in</li>

        <li class="list-group-item list-group-item-primary">
          This is a primary list group item
        </li>
        <li class="list-group-item list-group-item-secondary">
          This is a secondary list group item
        </li>
        <li class="list-group-item list-group-item-success">
          This is a success list group item
        </li>
        <li class="list-group-item list-group-item-danger">
          This is a danger list group item
        </li>
        <li class="list-group-item list-group-item-warning">
          This is a warning list group item
        </li>
        <li class="list-group-item list-group-item-info">
          This is a info list group item
        </li>
        <li class="list-group-item list-group-item-light">
          This is a light list group item
        </li>
        <li class="list-group-item list-group-item-dark">
          This is a dark list group item
        </li>
      </ul>
    </div>

    <br />
    <br />
    <br />
    <div class="container">
      <header
        class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom"
      >
        <a
          href="/"
          class="
            d-flex
            align-items-center
            mb-3 mb-md-0
            me-md-auto
            text-dark text-decoration-none
          "
        >
          <svg class="bi me-2" width="40" height="32">
            <use xlink:href="#bootstrap"></use>
          </svg>
          <span
            class="fs-4"
            _msthash="1127126"
            _msttexthash="201656"
            style="text-align: left"
            >Simple header</span
          >
        </a>

        <ul class="nav nav-pills">
          <li class="nav-item">
            <a
              href="#"
              class="nav-link active"
              aria-current="page"
              _msthash="1281254"
              _msttexthash="43979"
              >Home</a
            >
          </li>
          <li class="nav-item">
            <a
              href="#"
              class="nav-link"
              _msthash="1281436"
              _msttexthash="115817"
              >Features</a
            >
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link" _msthash="1281618" _msttexthash="93873"
              >Pricing</a
            >
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link" _msthash="1281800" _msttexthash="37557"
              >FAQs</a
            >
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link" _msthash="1281982" _msttexthash="60892"
              >About</a
            >
          </li>
        </ul>
      </header>
    </div>

    <img
      src="https://img-premium.flaticon.com/png/512/2982/premium/2982657.png?token=exp=1633554064~hmac=447b55217247330aea980c6b029673ed"
      alt="Trulli"
      width="100"
      height="100"
      style="transform: rotate(45deg)"
    />
    <img
      src="https://img-premium.flaticon.com/png/512/2982/premium/2982657.png?token=exp=1633554064~hmac=447b55217247330aea980c6b029673ed"
      alt="Trulli"
      width="100"
      height="100"
      style="transform: rotate(45deg)"
    />
    <img
      src="https://img-premium.flaticon.com/png/512/2063/premium/2063671.png?token=exp=1633554340~hmac=1dc342cdf17f1c2f323bbddbb8d8b5e4"
      alt="Trulli"
      width="100"
      height="100"
    />
    <img
      src="https://cdn-icons-png.flaticon.com/512/3143/3143073.png"
      alt="Trulli"
      width="100"
      height="100"
    />
    <img
      src="https://img-premium.flaticon.com/png/512/2896/premium/2896147.png?token=exp=1633554340~hmac=5198b63b17f9bef14215f286b541486c"
      alt="Trulli"
      width="100"
      height="100"
    />
    <img
      src="https://img-premium.flaticon.com/png/512/3220/premium/3220212.png?token=exp=1633554779~hmac=e77c29c00fac7990804e8a46bec969d7"
      alt="Trulli"
      width="100"
      height="100"
    />
    <img
      src="https://cdn-icons-png.flaticon.com/512/476/476700.png"
      alt="Trulli"
      width="100"
      height="100"
    />
    <header class="p-3 bg-dark text-white">
      <div class="container">
        <div
          class="
            d-flex
            flex-wrap
            align-items-center
            justify-content-center justify-content-lg-start
          "
        >
        <a class="navbar-brand" href="#">
          <img
            src="https://img-premium.flaticon.com/png/512/2982/premium/2982657.png?token=exp=1633554064~hmac=447b55217247330aea980c6b029673ed"
            width="30"
            height="30"
            class="d-inline-block align-top"
            alt=""
          />
          Airline book
        </a>
            <svg
              class="bi me-2"
              width="40"
              height="32"
              role="img"
              aria-label="Bootstrap"
              _mstaria-label="138918"
              style="text-align: left"
            >
              <use xlink:href="#bootstrap"></use>
            </svg>
          </a>

          <ul
            class="
              nav
              col-12 col-lg-auto
              me-lg-auto
              mb-2
              justify-content-center
              mb-md-0
            "
          >
            <li>
              <a
                href="#"
                class="nav-link px-2 text-secondary"
                _msthash="1633359"
                _msttexthash="43979"
                >Home</a
              >
            </li>
            <li>
              <a
                href="#"
                class="nav-link px-2 text-white"
                _msthash="1633541"
                _msttexthash="115817"
                >Features</a
              >
            </li>
            <li>
              <a
                href="#"
                class="nav-link px-2 text-white"
                _msthash="1633723"
                _msttexthash="93873"
                >Pricing</a
              >
            </li>
            <li>
              <a
                href="#"
                class="nav-link px-2 text-white"
                _msthash="1633905"
                _msttexthash="37557"
                >FAQs</a
              >
            </li>
            <li>
              <a
                href="#"
                class="nav-link px-2 text-white"
                _msthash="1634087"
                _msttexthash="60892"
                >About</a
              >
            </li>
          </ul>

          <form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3">
            <input
              type="search"
              class="form-control form-control-dark"
              placeholder="Search..."
              aria-label="Search"
              _mstplaceholder="99723"
              _mstaria-label="74607"
              style="text-align: left"
            />
          </form>

          <div class="text-end">
            <button
              type="button"
              class="btn btn-outline-light me-2"
              _msthash="1717859"
              _msttexthash="59891"
            >
              Login
            </button>
            <button
              type="button"
              class="btn btn-warning"
              _msthash="1718041"
              _msttexthash="88439"
            >
              Sign-up
            </button>
          </div>
        </div>
      </div>
    </header>

    <nav class="navbar navbar-light bg-light">
      <a class="navbar-brand" href="#">
        <img
          src="data:image/jpeg;base64,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"
          width="30"
          height="30"
          class="d-inline-block align-top"
          alt=""
        />
        Bootstrap
      </a>
    </nav>
    <br />
    <div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <img
        src="https://img-premium.flaticon.com/png/512/2982/premium/2982657.png?token=exp=1633554064~hmac=447b55217247330aea980c6b029673ed"
        alt="Trulli"
        width="100"
        height="100"
        style="transform: rotate(45deg)"
      />
      </a>

      <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
        <li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
        <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
      </ul>

      <div class="col-md-3 text-end">
        <button type="button" class="btn btn-outline-primary me-2">Login</button>
        <button type="button" class="btn btn-primary">Sign-up</button>
      </div>
    </header>
  </div>
    <i class="fas fa-plane"></i>
    <i class="fas fa-plane"></i>
    <i class="fas fa-plane"></i>
    <i class="fas fa-plane"></i>
    <i class="fas fa-plane"></i>
    <i class="fa fa-camera-retro fa-5x"></i>
    <i class="fa fa-camera-retro fa-5x"></i>
    <br />
    <br />

    <!-- <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
      integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
      crossorigin="anonymous"
      ></script> -->
      <script
      src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"
      ></script>
      <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
      crossorigin="anonymous"
      ></script>
      <script src="https://use.fontawesome.com/5a8841c39d.js"></script>
    </body>
    </html>
    <!-- https://getbootstrap.com/docs/5.1/examples/#snippets  -->
