<?php
/**
 *
 * @package    mahara
 * @subpackage api
 * @author     Alan McNatty <alan@catalyst.net.nz>, Catalyst IT Ltd
 * @license http://www.gnu.org/copyleft/gpl.html GNU GPL version 3 or later
 * @copyright  For copyright information on Mahara, please see the README file distributed with this software.
 *
 */

defined('INTERNAL') || die();

function mobile_api_json_reply( $arr ) {
    header('Access-Control-Allow-Origin: *');

    echo "(".json_encode($arr).")";
    perf_to_log();
    exit;
}
