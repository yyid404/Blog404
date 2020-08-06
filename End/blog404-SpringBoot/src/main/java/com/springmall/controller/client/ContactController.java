package com.springmall.controller.client;

import com.springmall.bean.BaseReqVo;
import com.springmall.bean.ContactInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("client/contact")
public class ContactController {

    @RequestMapping("contactInfo")
    public BaseReqVo getContactByAdminId(){
        BaseReqVo<Object> baseReqVo = new BaseReqVo<>();
        ContactInfo contactInfo = new ContactInfo("yyid404@gmail.com","https://github.com/yyid404","https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-wechat-Lemon.png","https://www.instagram.com/yyid404","https://weibo.com/8oz3yy");
        baseReqVo.setData(contactInfo);
        baseReqVo.setErrmsg("成功");
        baseReqVo.setErrno(0);
        return baseReqVo;
    }
}
