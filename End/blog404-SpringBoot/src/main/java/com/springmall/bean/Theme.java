package com.springmall.bean;

import lombok.Data;

@Data
public class Theme {
    private String theme;

    private String url;

    public Theme(String theme, String url) {
        this.theme = theme;
        this.url = url;
    }

    public String getTheme() {
        return theme;
    }

    public void setTheme(String theme) {
        this.theme = theme;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
