package org.suirui.code.pojo;

public class Errcode {
    private Integer id;

    private Integer prefix;

    private String code;

    private String reason;

    private String description;

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
        this.code = code == null ? null : code.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? null : message.trim();
    }

    public String getAccept() {
        return accept;
    }

    public void setAccept(String accept) {
        this.accept = accept == null ? null : accept.trim();
    }

    public Integer getCodetype() {
        return codetype;
    }

    public void setCodetype(Integer codetype) {
        this.codetype = codetype;
    }

}