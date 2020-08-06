package com.springmall.bean;

import lombok.Data;

@Data
public class ContactInfo {
    private String email;

    private String github;

    private String wechat;

    private String instagram;

    private String sina;

    public ContactInfo(String email, String github, String wechat, String instagram, String sina) {
        this.email = email;
        this.github = github;
        this.wechat = wechat;
        this.instagram = instagram;
        this.sina = sina;
    }

    public String getEmail() {
        return email;
    }

    public String getGithub() {
        return github;
    }

    public String getWechat() {
        return wechat;
    }

    public String getInstagram() {
        return instagram;
    }

    public String getSina() {
        return sina;
    }
}
