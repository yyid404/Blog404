package com.springmall.utils;

import com.springmall.bean.BaseReqVo;

public class ResultUtil {

    /**
     * 封装成功返回时的json对象
     * @param data
     * @return
     */
    public static BaseReqVo success(Object data) {
        BaseReqVo reqVo = new BaseReqVo();
        reqVo.setErrmsg("成功");
        reqVo.setErrno(0);
        reqVo.setData(data);
        return reqVo;
    }

    /**
     * 封装异常时返回的json对象
     * @param status
     * @param message
     * @return
     */
    public static BaseReqVo fail(int status, String message) {
        BaseReqVo reqVo = new BaseReqVo();
        reqVo.setErrno(status);
        reqVo.setErrmsg(message);
        return reqVo;
    }
}
