<?php 
include('../includes/config.php'); 
include('header.php'); 
include('sidebar.php'); 
?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Manage Student Attendance</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Attendance</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">

        <?php
    $usermeta = get_user_metadata($std_id);
    
    // Check if class exists in user metadata before proceeding
    if (isset($usermeta['class']) && !empty($usermeta['class'])) {
        $class = get_post(['id' => $usermeta['class']]);
    } else {
        $class = null;
    }
    
    ?>

        <!-- Student Details -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Student Detail</h3>
            </div>
            <div class="card-body">
                <strong>Name: </strong> <?php echo get_users(array('id' => $std_id))[0]->name ?> <br>
                <strong>Class: </strong>
                <?php 
        // Display class title if available
        if ($class) {
            echo $class->title;
        } else {
            echo "Class not found";
        }
        ?>
            </div>
        </div>

        <!-- Attendance Details -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Attendance</h3>
            </div>
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td>Date</td>
                            <td>Status</td>
                            <td>Signin Time</td>
                            <td>Signout Time</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
            $current_month = strtolower(date('F'));
            $current_year = date('Y');
            $sql = "SELECT * FROM `attendance` WHERE `attendance_month` = '$current_month' AND year(current_session) = $current_year";
            $query = mysqli_query($db_conn, $sql);

            // Check if query returned a result
            if ($query && mysqli_num_rows($query) > 0) {
                $row = mysqli_fetch_object($query);
                
                // Check if attendance_value exists and is an array before looping
                if (isset($row->attendance_value) && $row->attendance_value) {
                    foreach (unserialize($row->attendance_value) as $date => $value) { ?>
                        <tr>
                            <td><?php echo $date; ?></td>
                            <td><?php echo ($value['signin_at']) ? 'Present' : 'Absent'; ?></td>
                            <td><?php echo ($value['signin_at']) ? date('d-m-Y h:i:s', $value['signin_at']) : ''; ?>
                            </td>
                            <td><?php echo ($value['signout_at']) ? date('d-m-Y h:i:s', $value['signout_at']) : ''; ?>
                            </td>
                        </tr>
                        <?php }
                } else {
                    echo "<tr><td colspan='4' class='text-center'>No attendance data available.</td></tr>";
                }
            } else {
                echo "<tr><td colspan='4' class='text-center'>No attendance records found.</td></tr>";
            }
            ?>
                    </tbody>
                </table>
            </div>
        </div>

    </div>
    <!--/. container-fluid -->
</section>

<?php include('footer.php'); ?>