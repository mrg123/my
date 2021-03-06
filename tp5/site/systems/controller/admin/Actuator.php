<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006~2016 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: theseaer <theseaer@qq.com>
// +----------------------------------------------------------------------
// | Log.php  Version 2017/6/21
// +----------------------------------------------------------------------
namespace app\systems\controller\admin;

use app\admin\controller\Admin;

class Actuator extends Admin
{
    /**
     * @Mark:调度日志
     * @return mixed
     * @Author: theseaer <theseaer@qq.com>
     * @Version 2017/6/21
     */
    public function index()
    {
        $this->assign('meta_title', lang('Actuator'));
        return $this->fetch();
    }

}