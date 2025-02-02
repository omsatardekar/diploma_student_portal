<?php 
include('../includes/config.php');
include('header.php');
include('sidebar.php');

// Helper functions
function get_teacher_name($item_id) {
    global $db_conn;
    
    // Check if the 'users' table exists
    $check_table = mysqli_query($db_conn, "SHOW TABLES LIKE 'users'");
    if (mysqli_num_rows($check_table) > 0) {
        // If the 'users' table exists, proceed with the query
        $query = mysqli_query($db_conn, "SELECT u.name FROM metadata m 
            INNER JOIN users u ON m.meta_value = u.id 
            WHERE m.meta_key = 'teacher_id' AND m.item_id = $item_id LIMIT 1");

        if ($teacher = mysqli_fetch_object($query)) {
            return $teacher->name;
        }
    }
    
    // Return a fallback value if the table does not exist or the teacher was not found
    return "Unknown";
}

function get_subject_name($item_id) {
    global $db_conn;
    
    // Check if the 'posts' table exists
    $check_table = mysqli_query($db_conn, "SHOW TABLES LIKE 'posts'");
    if (mysqli_num_rows($check_table) > 0) {
        // If the 'posts' table exists, proceed with the query
        $query = mysqli_query($db_conn, "SELECT p.title FROM metadata m 
            INNER JOIN posts p ON m.meta_value = p.id 
            WHERE m.meta_key = 'subject_id' AND m.item_id = $item_id LIMIT 1");

        if ($subject = mysqli_fetch_object($query)) {
            return $subject->title;
        }
    }

    // Return a fallback value if the table does not exist or the subject was not found
    return "Unknown";
}

?>

<!-- Content Header (Page header) -->
<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">Time Table</h1>
            </div>
            <div class="col-sm-6">
                <ol class="breadcrumb float-sm-right">
                    <li class="breadcrumb-item"><a href="#">Student</a></li>
                    <li class="breadcrumb-item active">Time Table</li>
                </ol>
            </div>
        </div>
    </div>
</div>

<!-- Main content -->
<section class="content">
    <div class="container-fluid">
        <div class="card">
            <div class="card-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Timing</th>
                            <th>Monday</th>
                            <th>Tuesday</th>
                            <th>Wednesday</th>
                            <th>Thursday</th>
                            <th>Friday</th>
                            <th>Saturday</th>
                            <th>Sunday</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        // Fetch all periods with 'from' and 'to' metadata
                        $periods = mysqli_query($db_conn, "
                            SELECT item_id, 
                                GROUP_CONCAT(meta_key, '=', meta_value) as meta_data 
                            FROM metadata 
                            WHERE meta_key IN ('from', 'to') 
                            GROUP BY item_id
                        ");

                        while ($period = mysqli_fetch_assoc($periods)) {
                            // Parse metadata into an associative array
                            $meta_data = [];
                            parse_str(str_replace(',', '&', $period['meta_data']), $meta_data);

                            $from = isset($meta_data['from']) ? strtotime($meta_data['from']) : null;
                            $to = isset($meta_data['to']) ? strtotime($meta_data['to']) : null;

                            if ($from && $to) {
                                ?>
                        <tr>
                            <td><?= date('h:i A', $from) . ' - ' . date('h:i A', $to); ?></td>
                            <?php 
                                    $days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];

                                    foreach ($days as $day) {
                                        $query = mysqli_query($db_conn, "
                                            SELECT * 
                                            FROM posts AS p
                                            INNER JOIN metadata AS mc ON (mc.item_id = p.id)
                                            INNER JOIN metadata AS md ON (md.item_id = p.id)
                                            INNER JOIN metadata AS mp ON (mp.item_id = p.id)
                                            WHERE p.type = 'timetable'
                                              AND p.status = 'publish'
                                              AND md.meta_key = 'day_name' AND md.meta_value = '$day'
                                              AND mp.meta_key = 'period_id' AND mp.meta_value = {$period['item_id']}
                                              AND mc.meta_key = 'class_id' AND mc.meta_value = 1
                                        ");

                                        if (mysqli_num_rows($query) > 0) {
                                            while ($timetable = mysqli_fetch_object($query)) {
                                                ?>
                            <td>
                                <p>
                                    <b>Teacher:</b> <?= get_teacher_name($timetable->item_id); ?><br>
                                    <b>Subject:</b> <?= get_subject_name($timetable->item_id); ?>
                                </p>
                            </td>
                            <?php
                                            }
                                        } else { ?>
                            <td>Unscheduled</td>
                            <?php }
                                    } ?>
                        </tr>
                        <?php
                            } else {
                                ?>
                        <tr>
                            <td colspan="8">Invalid Timing</td>
                        </tr>
                        <?php
                            }
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<?php include('footer.php'); ?>