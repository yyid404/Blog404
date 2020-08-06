package com.springmall.bean;

import lombok.Data;

@Data
public class AdminInfo {
    private String nickname;

    private String introduce;

    private String avatar;

    public AdminInfo(String nickname, String introduce, String avatar) {
        this.nickname = nickname;
        this.introduce = introduce;
        this.avatar = avatar;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }
}
