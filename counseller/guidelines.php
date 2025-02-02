<?php
ob_start();
include('../includes/config.php');
include('header.php');
include('sidebar.php');

// Include PHPMailer classes
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    if (isset($_POST['action']) && $_POST['action'] == 'send_email') {
        // Send Email Logic
        $email = $_POST['email'];
        $message = $_POST['message'];

        // Sender Email (Your email)
        $from = 'omkarsatardekar4002@gmail.com'; 

        // Email Subject
        $subject = 'Response to your inquiry';

        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        try {
            //Server settings
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';           // Set the SMTP server to send through
            $mail->SMTPAuth = true;                  // Enable SMTP authentication
            $mail->Username = 'omkarsatardekar4002@gmail.com'; // SMTP username
            $mail->Password = 'bkvt psvl lrpo vdog';       // SMTP password (use App Password if 2FA is enabled)
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable STARTTLS encryption
            $mail->Port = 587;                       // TCP port to connect to

            //Recipients
            $mail->setFrom($from, 'Your Counsellor');
            $mail->addAddress($email);  // Add the recipient's email

            // Content
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = $subject;
            $mail->Body    = "<html><body><p>Dear user,</p><p>" . nl2br($message) . "</p><p>Regards,</p><p>Your Counsellor</p></body></html>";

            // Send the email
            $mail->send();
            echo "<script>alert('Email sent successfully');</script>";
        } catch (Exception $e) {
            echo "<script>alert('Email could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
        }
    } elseif (isset($_POST['action']) && $_POST['action'] == 'send_email_to_all') {
        // Send Email to All Logic
        $message = $_POST['message'];
        $subject = 'Response to your inquiry';

        // Create a new PHPMailer instance
        $mail = new PHPMailer(true);

        // Fetch all parent emails from the database
        $query = mysqli_query($db_conn, "SELECT email FROM accounts WHERE type = 'parent'");
        $emails = [];
        while ($row = mysqli_fetch_assoc($query)) {
            $emails[] = $row['email'];
        }

        try {
            //Server settings
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';           // Set the SMTP server to send through
            $mail->SMTPAuth = true;                  // Enable SMTP authentication
            $mail->Username = 'omkarsatardekar4002@gmail.com'; // SMTP username
            $mail->Password = 'bkvt psvl lrpo vdog';       // SMTP password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS; // Enable STARTTLS encryption
            $mail->Port = 587;                       // TCP port to connect to

            //Recipients
            $mail->setFrom('omkarsatardekar4002@gmail.com', 'Your Counsellor');
            foreach ($emails as $email) {
                $mail->addAddress($email);  // Add each parent email
            }

            // Content
            $mail->isHTML(true);  // Set email format to HTML
            $mail->Subject = $subject;
            $mail->Body    = "<html><body><p>Dear Parents,</p><p>" . nl2br($message) . "</p><p>Regards,</p><p>Your Counsellor</p></body></html>";

            // Send the email
            $mail->send();
            echo "<script>alert('Email sent to all parents successfully');</script>";
        } catch (Exception $e) {
            echo "<script>alert('Email could not be sent to all. Mailer Error: {$mail->ErrorInfo}');</script>";
        }
    }
}
?>

<!-- Content Header -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Parent List</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
          <li class="breadcrumb-item active">Parent List</li>
        </ol>
      </div>
    </div>
  </div>
</div>

<!-- Main content -->
<section class="content">
  <div class="container-fluid">
    <div class="card">
      <div class="card-header py-2">
        <h3 class="card-title">Parents</h3>
        <form method="post" class="float-right">
          <button type="submit" class="btn btn-primary btn-sm" name="action" value="send_email_to_all">Send Mail to All</button>
          <textarea class="form-control mt-2" name="message" placeholder="Enter message to send to all parents" rows="3"></textarea>
        </form>
      </div>
      <div class="card-body">
        <div class="table-responsive bg-white">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $count = 1;
              $query = mysqli_query($db_conn, 'SELECT id, name, email FROM accounts WHERE type = "parent" ORDER BY name ASC');
              while ($parent = mysqli_fetch_object($query)) { ?>
                <tr>
                  <td><?= $count++ ?></td>
                  <td><?= htmlspecialchars($parent->name) ?></td>
                  <td><?= htmlspecialchars($parent->email) ?></td>
                  <td>
                    <form method="post" style="display: inline-block;">
                      <input type="hidden" name="email" value="<?= $parent->email ?>">
                      <input type="hidden" name="action" value="send_email">
                      <textarea class="form-control mt-2" name="message" placeholder="Enter message" rows="2"></textarea>
                      <button type="submit" class="btn btn-primary btn-sm mt-2">Send Email</button>
                    </form>
                  </td>
                </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</section>

<?php include('footer.php'); ?>
