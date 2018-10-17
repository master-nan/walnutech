<?php
namespace app\api\controller;

use think\Controller;
use think\Request;

class Comm extends Controller
{
    public function _initialize()
    {
        parent::_initialize();
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Credentials: true');
        header('Access-Control-Allow-Methods: GET, POST, PUT, DELETE, OPTIONS');
        header("Access-Control-Allow-Headers: Origin, X-Requested-With, Content-Type, Accept, sessionId, X-Requested-Token");
    }

    public function index()
    {
        echo "xxxxx";
    }
}
