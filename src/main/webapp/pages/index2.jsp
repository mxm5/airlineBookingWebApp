<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
      integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
      crossorigin="anonymous"
    />
    <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous"> -->

    <!-- Optional theme -->
    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
      integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
      crossorigin="anonymous"
    />

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
            <span class="glyphicon glyphicon-plane p btn btn disabled" aria-hidden="true">
            </span>
            Airline booking
          </p>
        </div>
        <div class="navbar-nav">
          <a class="btn-link">
            <p class="btn">
              <span class="btn glyphicon glyphicon-tags disabled p" aria-hidden="true">
              </span>
              customer pannel
            </p>
          </a>
        </div>
        <div class="navbar-nav">
          <a class="btn-link">
            <p class="btn">
              <span class="btn glyphicon glyphicon-edit disabled p" aria-hidden="true">
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
    <br />
    <br />
    <br />

    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
      integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
