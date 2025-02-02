  <?php 
include('includes/config.php'); 
include('header.php'); 

// Handle form submission
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $name = mysqli_real_escape_string($db_conn, $_POST['name']);
    $email = mysqli_real_escape_string($db_conn, $_POST['email']);
    $mobile = mysqli_real_escape_string($db_conn, $_POST['mobile']);
    $message = mysqli_real_escape_string($db_conn, $_POST['message']);

    // Insert data into the inquiries table
    $sql = "INSERT INTO inquiries (name, email, mobile, message) VALUES ('$name', '$email', '$mobile', '$message')";
    if (mysqli_query($db_conn, $sql)) {
        $success_message = "Your inquiry has been submitted successfully!";
    } else {
        $error_message = "There was an error submitting your inquiry. Please try again later.";
    }
}
?>

<!-- Navbar -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <a class="navbar-brand" href="#"><b>DSP</b></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-333"
        aria-controls="navbarSupportedContent-333" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent-333">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="#home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#about-us">About Us</a></li>
            <li class="nav-item"><a class="nav-link" href="#courses">Courses</a></li>
            <li class="nav-item"><a class="nav-link" href="#teacher">Our Teachers</a></li>
            <li class="nav-item"><a class="nav-link" href="#achievement">Achievements</a></li>
        </ul>
        <ul class="navbar-nav ml-auto nav-flex-icons">
            <li class="nav-item dropdown">
                <?php if (isset($_SESSION['login'])) { ?>
                <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-333" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false"><i class="fas fa-user mr-2"></i>Account</a>
                <div class="dropdown-menu dropdown-menu-right dropdown-default"
                    aria-labelledby="navbarDropdownMenuLink-333">
                    <a class="dropdown-item" href="/sms-project/admin/dashboard.php">Dashboard</a>
                    <a class="dropdown-item" href="logout.php">Logout</a>
                </div>
                <?php } else { ?>
                <a href="login.php" class="nav-link"><i class="fa fa-user mr-2"></i>User login</a>
                <?php } ?>
            </li>
        </ul>
    </div>
</nav>

<!-- Home section -->
<div id="home" class="py-5 shadow" style="background:linear-gradient(-45deg, #a77b23 50%, transparent 50%)">
    <div class="container-fluid my-4">
        <div class="row">
            <div class="col-lg-6 my-auto">
                <h1 class="display-3 font-weight-bold">Admission Open for 2024-2025</h1>
                <p class="py-lg-4">
                    The University offers a variety of programs at Diploma levels, including branches like Computer, IT,
                    Mechanical, Automobile, Civil, etc.
                </p>
                <a href="" class="btn btn-lg btn-primary">Call to Action</a>
            </div>
            <div class="col-lg-6">
                <div class="col-lg-8 mx-auto card shadow-lg">
                    <div class="card-body py-5">
                        <h3>Inquiry Form</h3>
                        <?php if (!empty($success_message)) { ?>
                        <div class="alert alert-success"><?php echo $success_message; ?></div>
                        <?php } ?>
                        <?php if (!empty($error_message)) { ?>
                        <div class="alert alert-danger"><?php echo $error_message; ?></div>
                        <?php } ?>
                        <form action="" method="post">
                            <div class="md-form">
                                <input type="text" id="form1" name="name" class="form-control" required>
                                <label for="form1">Your Name</label>
                            </div>
                            <div class="md-form">
                                <input type="email" id="email" name="email" class="form-control" required>
                                <label for="email">Your Email</label>
                            </div>
                            <div class="md-form">
                                <input type="text" id="mobile" name="mobile" class="form-control" required>
                                <label for="mobile">Your Mobile</label>
                            </div>
                            <div class="md-form">
                                <textarea id="message" name="message" class="form-control md-textarea" rows="3"
                                    required></textarea>
                                <label for="message">Your Query</label>
                            </div>
                            <button type="submit" class="btn btn-primary btn-block">Submit Form</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

  <!-- About us -->
  <section id="about-us" class="py-5">
      <div class="container">
          <div class="row">
              <div class="col-lg-6 py-5 ">
                  <h2 class="font-weight-bold">About Us<br> </h2>
                  <div class="pr-5">
                      <p> Polytechnic, Pune, an autonomous institute of Government of Maharashtra is
                          established in the year 1957. Institute is awarded academic autonomy in May 1994. It houses
                          in its 28 acre campus: main building, Computer Engineering, Information Technology and
                          Science department building, Electronics, staff quarters,
                          workshop building, exam section building, conference halls, hostels,library, canteen, mess,
                          etc.
                          <BR>
                      </p>
                      <p>Over the last four decades, several thousand diploma engineers passed out from various
                          disciplines are contributing their expertise for industries and various Government
                          departments. Institute has won several prestigious awards in academics as well as
                          socio-cultural activities. Overall, contribution of this institute in technical education of
                          country and development of a progressive society is significant.</p>
                  </div>
                  <a href="about-us.php" class="btn btn-secondary">Know More</a>
              </div>
              <div class="col-lg-6" style="background:url(./assets/images/img3.webp)">
              </div>
          </div>
      </div>
  </section>

  <style>
.course-image {
    width: 100%;
    height: 170px !important;
    object-fit: cover;
    object-position: center;
}
  </style>
  <!-- Our Courses -->
  <section id="courses" class="py-5 bg-light">
      <div class="text-center mb-5">
          <h2 class="font-weight-bold">Our Courses</h2>
          <p class="text-muted">Discover the Range of Courses we offer</p>
      </div>

      <div class="container">
          <div class="row">

              <?php 
        $query = mysqli_query($db_conn,"SELECT * FROM courses ORDER BY id DESC LIMIT 0, 8");
        while($course = mysqli_fetch_object($query))
        {?>
              <div class="col-lg-3 mb-4">
                  <div class="card">
                      <div>
                          <img src="./dist/uploads/<?php echo $course->image?>" alt=""
                              class="img-fluid rounded-top course-image">
                      </div>
                      <div class="card-body">
                          <b><?php echo $course->name?></b>
                          <p class="card-text">
                              <b>Duration: </b> <?php echo $course->duration?> <br>
                              <b>Price: </b> 4000/- Rs
                          </p>
                          <button class="btn btn-block btn-primary btn-sm">Enroll Now</button>
                      </div>
                  </div>
              </div>
              <?php } ?>
          </div>
      </div>
  </section>

  <!-- Teachers -->
  <section id="teacher" class="py-5">
      <div class="text-center mb-5">
          <h2 class="font-weight-bold">Our Teachers</h2>
          <p class="text-muted">We are excited and pleased to introduce you to the wonderfull, passionate and
              committed
              teachers of our college.</p>
      </div>

      <div class="container">
          <div class="row">
                <?php 
        $query = mysqli_query($db_conn,"SELECT * FROM teachers ORDER BY id DESC LIMIT 0, 8");
        while($teacher = mysqli_fetch_object($query))
        {?>
             
              <div class="col-lg-3 my-4">
                  <div class="card">
                      <div class="col-8 position-absolute" style="top:-50px">
                            <img src="./dist/uploads/<?php echo $teacher->profile_image?>" alt="" class="mw-100 border rounded-circle" 
                                style="width: 450px !important; height: 135px !important; object-fit: cover;">
                      </div>

                      <div class="card-body pt-5 mt-5" >
                          <h5 class="card-title mb-0"><?php echo $teacher->name?></h5>
                          <p><i class="fa fa-star text-warning"></i> <i class="fa fa-star text-warning"></i> <i
                                  class="fa fa-star text-warning"></i> <i class="fa fa-star text-warning"></i> <i
                                  class="fa fa-star text-warning"></i></p>
                          <p class="card-text">
                              <b>Designation: </b> <?php echo $teacher->designation?> <br>
                              <b>Speciality: </b><?php echo $teacher->specialty?> <br>
                          </p>
                      </div>
                  </div>
              </div>
              <?php } ?>
          </div>
      </div>
  </section>

  <!-- Acheivements -->
  <section id="achievement" class="py-5 text-white" style="background:#4c2f27">
      <div>
          <div class="container">
              <div class="row">
                  <div class="col-lg-6 pr-5">
                      <h2>Special Achievements</h2>
                      <p>In the Academic Year 2018-19, a project group of TYCE students have shown their talent by
                          finding solution for a social problem of water treatment. Through this project, polytechnic
                          students not only shown their creativity but they also proven their dedication towards
                          society. </p>

                      <img src="./assets/images/img4.webp" alt="" class="img-fluid rounded">
                  </div>
                  <div class="col-lg-6 my-auto">
                      <div class="row">
                          <div class="col-lg-6 mb-4">
                              <div class="border rounded">
                                  <div class="card-body text-center">
                                      <span><i class=" text-warning fas fa-graduation-cap fa-2x"></i></span>
                                      <h2 class="my-2 font-weight-bold h1">334</h2>
                                      <hr class="border-warning">
                                      <h4>Graduates</h4>
                                  </div>
                              </div>
                          </div>
                          <div class="col-lg-6 mb-4">
                              <div class="border rounded">
                                  <div class="card-body text-center">
                                      <span><i class=" text-warning fas fa-graduation-cap fa-2x"></i></span>
                                      <h2 class="my-2 font-weight-bold h1">334</h2>
                                      <hr class="border-warning">
                                      <h4>Graduates</h4>
                                  </div>
                              </div>
                          </div>
                          <div class="col-lg-6 mb-4">
                              <div class="border rounded">
                                  <div class="card-body text-center">
                                      <span><i class=" text-warning fas fa-graduation-cap fa-2x"></i></span>
                                      <h2 class="my-2 font-weight-bold h1">334</h2>
                                      <hr class="border-warning">
                                      <h4>Graduates</h4>
                                  </div>
                              </div>
                          </div>
                          <div class="col-lg-6 mb-4">
                              <div class="border rounded">
                                  <div class="card-body text-center">
                                      <span><i class=" text-warning fas fa-graduation-cap fa-2x"></i></span>
                                      <h2 class="my-2 font-weight-bold h1">334</h2>
                                      <hr class="border-warning">
                                      <h4>Graduates</h4>
                                  </div>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </div>
  </section>


  <!-- Testimonials -->
  <section class="py-5">
      <div class="text-center mb-5">
          <h2 class="font-weight-bold">What Pepole Says</h2>
          <p class="text-muted">The Institute always encourages individuals to think, question, explore and apply
              their well-honed minds to scale newer heights of success. </p>
      </div>
      <div class="container">
          <div class="row">
              <div class="col-4">
                  <div class="border rounded position-relative">
                      <div class="p-4 text-center">
                          Great faculty and wide spectrum of programs. Good planning for future expansion. Overall a
                          very good educational institution. I wish all the best for all future endevours of the
                          college.
                      </div>
                      <i class="fa fa-quote-left fa-3x position-absolute"
                          style="top:.5rem; left: .5rem; opacity:.2"></i>
                  </div>
                  <div class="text-center mt-n2">
                      <img src="./assets/images/img5.png" alt="" class="rounded-circle border" width="100" height="100">
                      <h6 class="mb-0 font-weight-bold">Name Of Candidate</h6>
                      <p><i>Designation</i></p>
                  </div>
              </div>
              <div class="col-4">
                  <div class="border rounded position-relative">
                      <div class="p-4 text-center">

                          Wonderful organization, excellent faculty and energized students make PCP a world class
                          institution. I wish each one of PCP a great success.
                      </div>
                      <i class="fa fa-quote-left fa-3x position-absolute"
                          style="top:.5rem; left: .5rem; opacity:.2"></i>
                  </div>
                  <div class="text-center mt-n2">
                      <img src="./assets/images/img5.png" alt="" class="rounded-circle border" width="100" height="100">
                      <h6 class="mb-0 font-weight-bold">Name Of Candidate</h6>
                      <p><i>Designation</i></p>
                  </div>
              </div>
              <div class="col-4">
                  <div class="border rounded position-relative">
                      <div class="p-4 text-center">
                          Great faculty and wide spectrum of programs. Good planning for
                          future expansion. Overall a very good educational institution. I wish all the best for all
                          future endevours of the college.
                      </div>
                      <i class="fa fa-quote-left fa-3x position-absolute"
                          style="top:.5rem; left: .5rem; opacity:.2"></i>
                  </div>
                  <div class="text-center mt-n2">
                      <img src="./assets/images/img5.png" alt="" class="rounded-circle border" width="100" height="100">
                      <h6 class="mb-0 font-weight-bold">Name Of Candidate</h6>
                      <p><i>Designation</i></p>
                  </div>
              </div>

          </div>
      </div>
  </section>


  <!-- Footer -->
  <footer style="background:url(./assets/images/still-life-851328_1280.jpg) center/cover no-repeat">
      <div class="py-5 text-white" style="background:#000000bb">
          <div class="container-fluid">
              <div class="row">
                  <div class="col-lg-4">
                      <h5>Useful Links</h5>

                      <ul class="fa-ul ml-4">
                          <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>Home</a></li>
                          <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>About Us</a></li>
                          <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>Courses</a></li>
                          <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>Terms &
                                  Conditions</a></li>
                          <li><a href="" class="text-light"><i class="fa-li fa fa-angle-right"></i>Privacy Policy</a>
                          </li>
                      </ul>
                  </div>
                  <div class="col-lg-4">
                      <h5>Social Presence</h5>

                      <div>
                          <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x"></i>
                              <i class="fab fa-facebook-f fa-stack-1x fa-inverse text-dark"></i>
                          </span>
                          <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x"></i>
                              <i class="fab fa-instagram fa-stack-1x fa-inverse text-dark"></i>
                          </span>
                          <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x"></i>
                              <i class="fab fa-twitter fa-stack-1x fa-inverse text-dark"></i>
                          </span>
                          <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x"></i>
                              <i class="fab fa-linkedin fa-stack-1x fa-inverse text-dark"></i>
                          </span>
                          <span class="fa-stack">
                              <i class="fa fa-circle fa-stack-2x"></i>
                              <i class="fab fa-youtube fa-stack-1x fa-inverse text-dark"></i>
                          </span>
                      </div>
                  </div>
                  <div class="col-lg-3">
                      <h5>Subscribe Now</h5>
                      <form action="">
                          <!-- Material input -->
                          <div class="form-group">
                              <input type="email" id="email-s" class="form-control" placeholder="Your Email">
                          </div>
                          <button class="btn btn-secondary py-2 btn-block">Submit</button>
                      </form>
                  </div>
              </div>
          </div>
      </div>
  </footer>

  <section class="py-2 bg-dark text-light">
      <div class="container-fluid">
          Copyright 2025-2025 All Rights Reseved . <a href="#" class="text-light"> OMKAR SATARDEKAR.
          </a>
      </div>
  </section>

  <?php include('footer.php') ?>