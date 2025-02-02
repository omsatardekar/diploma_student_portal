<?php
include('../includes/config.php');

// Ensure session is started
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Handle add/edit form submission
if (isset($_POST['submit'])) {
    $id = isset($_POST['id']) ? intval($_POST['id']) : null;
    $name = mysqli_real_escape_string($db_conn, $_POST['name']);
    $designation = mysqli_real_escape_string($db_conn, $_POST['designation']);
    $speciality = mysqli_real_escape_string($db_conn, $_POST['speciality']);
    $today = date('Y-m-d');

    // Image handling
    $image = $_FILES["profile_image"]["name"];
    $target_dir = "../dist/uploads/";
    $target_file = $target_dir . basename($image);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    $uploadOk = 1;

    if ($image) {
        // Validate file upload
        if (file_exists($target_file)) {
            $_SESSION['error_msg'] = "File already exists.";
            $uploadOk = 0;
        }

        if ($_FILES["profile_image"]["size"] > 500000) {
            $_SESSION['error_msg'] = "File is too large.";
            $uploadOk = 0;
        }

        if (!in_array($imageFileType, ["jpg", "jpeg", "png", "gif"])) {
            $_SESSION['error_msg'] = "Only JPG, JPEG, PNG & GIF files are allowed.";
            $uploadOk = 0;
        }
    }

    if ($uploadOk === 0) {
        $_SESSION['error_msg'] = $_SESSION['error_msg'] ?? "File was not uploaded.";
    } else {
        if ($image && move_uploaded_file($_FILES["profile_image"]["tmp_name"], $target_file)) {
            $image_clause = ", profile_image = '$image'";
        } else {
            $image_clause = "";
        }

        // Insert or update teacher details
        if ($id) {
            $query = "UPDATE teachers SET 
                      name = '$name', 
                      designation = '$designation', 
                      specialty = '$speciality' 
                      $image_clause 
                      WHERE id = $id";
            $msg = "Teacher details updated successfully.";
        } else {
            $query = "INSERT INTO teachers (name, designation, specialty, profile_image, date_created) 
                      VALUES ('$name', '$designation', '$speciality', '$image', '$today')";
            $msg = "Teacher has been uploaded successfully.";
        }

        if (mysqli_query($db_conn, $query)) {
            $_SESSION['success_msg'] = $msg;
            header('Location: teachers.php');
            exit;
        } else {
            die("Database Error: " . mysqli_error($db_conn));
        }
    }
}

// Handle delete functionality
if (isset($_GET['action']) && $_GET['action'] == 'delete' && isset($_GET['id'])) {
    $id = intval($_GET['id']);
    $result = mysqli_query($db_conn, "SELECT profile_image FROM teachers WHERE id = $id");
    $teacher = mysqli_fetch_object($result);

    if ($teacher && file_exists("../dist/uploads/" . $teacher->profile_image)) {
        unlink("../dist/uploads/" . $teacher->profile_image);
    }

    mysqli_query($db_conn, "DELETE FROM teachers WHERE id = $id");
    $_SESSION['success_msg'] = "Teacher deleted successfully.";
    header('Location: teachers.php');
    exit;
}

?>

<?php include('header.php') ?>
<?php include('sidebar.php') ?>

<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Teachers</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Admin</a></li>
                    <li class="breadcrumb-item active">Teachers</li>
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
            $teacher = null;
            if ($id) {
                $result = mysqli_query($db_conn, "SELECT * FROM teachers WHERE id = $id");
                $teacher = mysqli_fetch_object($result);
            }
        ?>
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title"><?= $id ? 'Edit Teacher' : 'Add New Teacher' ?></h3>
            </div>
            <div class="card-body">
                <form action="" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="id" value="<?= $teacher->id ?? '' ?>">
                    <div class="form-group">
                        <label for="name">Teacher Name</label>
                        <input type="text" name="name" value="<?= $teacher->name ?? '' ?>" placeholder="Teacher Name" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="designation">Designation</label>
                        <input type="text" name="designation" value="<?= $teacher->designation ?? '' ?>" placeholder="Designation" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="speciality">Speciality</label>
                        <input type="text" name="speciality" value="<?= $teacher->specialty ?? '' ?>" placeholder="Speciality" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="profile_image">Profile Image</label>
                        <input type="file" name="profile_image" id="profile_image">
                        <?php if (!empty($teacher->profile_image)) { ?>
                        <small>Current Image: <img src="../dist/uploads/<?= $teacher->profile_image ?>" height="50"></small>
                        <?php } ?>
                    </div>
                    <button name="submit" class="btn btn-success"><?= $id ? 'Update' : 'Submit' ?></button>
                </form>
            </div>
        </div>
        <?php } else { ?>
        <div class="card">
            <div class="card-header py-2">
                <h3 class="card-title">Teachers</h3>
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
                                <th>Image</th>
                                <th>Name</th>
                                <th>Designation</th>
                                <th>Speciality</th>
                                <th>Date</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            $count = 1;
                            $teacher_query = mysqli_query($db_conn, 'SELECT * FROM teachers');
                            while ($teacher = mysqli_fetch_object($teacher_query)) { ?>
                            <tr>
                                <td><?=$count++?></td>
                                <td>
                                    <img src="../dist/uploads/<?=$teacher->profile_image?>" height="100"
                                        alt="<?=$teacher->name?>" class="border">
                                </td>
                                <td><?=$teacher->name?></td>
                                <td><?=$teacher->designation?></td>
                                <td><?=$teacher->specialty?></td>
                                <td><?=$teacher->date_created?></td>
                                <td>
                                    <a href="?action=edit&id=<?=$teacher->id?>" class="btn btn-primary btn-sm">Edit</a>
                                    <a href="?action=delete&id=<?=$teacher->id?>" 
                                       onclick="return confirm('Are you sure you want to delete this teacher?');" 
                                       class="btn btn-danger btn-sm">Delete</a>
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

<?php include('footer.php') ?>
