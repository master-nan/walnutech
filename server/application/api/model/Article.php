<?php
namespace app\api\model;

use think\Model;

class Article extends Model
{
    public function getList($data = [], $page = 1, $len = 15)
    {
        $res = $this->alias('a')
                    ->join('files f', 'f.id = a.cover_id', 'LEFT')
                    ->field('a.title,a.guid,a.status,a.create_at,a.click,a.update_at,CONCAT(f.path, f.name) as cover')
                    ->page($page, $len)
                    ->where($data)
                    ->order('a.create_at desc')
                    ->select();
        if ($res) {
            $res = $res->toArray();
        }
        return $res;
    }

    public function getArticleByGuid($guid = null)
    {
        $res = $this->alias('a')
                    ->join('admin_user u', 'u.id = a.user_id', 'LEFT')
                    ->field('a.*,u.nickname')
                    ->where('a.guid', $guid)->find();
        if ($res) {
            return $res;
        } else {
            $this->error = '当前查询部门不存在';
            return false;
        }
    }

    public function count($data = [])
    {
        $ret = $this->where($data)->count();
        return $ret;
    }
}
