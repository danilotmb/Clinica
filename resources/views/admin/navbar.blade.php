<div class="container-fluid page-body-wrapper">
<nav class="navbar p-0 fixed-top d-flex flex-row">
    <div class="navbar-menu-wrapper flex-grow d-flex align-items-stretch">
      
      <ul class="navbar-nav w-100">
        <li class="nav-item w-100">
          
        </li>
      </ul>
      
      <li class="nav-item">
        <form method="POST" action="{{ route('logout') }}">
            @csrf
            <button type="submit" class="btn btn-primary ml-lg-3">Logout</button>
        </form>
    </li>

      </ul>
      <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
        <span class="mdi mdi-format-line-spacing"></span>
      </button>
    </div>
  </nav>