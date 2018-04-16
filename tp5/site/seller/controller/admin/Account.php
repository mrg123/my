<?php
// +----------------------------------------------------------------------
// | ETshop [ Rapid development framework for Cross border Mall ]
// +----------------------------------------------------------------------
// 版权所有 @ 深圳市润土信息技术有限公司 禁止任何企业和个人对程序代码以任何形式任何目的再发布。
// +----------------------------------------------------------------------
// | Copyright (c) 2015~2017 http://www.runtuer.com All rights reserved.
// +----------------------------------------------------------------------
// | Author: theseaer <theseaer@qq.com>
// +----------------------------------------------------------------------
// | 商定账号管理  Version 1.0  2016/3/13
// +----------------------------------------------------------------------
namespace app\seller\controller\admin;

use think\Request;
use app\admin\controller\Admin;

class Account extends Admin
{
    public function _initialize()
    {
        parent::_initialize(); // TODO: Change the autogenerated stub
        $this->conDb = 'Account';
        //店铺类型
        $option = \app\seller\service\Shopcat::catList();
        $this->assign('option', $option);
        
        //仓库列表
        $warehouse = \app\bcwareexp\model\Crossware::column('name', 'code');
        $this->assign('warehouse', $warehouse);
    }
    
    /**
     * @Mark:商户(账户)列表
     * @return mixed
     * @Author: yang <502204678@qq.com>
     * @Version 2017/7/3
     */
    public function index()
    {
        $index_map = ['is_del' => 0];
        
        //查询条件
        $param      = $this->request->param();
        $name       = isset($param['name']) ? trim($param['name']) : '';     //关键字
        $start_time = isset($param['start_time']) ? trim($param['start_time']) : ''; //开始时间
        $end_time   = isset($param['end_time']) ? trim($param['end_time']) : '';     //结束时间
        
        $name ? $index_map['seller_name|true_name|bank_name|mobile'] = ['like', '%' . $name . '%'] : '';
        //按时间查询
        $start_time ? $index_map['create_time'] = ['>=', strtotime($start_time)] : '';
        $end_time ? $index_map['create_time'] = ['<=', strtotime($end_time)] : '';
        
        //同时具备时
        if ($start_time && $end_time) {
            $index_map['create_time'] = [
                ['>=', strtotime($start_time)],
                ['<=', strtotime($end_time)],
                'AND'
            ];
        }
        
        $list = \app\seller\service\Account::sellerList($index_map);
        $this->assign('list', $list);
        $this->assign("meta_title", lang('Shopsuser'));
        return $this->fetch();
    }
    
    /**
     * 覆盖父类方法
     * @Mark:添加商户
     * @Author yang <502204678@qq.com>
     * @Version 2017/5/22
     * @return mixed
     */
    public function savedata()
    {
        $data = $this->request->param();
        if (!isset($data['status'])) $data['status'] = 0;
        if (!isset($data[$this->pk])) {
            unset($data['repassword']);
            $re = \app\seller\service\Account::addSeller($data);
        } else {
            $re = \app\seller\service\Account::editSeller($data);
        }
        if ($re['code'] == 1) {
            //if (!isset($data[$this->pk])) {
            //    action_log('add', $this->conDb,$re, UID);
            //} else {
            //    action_log('edit', $this->conDb,$data[$this->pk], UID);
            //}
            $this->success(lang('successful'), $this->jumpUrl);
        } else {
            return json($re);
        }
    }
    
    /**
     * @Mark:删除商户（软删）
     * @Author yang <502204678@qq.com>
     * @Version 2017/5/22
     * @return mixed
     */
    public function delete()
    {
        $param = $this->request->param();
        $id    = (array)$param['ids'];
        //查询该商户所关联的商品、店铺以及子账户
        $re = \app\seller\service\Account::delSeller($id);
        if ($re['code']) {
            $this->success(lang('successful'), $this->jumpUrl);
        } else {
            return json($re);
        }
    }
    
    /**
     * @Mark:修改密码
     * @return bool|mixed|string|\think\response\Json
     * @Author: yang <502204678@qq.com>
     * @Version 2017/7/3
     */
    public function password()
    {
        $param = $this->request->param();
        $id    = $param['ids'];                             //用户id
        if ($this->request->isAjax()) {
            $data = [
                'id'       => $id,                //用户id
                'password'   => $param['password'],        //新密码
            ];
            if ($param['password'] !== $param['repassword']) return json(['code' => 0, 'msg' => lang('Password_error')]);
            $re = \app\seller\service\Account::editPwd($data);
            if ($re['code']) {
                $this->success(lang('successful'), $this->jumpUrl);
            } else {
                return json($re);
            }
        } else {
            $data = \app\seller\model\Account::where('id', $id)->value('nickname');
            $this->assign('data', $data);
            $this->assign('ids', $id);
            return $this->fetch();
        }
    }
    
    
}