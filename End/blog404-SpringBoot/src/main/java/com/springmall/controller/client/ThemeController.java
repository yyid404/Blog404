package com.springmall.controller.client;

import com.springmall.bean.BaseReqVo;
import com.springmall.bean.Theme;
import com.springmall.bean.ThemeInfo;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("client/theme")
public class ThemeController {

    @RequestMapping("themeInfo")
    public BaseReqVo getThemeByAdminId(){
        BaseReqVo<Object> baseReqVo = new BaseReqVo<>();
        ThemeInfo themeInfo = new ThemeInfo(
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-dark-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-light-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-photograph-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-music-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-movie-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-code-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-reading-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-photograph-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-music-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-movie-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-code-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-reading-1.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg",
        "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-3.jpg"
        );
        baseReqVo.setData(themeInfo);
        baseReqVo.setErrmsg("成功");
        baseReqVo.setErrno(0);
        return baseReqVo;
    }
}
