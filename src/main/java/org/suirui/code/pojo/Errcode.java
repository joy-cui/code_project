package org.suirui.code.pojo;

import org.suirui.code.util.PublicUtil;

public class Errcode {
    private Integer id;

    private Integer prefix;

    private String code;

    private String reason;

    private String description;
    private String englishdec;

    private String message;

    private String accept;

    private Integer codetype;



    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPrefix() {
        return prefix;
    }

    public void setPrefix(Integer prefix) {
        this.prefix = prefix;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code == null ? "" : code.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason  = PublicUtil.trimStr(reason);
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = PublicUtil.trimStr(description);
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = PublicUtil.trimStr(message);
    }

    public String getAccept() {
        return accept;
    }

    public void setAccept(String accept) {
        this.accept  = PublicUtil.trimStr(accept);
    }

    public Integer getCodetype() {
        return codetype;
    }

    public void setCodetype(Integer codetype) {
        this.codetype = codetype;
    }

    public String getEnglishdec() {
        return englishdec;
    }

    public void setEnglishdec(String englishdec) {
        this.englishdec  = PublicUtil.trimStr(englishdec);
    }
}