// Custom CSV file Upload
function wpdocs_register_my_custom_menu_page1()
{
	add_menu_page(
		__('Custom Menu Title', 'textdomain'),
		'Upload CSV', /*menu title*/
		'manage_options', /*roles and capabiliyt needed*/
		'upload_csv',
		'my_custom_menu_page', /*replace with your own function*/
		'dashicons-media-spreadsheet', // Icon
		1000 // Menu Position
	);
}
add_action('admin_menu', 'wpdocs_register_my_custom_menu_page1');

/**
 * Display a custom menu page
 */
function my_custom_menu_page()
{
	require locate_template('csv.php');
}
