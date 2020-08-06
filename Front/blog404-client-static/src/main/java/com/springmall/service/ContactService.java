package com.springmall.service;

import com.springmall.bean.Contact;

public interface ContactService {
    Contact getContactByUserId(Integer userId);
}
