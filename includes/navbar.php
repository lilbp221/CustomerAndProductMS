<!-- <nav class="navbar navbar-expand-lg " style="background-color:white">
 
<div class="container d-flex justify-content-between  ">
  <div>
    <a class="navbar-brand" href="index.php"> <img src= 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGxYFjLeQSL_3T_Yp0g8NPiP0I6p4LlNOR2Q&s' width="100" height="50px" alt="Bimal Food Products'"/> </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    </div>
    <div>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.php">Home</a>
        </li>

        <?php if(isset($_SESSION['loggedIn'])) : ?>
          <li class="nav-item">
            <a class="nav-link" href="#"> <?= $_SESSION['loggedInUser']['name']; ?> </a>
          </li>
          <li class="nav-item">
            <a class="btn btn-danger" href="logout.php">Logout</a>
          </li>
        <?php else : ?>
          <li class="nav-item">
            <a class="nav-link" href="login.php">Login</a>
          </li>
        <?php endif; ?>
      </ul>
    </div>
    </div>
  </div>
</nav>

 -->

 <nav class="navbar navbar-expand-lg " style="background-color:white">
 
 <div class="container d-flex justify-content-between  ">
   <div>
     <a class="navbar-brand" href="index.php"><img src="image/logo2.jpg" width="100" height="100%" alt="Bootstrappin'"> </img></a>
     <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
     </div>
     <div>
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
         <li class="nav-item">
           <a class="nav-link active" aria-current="page" href="index.php">Home</a>
         </li>
 
         <?php if(isset($_SESSION['loggedIn'])) : ?>
           <li class="nav-item">
             <a class="nav-link" href="#"> <?= $_SESSION['loggedInUser']['name']; ?> </a>
           </li>
           <li class="nav-item">
             <a class="btn btn-danger" href="logout.php">Logout</a>
           </li>
         <?php else : ?>
           <li class="nav-item">
             <a class="nav-link" href="login.php">Login</a>
           </li>
         <?php endif; ?>
       </ul>
     </div>
     </div>
   </div>
 </nav>
 
 
 