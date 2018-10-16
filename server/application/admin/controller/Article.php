<?php

namespace app\admin\controller;

class Article extends Comm
{
    public function _initialize()
    {
        parent::_initialize();
        $this->model = model('Article');
    }

    public function index()
    {
        if (!$this->checkRule()) {
            return msg(401, null, '您没有权限操作');
        }
        $status = isset($this->param['status']) ? $this->param['status'] : null;
        $data = [];
        if ($status) {
            $data['status'] = $status;
        }
        $ret = $this->model->getArticles($data);
        if ($ret) {
            return msg(200, $ret);
        } else {
            return msg(204, [], $this->model->getError());
        }
    }

    public function read()
    {
        $guid = $this->param['guid'];
        $ret = $this->model->getArticleByGuid($guid);
        if ($ret) {
            return msg(200, $ret);
        } else {
            return msg(100, null, $this->model->getError());
        }
    }

    public function save()
    {
        if (!$this->checkRule()) {
            return msg(401, null, '您没有权限操作');
        }
        $guid = create_guid();
        $this->param['guid'] = $guid;
        $ret = $this->model->saveArticle($this->param);
        if ($ret) {
            return msg(200, $guid, '添加成功');
        } else {
            return msg(100, null, $this->model->getError());
        }
    }

    public function update()
    {
        if (!$this->checkRule()) {
            return msg(401, null, '您没有权限操作');
        }
        if ($this->param['guid']) {
            $guid = $this->param['guid'];
            unset($this->param['guid']);
        } else {
            return msg(100, null, '参数错误');
        }
        $ret = $this->model->updateArticle($guid, $this->param);
        if ($ret) {
            return msg(200, null, '更新成功');
        } else {
            return msg(100, null, $this->model->getError());
        }
    }

    public function delete()
    {
        if (!$this->checkRule()) {
            return msg(401, null, '您没有权限操作');
        }
        if ($this->param['guid']) {
            $guid = $this->param['guid'];
        } else {
            return msg(100, null, '参数错误');
        }
        $ret = $this->model->del($guid);
        if ($ret) {
            return msg(200, null, '删除成功');
        } else {
            return msg(100, null, $this->model->getError());
        }
    }

    public function enable()
    {
        if (isset($this->param['guid'])) {
            $guid = $this->param['guid'];
            unset($this->param['guid']);
        } else {
            return msg(100, null, '参数错误');
        }
        $ret = $this->model->updateArticle($guid, $this->param, false);
        if ($ret) {
            return msg(200, null, '操作成功');
        } else {
            return msg(100, null, $this->model->getError());
        }
    }
}
