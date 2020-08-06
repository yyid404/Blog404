package com.springmall.bean;

import lombok.Data;

@Data
public class ThemeInfo {
    private String cover_dark;
    private String cover_light;
    private String banner_photograph;
    private String banner_music;
    private String banner_movie;
    private String banner_code;
    private String banner_reading;
    private String banner_daily;
    private String banner_contact;
    private String background_photograph;
    private String background_music;
    private String background_movie;
    private String background_code;
    private String background_reading;
    private String background_daily;
    private String background_contact;

    public ThemeInfo(String cover_dark, String cover_light, String banner_photograph, String banner_music, String banner_movie, String banner_code, String banner_reading, String banner_daily, String banner_contact, String background_photograph, String background_music, String background_movie, String background_code, String background_reading, String background_daily, String background_contact) {
        this.cover_dark = cover_dark;
        this.cover_light = cover_light;
        this.banner_photograph = banner_photograph;
        this.banner_music = banner_music;
        this.banner_movie = banner_movie;
        this.banner_code = banner_code;
        this.banner_reading = banner_reading;
        this.banner_daily = banner_daily;
        this.banner_contact = banner_contact;
        this.background_photograph = background_photograph;
        this.background_music = background_music;
        this.background_movie = background_movie;
        this.background_code = background_code;
        this.background_reading = background_reading;
        this.background_daily = background_daily;
        this.background_contact = background_contact;
    }

    public String getCover_dark() {
        return cover_dark;
    }

    public void setCover_dark(String cover_dark) {
        this.cover_dark = cover_dark;
    }

    public String getCover_light() {
        return cover_light;
    }

    public void setCover_light(String cover_light) {
        this.cover_light = cover_light;
    }

    public String getBanner_photograph() {
        return banner_photograph;
    }

    public void setBanner_photograph(String banner_photograph) {
        this.banner_photograph = banner_photograph;
    }

    public String getBanner_music() {
        return banner_music;
    }

    public void setBanner_music(String banner_music) {
        this.banner_music = banner_music;
    }

    public String getBanner_movie() {
        return banner_movie;
    }

    public void setBanner_movie(String banner_movie) {
        this.banner_movie = banner_movie;
    }

    public String getBanner_code() {
        return banner_code;
    }

    public void setBanner_code(String banner_code) {
        this.banner_code = banner_code;
    }

    public String getBanner_reading() {
        return banner_reading;
    }

    public void setBanner_reading(String banner_reading) {
        this.banner_reading = banner_reading;
    }

    public String getBanner_daily() {
        return banner_daily;
    }

    public void setBanner_daily(String banner_daily) {
        this.banner_daily = banner_daily;
    }

    public String getBanner_contact() {
        return banner_contact;
    }

    public void setBanner_contact(String banner_contact) {
        this.banner_contact = banner_contact;
    }

    public String getBackground_photograph() {
        return background_photograph;
    }

    public void setBackground_photograph(String background_photograph) {
        this.background_photograph = background_photograph;
    }

    public String getBackground_music() {
        return background_music;
    }

    public void setBackground_music(String background_music) {
        this.background_music = background_music;
    }

    public String getBackground_movie() {
        return background_movie;
    }

    public void setBackground_movie(String background_movie) {
        this.background_movie = background_movie;
    }

    public String getBackground_code() {
        return background_code;
    }

    public void setBackground_code(String background_code) {
        this.background_code = background_code;
    }

    public String getBackground_reading() {
        return background_reading;
    }

    public void setBackground_reading(String background_reading) {
        this.background_reading = background_reading;
    }

    public String getBackground_daily() {
        return background_daily;
    }

    public void setBackground_daily(String background_daily) {
        this.background_daily = background_daily;
    }

    public String getBackground_contact() {
        return background_contact;
    }

    public void setBackground_contact(String background_contact) {
        this.background_contact = background_contact;
    }
}
