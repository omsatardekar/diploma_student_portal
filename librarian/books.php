<?php include('../includes/config.php'); ?>
<?php
  if (isset($_POST['submit'])) {
    $title = mysqli_real_escape_string($db_conn, $_POST['title']);
    $author = mysqli_real_escape_string($db_conn, $_POST['author']);
    $category = mysqli_real_escape_string($db_conn, $_POST['category']);
    $isbn = mysqli_real_escape_string($db_conn, $_POST['isbn']);
    $image = $_FILES["thumbnail"]["name"];
    $added_date = date('Y-m-d');

    $target_dir = "../dist/uploads/";
    $target_file = $target_dir . basename($image);
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    $uploadOk = 1;

    if (file_exists($target_file)) {
      echo "Sorry, file already exists.";
      $uploadOk = 0;
    }

    if ($_FILES["thumbnail"]["size"] > 500000) {
      echo "Sorry, your file is too large.";
      $uploadOk = 0;
    }

    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
      echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
      $uploadOk = 0;
    }

    if ($uploadOk == 0) {
      echo "Sorry, your file was not uploaded.";
    } else {
      if (move_uploaded_file($_FILES["thumbnail"]["tmp_name"], $target_file)) {
        if (isset($_GET['edit_id'])) {
          $edit_id = $_GET['edit_id'];
          $query = "UPDATE books SET title='$title', author='$author', category='$category', isbn='$isbn', image='$image', added_date='$added_date' WHERE id='$edit_id'";
        } else {
          $query = "INSERT INTO books (title, author, category, isbn, image, added_date) 
                    VALUES ('$title', '$author', '$category', '$isbn', '$image', '$added_date')";
        }

        if (mysqli_query($db_conn, $query)) {
          $_SESSION['success_msg'] = isset($_GET['edit_id']) ? 'Book has been updated successfully' : 'Book has been added successfully';
          header('Location: books.php');
          exit;
        } else {
          echo "Error: " . mysqli_error($db_conn);
        }
      } else {
        echo "Sorry, there was an error uploading your file.";
      }
    }
  }

  if (isset($_GET['delete_id'])) {
    $delete_id = $_GET['delete_id'];
    $query = "DELETE FROM books WHERE id='$delete_id'";
    if (mysqli_query($db_conn, $query)) {
      $_SESSION['success_msg'] = 'Book has been deleted successfully';
      header('Location: books.php');
      exit;
    } else {
      echo "Error: " . mysqli_error($db_conn);
    }
  }
?>

<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>

<div class="content-header">
  <div class="container-fluid">
    <div class="row mb-2">
      <div class="col-sm-6">
        <h1 class="m-0 text-dark">Manage Library Books</h1>
      </div>
      <div class="col-sm-6">
        <ol class="breadcrumb float-sm-right">
          <li class="breadcrumb-item"><a href="#">Admin</a></li>
          <li class="breadcrumb-item active">Books</li>
        </ol>
      </div>
      <?php
        if (isset($_SESSION['success_msg'])) {
          echo '<div class="col-12"><small class="text-success" style="font-size:16px">'.$_SESSION['success_msg'].'</small></div>';
          unset($_SESSION['success_msg']);
        }
      ?>
    </div>
  </div>
</div>

<section class="content">
  <div class="container-fluid">
    <?php if (isset($_REQUEST['action'])) { 
      $edit_id = isset($_GET['edit_id']) ? $_GET['edit_id'] : null;
      $book_data = $edit_id ? mysqli_fetch_object(mysqli_query($db_conn, "SELECT * FROM books WHERE id='$edit_id'")) : null;
    ?>
    <div class="card">
      <div class="card-header py-2">
        <h3 class="card-title"><?php echo $edit_id ? 'Edit Book' : 'Add New Book'; ?></h3>
      </div>
      <div class="card-body">
        <form action="?<?php echo $edit_id ? 'action=add-new&edit_id='.$edit_id : 'action=add-new'; ?>" method="POST" enctype="multipart/form-data">
          <div class="form-group">
            <label for="title">Book Title</label>
            <input type="text" name="title" value="<?php echo $edit_id ? $book_data->title : ''; ?>" placeholder="Book Title" required class="form-control">
          </div>
          <div class="form-group">
            <label for="author">Author</label>
            <input type="text" name="author" value="<?php echo $edit_id ? $book_data->author : ''; ?>" placeholder="Author Name" required class="form-control">
          </div>
          <div class="form-group">
            <label for="category">Category</label>
            <input type="text" name="category" value="<?php echo $edit_id ? $book_data->category : ''; ?>" placeholder="Category" required class="form-control">
          </div>
          <div class="form-group">
            <label for="isbn">ISBN</label>
            <input type="text" name="isbn" value="<?php echo $edit_id ? $book_data->isbn : ''; ?>" placeholder="ISBN Number" required class="form-control">
          </div>
          <div class="form-group">
            <input type="file" name="thumbnail" id="thumbnail" <?php echo $edit_id ? '' : 'required'; ?>>
          </div>
          <button name="submit" class="btn btn-success">Submit</button>
        </form>
      </div>
    </div>
    <?php } else { ?>
    <div class="card">
      <div class="card-header py-2">
        <h3 class="card-title">Books</h3>
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
                <th>Title</th>
                <th>Author</th>
                <th>Category</th>
                <th>ISBN</th>
                <th>Date Added</th>
                <th>Action</th>
              </tr>
            </thead>
            <tbody>
              <?php
              $count = 1;
              $book_query = mysqli_query($db_conn, 'SELECT * FROM books');
              while ($book = mysqli_fetch_object($book_query)) {?>
                <tr>
                  <td><?=$count++?></td>
                  <td><img src='../dist/uploads/<?=$book->image?>' height='100' alt='<?=$book->title?>' class='border'></td>
                  <td><?=$book->title?></td>
                  <td><?=$book->author?></td>
                  <td><?=$book->category?></td>
                  <td><?=$book->isbn?></td>
                  <td><?=$book->added_date?></td>
                  <td>
                    <a href="?action=add-new&edit_id=<?=$book->id?>" class="btn btn-warning btn-sm">Edit</a>
                    <a href="?delete_id=<?=$book->id?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this book?')">Delete</a>
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
