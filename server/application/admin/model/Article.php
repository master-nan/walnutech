<?php

namespace app\admin\model;

use think\Model;

class Article extends Model
{
    public function getArticles($data = [])
    {
        $res = $this->where($data)->select();
        if ($res) {
            $res = $res->toArray();
        }
        return $res;
    }

    public function getArticleByGuid($guid = null)
    {
        $res = $this->where('guid', $guid)->find();
        if ($res) {
            return $res;
        } else {
            $this->error = '当前查询部门不存在';
            return false;
        }
    }

    public function saveArticle($param = [])
    {
        $validate = validate($this->name);
        if (!$validate->check($param)) {
            $this->error = $validate->getError();
            return false;
        }
        try {
            $this->data($param)->allowField(true)->save();
            return true;
        } catch (\Exception $e) {
            $this->error = '添加失败';
            return false;
        }
    }

    public function updateArticle($guid = null, $param = [], $flag = true)
    {
        if ($flag) {
            $validate = validate($this->name);
            if (!$validate->check($param)) {
                $this->error = $validate->getError();
                return false;
            }
        }
        try {
            $this->allowField(true)->save($param, ['guid' => $guid]);
            return true;
        } catch (\Exception $e) {
            $this->error = '更新失败';
            return false;
        }
    }

    public function del($guid = 0)
    {
        try {
            $res = $this->where('guid', $guid)->delete();
            if ($res) {
                return $res;
            } else {
                $this->error = '删除失败';
                return false;
            }
        } catch (\Exception $e) {
            $this->error = '删除失败';
            return false;
        }
    }
}
