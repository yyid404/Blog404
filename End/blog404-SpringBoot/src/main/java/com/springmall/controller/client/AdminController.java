package com.springmall.controller.client;

import com.springmall.bean.AdminInfo;
import com.springmall.bean.BaseReqVo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("client/admin")
public class AdminController {

    @RequestMapping("adminInfo")
    public BaseReqVo getAdminInfoByAdminId(){
        BaseReqVo<Object> baseReqVo = new BaseReqVo<>();
        AdminInfo adminInfo = new AdminInfo("鱼","404 Not Found","https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg");
        baseReqVo.setData(adminInfo);
        baseReqVo.setErrmsg("成功");
        baseReqVo.setErrno(0);
        return baseReqVo;
    }
}
