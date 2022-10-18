<div id="wpbody" role="main">
    <div id="wpbody-content">
        <div class="wrap">
            <h1>Upload CSV File</h1>
            <div class="col-md-12" id="importFrm">
                <?php $path = get_template_directory_uri() . '/dummy.csv'; ?>
                <a class="button button-primary" data="1" href="<?php echo  $path; ?>" download="dummy.csv">Download Sample File</a>
            </div>
            <div class="card">
                <h2 class="title">Upload File</h2>
                <!-- CSV file upload form -->
                <div class="col-md-12" id="importFrm">
                    <form action="" method="post" enctype="multipart/form-data">
                        <input type="file" name="file" id="file" onchange="return fileValidation()" />
                        <input type="submit" name="submit" id="submit" class="button button-primary" value="Import csv">
                    </form>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div><!-- wpbody-content -->
    <div class="clear"></div>
</div>

<script>
    function fileValidation() {
        var fileInput = document.getElementById('file');
        var filePath = fileInput.value;
        var allowedExtensions = /(\.csv)$/i;
        if (!allowedExtensions.exec(filePath)) {
            alert('Please upload file having extensions .csv only.');
            fileInput.value = '';
            return false;
        }
    }
</script>

<?php

if (isset($_POST["submit"])) {

    $filename = $_FILES["file"]["tmp_name"];
    if ($_FILES["file"]["size"] > 0) {
        $file = fopen($filename, "r");
        $getData = fgetcsv($file, 10000, ",");
        while (($getData = fgetcsv($file, 10000, ",")) !== FALSE) {
            $num = count($getData);
            global $wpdb;
            $table = $wpdb->prefix . 'bins';
            $get_all_data = $wpdb->get_results("SELECT * FROM $table");
            $post_code = [];
            foreach ($get_all_data as $key => $value) {
                $post_code[] = $value->suburb;
            }
            // echo "<pre>";
            // print_r($getData);
            // die;
            if (in_array($getData[0], $post_code)) {
                $data = array(
                    'suburb'          => $getData[0],
                    'post_code'        => $getData[1],
                    'refuse_site'     => $getData[2],
                    'skip_bin1_price' => $getData[3],
                    'skip_bin2_price' => $getData[4],
                    'updated_at'      => current_time('Y-m-d h:i:s'),
                    'status'          => 1,
                );
                $where = array('suburb' => $getData[0]);

                $wpdb->update($table, $data, $where);
                if (!$wpdb->last_error) {
                    $succ = "Data has been Successfully Udated..";
                }
            } else {
                $data = array(
                    'suburb'          => $getData[0],
                    'post_code'        => $getData[1],
                    'refuse_site'     => $getData[2],
                    'skip_bin1_price' => $getData[3],
                    'skip_bin2_price' => $getData[4],
                    'updated_at'      => current_time('Y-m-d h:i:s'),
                    'status'          => 1,
                );
                $wpdb->insert($table, $data);
                if (!$wpdb->last_error) {
                    $succ = "Data has been Successfully Inserted..";
                }
            }
        }
        ?><div class="updated notice is-dismissible">
            <p><?php echo $succ; ?></p>
        </div><?

        fclose($file);
    }
}
