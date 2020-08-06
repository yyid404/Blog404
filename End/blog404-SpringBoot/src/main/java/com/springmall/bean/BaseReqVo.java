package com.springmall.bean;

import lombok.Data;

@Data
public class BaseReqVo<T> {
    T data;
    String errmsg;
    int errno;

    public BaseReqVo() {
    }

    public BaseReqVo(T data, String errmsg, int errno) {
        this.data = data;
        this.errmsg = errmsg;
        this.errno = errno;
    }

    public static BaseReqVo ok() {
        BaseReqVo baseReqVo = new BaseReqVo();
        baseReqVo.setErrmsg("成功");
        baseReqVo.setErrno(0);
        return baseReqVo;
    }
    public static BaseReqVo ok(Object data){
        BaseReqVo baseReqVo = BaseReqVo.ok();
        baseReqVo.setData(data);
        return baseReqVo;
    }

    public static BaseReqVo error(int errno, String errmsg) {
        BaseReqVo baseReqVo = new BaseReqVo();
        baseReqVo.setErrno(errno);
        baseReqVo.setErrmsg(errmsg);
        return baseReqVo;
    }
}
