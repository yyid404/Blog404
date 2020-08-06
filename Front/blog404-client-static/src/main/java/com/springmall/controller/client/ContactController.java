package com.springmall.controller.client;

import com.springmall.bean.BaseReqVo;
import com.springmall.bean.Contact;
import com.springmall.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
/*
@RequestMapping("client")
*/
public class ContactController {
    @Autowired
    ContactService contactService;

    @RequestMapping("contact")
    public BaseReqVo getContactByUserId(){
        BaseReqVo<Object> baseReqVo = new BaseReqVo<>();
        System.out.println("11111111111");
        Contact contact = contactService.getContactByUserId(1);
        baseReqVo.setData(contact);
        baseReqVo.setErrmsg("成功");
        baseReqVo.setErrno(0);
        return baseReqVo;
    }
}
