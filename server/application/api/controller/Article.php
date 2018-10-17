<?php

namespace app\api\controller;

class Article extends Comm
{
    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Article');
    }

    public function index()
    {
        $status = isset($this->param['status']) ? $this->param['status'] : null;
        $page = isset($this->param['page']) ? $this->param['page'] : 1;
        $len = isset($this->param['len']) ? $this->param['len'] : 15;
        $data = [];
        $arr = [];
        if ($status) {
            $data['a.status'] = $status;
            $arr['status'] = $status;
        }
        $count = $this->model->count($data);
        if ($page > ceil($count / $len)) {
            $page = ceil($count / $len);
        }
        $ret = $this->model->getList($data, $page, $len);
        if ($ret) {
            return msg(200, $ret, null, $count);
        } else {
            return msg(204, [], $this->model->getError(), $count);
        }
    }

    public function read()
    {
        $guid = $this->param['id'];
        $ret = $this->model->getArticleByGuid($guid);
        if ($ret) {
            return msg(200, $ret);
        } else {
            return msg(100, null, $this->model->getError());
        }
    }
}
