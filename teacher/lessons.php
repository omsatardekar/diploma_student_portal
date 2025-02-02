<?php
include('../includes/config.php');
include('header.php');
include('sidebar.php');

// Ensure session is started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Handle add/edit lesson submission
if (isset($_POST['submit'])) {
    $id = isset($_POST['id']) ? intval($_POST['id']) : null;
    $course_id = intval($_POST['course_id']);
    $title = mysqli_real_escape_string($db_conn, $_POST['title']);
    $description = mysqli_real_escape_string($db_conn, $_POST['description']);
    $duration = mysqli_real_escape_string($db_conn, $_POST['duration']);
    $video_url = mysqli_real_escape_string($db_conn, $_POST['video_url']);
    $today = date('Y-m-d');

    // Validate YouTube URL
    if (!filter_var($video_url, FILTER_VALIDATE_URL) || !strpos($video_url, "youtube.com")) {
        $_SESSION['error_msg'] = "Invalid YouTube URL.";
        header("Location: lessons.php?action=add-new");
        exit;
    }

    if ($id) {
        // Update existing lesson
        $query = "UPDATE lessons SET 
                  course_id = '$course_id', 
                  title = '$title', 
                  description = '$description', 
                  duration = '$duration', 
                  video_url = '$video_url', 
                  updated_at = NOW() 
                  WHERE id = $id";
        $msg = "Lesson updated successfully.";
    } else {
        // Insert new lesson
        $query = "INSERT INTO lessons (course_id, title, description, duration, video_url, date, created_at) 
                  VALUES ('$course_id', '$title', '$description', '$duration', '$video_url', '$today', NOW())";
        $msg = "Lesson has been added successfully.";
    }

    if (mysqli_query($db_conn, $query)) {
        $_SESSION['success_msg'] = $msg;
        header('Location: lessons.php');
        exit;
    } else {
        die("Database Error: " . mysqli_error($db_conn));
    }
}

// Handle delete lesson
if (isset($_GET['action']) && $_GET['action'] == 'delete' && isset($_GET['id'])) {
    $id = intval($_GET['id']);
    mysqli_query($db_conn, "DELETE FROM lessons WHERE id = $id");
    $_SESSION['success_msg'] = "Lesson deleted successfully.";
    header('Location: lessons.php');
    exit;
}

?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Lessons</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Teacher</a></li>
                    <li class="breadcrumb-item active">Lessons</li>
                </ol>
            </div>
            <?php if (isset($_SESSION['success_msg'])) { ?>
            <div class="col-12">
                <small class="text-success" style="font-size:16px"><?=$_SESSION['success_msg']?></small>
            </div>
            <?php unset($_SESSION['success_msg']); } ?>
            <?php if (isset($_SESSION['error_msg'])) { ?>
            <div class="col-12">
                <small class="text-danger" style="font-size:16px"><?=$_SESSION['error_msg']?></small>
            </div>
            <?php unset($_SESSION['error_msg']); } ?>
        </div>
    </div>
</div>

<section class="content">
    <div class="container-fluid">
        <?php 
        if (isset($_REQUEST['action']) && ($_REQUEST['action'] == 'add-new' || $_REQUEST['action'] == 'edit')) { 
            $id = isset($_GET['id']) ? intval($_GET['id']) : null;
            $lesson = null;
            if ($id) {
                $result = mysqli_query($db_conn, "SELECT * FROM lessons WHERE id = $id");
                $lesson = mysqli_fetch_object($result);
            }
        ?>
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title"><?= $id ? 'Edit Lesson' : 'Add New Lesson' ?></h3>
            </div>
            <div class="card-body">
                <form action="" method="POST">
                    <input type="hidden" name="id" value="<?= $lesson->id ?? '' ?>">
                    
                    <div class="form-group">
                        <label for="course_id">Select Course</label>
                        <select name="course_id" class="form-control" required>
                            <option value="">Select Course</option>
                            <?php
                            $courses = mysqli_query($db_conn, "SELECT id, name FROM courses");
                            while ($course = mysqli_fetch_object($courses)) { ?>
                                <option value="<?= $course->id ?>" <?= isset($lesson) && $lesson->course_id == $course->id ? 'selected' : '' ?>>
                                    <?= $course->name ?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="title">Lesson Title</label>
                        <input type="text" name="title" value="<?= $lesson->title ?? '' ?>" placeholder="Lesson Title" required class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="description">Lesson Description</label>
                        <textarea name="description" placeholder="Lesson Description" required class="form-control"><?= $lesson->description ?? '' ?></textarea>
                    </div>

                    <div class="form-group">
                        <label for="duration">Lesson Duration (in minutes)</label>
                        <input type="text" name="duration" value="<?= $lesson->duration ?? '' ?>" placeholder="Duration" required class="form-control">
                    </div>

                    <div class="form-group">
                        <label for="video_url">YouTube Video URL</label>
                        <input type="url" name="video_url" value="<?= $lesson->video_url ?? '' ?>" placeholder="Paste YouTube Video URL" required class="form-control">
                    </div>

                    <button name="submit" class="btn btn-success"><?= $id ? 'Update' : 'Submit' ?></button>
                </form>
            </div>
        </div>
        <?php } else { ?>
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title">Lessons</h3>
                <div class="card-tools">
                    <a href="?action=add-new" class="btn btn-success btn-xs"><i class="fa fa-plus mr-2"></i>Add New</a>
                </div>
            </div>
            <div class="card-body">
                <div class="table-responsive bg-white">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>S.No.</th>
                                <th>Title</th>
                                <th>Course</th>
                                <th>Duration</th>
                                <th>Video</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $count = 1;
                            $lessons = mysqli_query($db_conn, "SELECT l.*, c.name AS course_name FROM lessons l 
                                                               JOIN courses c ON l.course_id = c.id");
                            while ($lesson = mysqli_fetch_object($lessons)) { ?>
                            <tr>
                                <td><?= $count++ ?></td>
                                <td><?= $lesson->title ?></td>
                                <td><?= $lesson->course_name ?></td>
                                <td><?= $lesson->duration ?> min</td>
                                <td><a href="<?= $lesson->video_url ?>" target="_blank">Watch Video</a></td>
                                <td><?= $lesson->date ?></td>
                                <td>
                                    <a href="?action=edit&id=<?= $lesson->id ?>" class="btn btn-primary btn-sm">Edit</a>
                                    <a href="?action=delete&id=<?= $lesson->id ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure?');">Delete</a>
                                </td>
                            </tr>
                            <?php } ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <?php } ?>
    </div>
</section>

<?php include('footer.php'); ?>
