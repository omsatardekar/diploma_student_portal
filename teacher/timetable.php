<?php include('../includes/config.php'); ?>
<?php include('header.php'); ?>
<?php include('sidebar.php'); ?>


<div class="content-header">
    <div class="container-fluid">
        <div class="row mb-2">
            <div class="col-sm-6">
                <h1 class="m-0 text-dark">My Timetable</h1>
            </div>
        </div>
    </div>
</div>

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
                        $args = array(
                            'type' => 'period',
                            'status' => 'publish',
                        );
                        $periods = get_posts($args);

                        foreach ($periods as $period) {
                            $from = get_metadata($period->id, 'from')[0]->meta_value;
                            $to = get_metadata($period->id, 'to')[0]->meta_value;
                            ?>
                            <tr>
                                <td><?php echo date('h:i A', strtotime($from)) . ' - ' . date('h:i A', strtotime($to)); ?></td>
                                <?php
                                $days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];

                                foreach ($days as $day) {
                                    $query = mysqli_query($db_conn, "SELECT * FROM posts as p 
                                        INNER JOIN metadata as md ON (md.item_id = p.id) 
                                        INNER JOIN metadata as mp ON (mp.item_id = p.id) 
                                        WHERE p.type = 'timetable' AND p.status = 'publish' 
                                        AND md.meta_key = 'day_name' AND md.meta_value = '$day' 
                                        AND mp.meta_key = 'period_id' AND mp.meta_value = $period->id 
                                        AND EXISTS (SELECT 1 FROM metadata WHERE item_id = p.id AND meta_key = 'teacher_id' AND meta_value = '$teacher_id')");

                                    if (mysqli_num_rows($query) > 0) {
                                        while ($timetable = mysqli_fetch_object($query)) {
                                            ?>
                                            <td>
                                                <p>
                                                    <b>Class: </b> <?php echo get_post(['id' => get_metadata($timetable->item_id, 'class_id')[0]->meta_value])->title; ?><br>
                                                    <b>Section: </b> <?php echo get_post(['id' => get_metadata($timetable->item_id, 'section_id')[0]->meta_value])->title; ?><br>
                                                    <b>Subject: </b> <?php echo get_post(['id' => get_metadata($timetable->item_id, 'subject_id')[0]->meta_value])->title; ?><br>
                                                </p>
                                            </td>
                                        <?php }
                                    } else {
                                        echo "<td>Free</td>";
                                    }
                                }
                                ?>
                            </tr>
                        <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</section>

<?php include('footer.php'); ?>
