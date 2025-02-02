<?php include('../includes/config.php'); ?>

<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require '../PHPMailer/src/Exception.php';
require '../PHPMailer/src/PHPMailer.php';
require '../PHPMailer/src/SMTP.php';

// Handle modal form submission for issuing books
if (isset($_POST['issue_book'])) {
    $student_id = $_POST['student_id'];
    $book_id = $_POST['book_id'];
    $start_date = $_POST['start_date'];
    $end_date = $_POST['end_date'];
    $student_email = $_POST['student_email'];

    // Fetch book details
    $book_query = "SELECT title FROM books WHERE id = '$book_id'";
    $book_result = mysqli_query($db_conn, $book_query);
    $book = mysqli_fetch_assoc($book_result);
    $book_name = $book['title']; // Fetch book name directly

    // Insert book issue details into book_issues table
    $query = "INSERT INTO book_issues (student_id, book_name, start_date, end_date, issue_status) 
              VALUES ('$student_id', '$book_name', '$start_date', '$end_date', 'Issued')";
    if (mysqli_query($db_conn, $query)) {
        // Send email notification
        $mail = new PHPMailer(true);
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'omkarsatardekar4002@gmail.com'; // Your email
            $mail->Password = 'bkvt psvl lrpo vdog'; // Your email password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Recipient details
            $mail->setFrom('omkarsatardekar4002@gmail.com', 'Library');
            $mail->addAddress($student_email);

            // Email content
            $mail->isHTML(true);
            $mail->Subject = 'Book Issued Successfully';
            $mail->Body = "
                <h3>Dear Student,</h3>
                <p>The following book has been issued to you:</p>
                <p><b>Book Name:</b> $book_name</p>
                <p><b>Start Date:</b> $start_date</p>
                <p><b>End Date:</b> $end_date</p>
                <p>Please return the book on or before the end date.</p>
                <p>Thank you!</p>
            ";

            $mail->send();
            echo "<script>alert('Mail sent successfully!');</script>";
        } catch (Exception $e) {
            echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
        }
    }
}

// Handle modal form submission for returning books
if (isset($_POST['return_book'])) {
    $student_id = $_POST['student_id'];
    $book_name = $_POST['book_name'];
    $return_date = date('Y-m-d'); // Current date as return date
    $student_email = $_POST['student_email'];

    // Update book issue status to returned in book_issues table
    $query = "UPDATE book_issues SET issue_status = 'Returned' WHERE student_id = '$student_id' AND issue_status = 'Issued'";
    if (mysqli_query($db_conn, $query)) {
        // Send email notification
        $mail = new PHPMailer(true);
        try {
            $mail->isSMTP();
            $mail->Host = 'smtp.gmail.com';
            $mail->SMTPAuth = true;
            $mail->Username = 'omkarsatardekar4002@gmail.com'; // Your email
            $mail->Password = 'bkvt psvl lrpo vdog'; // Your email password
            $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
            $mail->Port = 587;

            // Recipient details
            $mail->setFrom('omkarsatardekar4002@gmail.com', 'Library');
            $mail->addAddress($student_email);

            // Email content
            $mail->isHTML(true);
            $mail->Subject = 'Book Returned Successfully';
            $mail->Body = "
                <h3>Dear Student,</h3>
                <p>The following book has been returned successfully:</p>
                <p><b>Book Name:</b> $book_name</p>
                <p><b>Return Date:</b> $return_date</p>
                <p>Thank you for returning the book on time!</p>
            ";

            $mail->send();
            echo "<script>alert('Mail sent successfully!');</script>";
        } catch (Exception $e) {
            echo "<script>alert('Message could not be sent. Mailer Error: {$mail->ErrorInfo}');</script>";
        }
    }
}
?>

<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Students</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Librarian</a></li>
                    <li class="breadcrumb-item active">Students</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title">Students</h3>
            </div>
            <div class="card-body">
                <div class="table-responsive bg-white">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>S.No.</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Book Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $count = 1;
                            $query = "SELECT id, name, email FROM accounts WHERE type='student'";
                            $students = mysqli_query($db_conn, $query);
                            while ($student = mysqli_fetch_object($students)) {
                                // Fetch book status for each student
                                $status_query = "SELECT book_name, issue_status FROM book_issues WHERE student_id='$student->id' ORDER BY id DESC LIMIT 1";
                                $status_result = mysqli_query($db_conn, $status_query);
                                $status = mysqli_fetch_object($status_result);
                                $issue_status = $status->issue_status ?? 'Available';
                                $book_name = $status->book_name ?? '';
                            ?>
                            <tr>
                                <td><?= $count++ ?></td>
                                <td><?= $student->name ?></td>
                                <td><?= $student->email ?></td>
                                <td class="book-status" data-student-id="<?= $student->id ?>"><?= $issue_status ?></td>
                                <td>
                                    <?php if ($issue_status === 'Issued') { ?>
                                    <button class="btn btn-sm btn-danger return-book" data-toggle="modal"
                                        data-target="#returnBookModal" data-student-id="<?= $student->id ?>"
                                        data-book-name="<?= $book_name ?>" data-student-email="<?= $student->email ?>">
                                        Return Book
                                    </button>
                                    <?php } else { ?>
                                    <button class="btn btn-sm btn-success issue-book" data-toggle="modal"
                                        data-target="#issueBookModal" data-student-id="<?= $student->id ?>"
                                        data-student-name="<?= $student->name ?>"
                                        data-student-email="<?= $student->email ?>">
                                        Issue Book
                                    </button>
                                    <?php } ?>
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

<!-- Issue Book Modal -->
<div class="modal fade" id="issueBookModal" tabindex="-1" role="dialog" aria-labelledby="issueBookModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="">
                <div class="modal-header">
                    <h5 class="modal-title" id="issueBookModalLabel">Issue Book</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="student_id" id="studentId">
                    <input type="hidden" name="student_email" id="studentEmail">
                    <div class="form-group">
                        <label for="studentName">Student Name</label>
                        <input type="text" id="studentName" class="form-control" readonly>
                    </div>
                    <div class="form-group">
                        <label for="bookId">Book Name</label>
                        <select name="book_id" id="bookId" class="form-control" required>
                            <option value="">Select Book</option>
                            <?php
                            $book_query = "SELECT id, title FROM books";
                            $books = mysqli_query($db_conn, $book_query);
                            while ($book = mysqli_fetch_object($books)) {
                                echo "<option value='$book->id'>$book->title</option>";
                            }
                            ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="startDate">Start Date</label>
                        <input type="date" name="start_date" id="startDate" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <label for="endDate">End Date</label>
                        <input type="date" name="end_date" id="endDate" class="form-control" readonly>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="issue_book" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Return Book Modal -->
<div class="modal fade" id="returnBookModal" tabindex="-1" role="dialog" aria-labelledby="returnBookModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form method="POST" action="">
                <div class="modal-header">
                    <h5 class="modal-title" id="returnBookModalLabel">Return Book</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <input type="hidden" name="student_id" id="returnStudentId">
                    <input type="hidden" name="book_name" id="returnBookName">
                    <input type="hidden" name="student_email" id="returnStudentEmail">
                    <p>Are you sure you want to mark this book as returned?</p>
                </div>
                <div class="modal-footer">
                    <button type="submit" name="return_book" class="btn btn-primary">Submit</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
// Set Modal Details and Calculate Default End Date
$('#issueBookModal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var studentId = button.data('student-id');
    var studentName = button.data('student-name');
    var studentEmail = button.data('student-email');

    var modal = $(this);
    modal.find('#studentId').val(studentId);
    modal.find('#studentName').val(studentName);
    modal.find('#studentEmail').val(studentEmail);

    // Set default start date and end date
    var today = new Date().toISOString().split('T')[0];
    modal.find('#startDate').val(today);
    var endDate = new Date();
    endDate.setDate(endDate.getDate() + 15);
    modal.find('#endDate').val(endDate.toISOString().split('T')[0]);
});

// Set Modal Details for Returning Books
$('#returnBookModal').on('show.bs.modal', function(event) {
    var button = $(event.relatedTarget);
    var studentId = button.data('student-id');
    var bookName = button.data('book-name');
    var studentEmail = button.data('student-email');

    var modal = $(this);
    modal.find('#returnStudentId').val(studentId);
    modal.find('#returnBookName').val(bookName);
    modal.find('#returnStudentEmail').val(studentEmail);
});
</script>

<?php include('footer.php'); ?>