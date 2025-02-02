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
    } elseif (isset($_POST['action']) && $_POST['action'] == 'send_whatsapp') {
        // Send WhatsApp Message Logic
        $mobile = $_POST['mobile'];
        $message = urlencode($_POST['message']);
        header("Location: https://api.whatsapp.com/send?phone=$mobile&text=$message");
        exit;
    } elseif (isset($_POST['action']) && $_POST['action'] == 'delete') {
        // Delete Logic
        $id = $_POST['id'];
        mysqli_query($db_conn, "DELETE FROM inquiries WHERE id = $id");
        echo "<script>alert('Inquiry deleted successfully');</script>";
    }
}
?>

<!-- Content Header -->
<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Client List</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Dashboard</a></li>
          <li class="breadcrumb-item active">Client List</li>
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
        <h3 class="card-title">Client Inquiries</h3>
      </div>
      <div class="card-body">
        <div class="table-responsive bg-white">
          <table class="table table-bordered">
            <thead>
              <tr>
                <th>S.No.</th>
                <th>Name</th>
                <th>Email</th>
                <th>Mobile</th>
                <th>Message</th>
                <th>Created At</th>
                <th>Actions</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $count = 1;
              $query = mysqli_query($db_conn, 'SELECT * FROM inquiries ORDER BY created_at DESC');
              while ($inquiry = mysqli_fetch_object($query)) { ?>
                <tr>
                  <td><?= $count++ ?></td>
                  <td><?= htmlspecialchars($inquiry->name) ?></td>
                  <td><?= htmlspecialchars($inquiry->email) ?></td>
                  <td><?= htmlspecialchars($inquiry->mobile) ?></td>
                  <td><?= nl2br(htmlspecialchars($inquiry->message)) ?></td>
                  <td><?= htmlspecialchars($inquiry->created_at) ?></td>
                  <td>
                    <form method="post" style="display: inline-block;">
                      <input type="hidden" name="id" value="<?= $inquiry->id ?>">
                      <input type="hidden" name="action" value="delete">
                      <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                    <button class="btn btn-primary btn-sm" onclick="showEmailModal('<?= $inquiry->email ?>')">Send Email</button>
                    <button class="btn btn-success btn-sm" onclick="showWhatsAppModal('<?= $inquiry->mobile ?>')">Send WhatsApp</button>
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

<!-- Modal for sending email -->
<div class="modal fade" id="emailModal" tabindex="-1" role="dialog" aria-labelledby="emailModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="emailModalLabel">Send Email</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post">
        <div class="modal-body">
          <div class="form-group">
            <label for="email">Recipient Email</label>
            <input type="email" class="form-control" id="email" name="email" readonly>
          </div>
          <div class="form-group">
            <label for="message">Message</label>
            <textarea class="form-control" id="emailMessage" name="message" rows="5"></textarea>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-primary" name="action" value="send_email">Send Email</button>
        </div>
      </form>
    </div>
  </div>
</div>

<!-- Modal for sending WhatsApp -->
<div class="modal fade" id="whatsappModal" tabindex="-1" role="dialog" aria-labelledby="whatsappModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="whatsappModalLabel">Send WhatsApp Message</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form method="post">
        <div class="modal-body">
          <div class="form-group">
            <label for="whatsappMobile">Recipient Mobile</label>
            <input type="text" class="form-control" id="whatsappMobile" name="mobile" readonly>
          </div>
          <div class="form-group">
            <label for="whatsappMessage">Message</label>
            <textarea class="form-control" id="whatsappMessage" name="message" rows="5"></textarea>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="submit" class="btn btn-success" name="action" value="send_whatsapp">Send WhatsApp</button>
        </div>
      </form>
    </div>
  </div>
</div>

<script>
function showEmailModal(email) {
    document.getElementById('email').value = email;
    $('#emailModal').modal('show');
}

function showWhatsAppModal(mobile) {
    document.getElementById('whatsappMobile').value = mobile;
    $('#whatsappModal').modal('show');
}
</script>

<?php include('footer.php'); ?>
