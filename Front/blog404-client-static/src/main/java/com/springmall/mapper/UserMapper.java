package com.springmall.mapper;

import com.springmall.bean.Contact;

public interface UserMapper {
    Contact getContactById(Integer id);
}
