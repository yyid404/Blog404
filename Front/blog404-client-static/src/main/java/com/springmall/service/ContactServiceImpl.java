package com.springmall.service;

import com.springmall.bean.Contact;
import com.springmall.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ContactServiceImpl implements ContactService {
    @Autowired
    UserMapper userMapper;

    @Override
    public Contact getContactByUserId(Integer userId){
        Contact contact=null;
        contact = userMapper.getContactById(userId);
        return contact;
    }
}
