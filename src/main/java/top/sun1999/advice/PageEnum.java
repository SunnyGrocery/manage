package top.sun1999.advice;

/**
 * Created by SunnyGrocery on 2019/11/22 20:56
 */
public enum PageEnum {
    PAGE_NUM_NOT_FOUND(404, "Page Not Found"),
    ;
    private int code;
    private String msg;

    PageEnum(int code, String msg) {
        this.code = code;
        this.msg = msg;
    }

    public int getCode() {
        return code;
    }

    public String getMsg() {
        return msg;
    }
}
