package org.suirui.code;

public class ErrorCodeEntry {
//    private Integer id;

    private Integer prefix;

    private String code;

    private String reason;

    private String description;

    private String englishdec;

    private String message;

    private String accept;


//    private Integer codetype;
    private Integer errorCode;

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
        this.code = code;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? "" : description.trim();
    }

    public String getEnglishdec() {
        return englishdec;
    }

    public void setEnglishdec(String englishdec) {
        this.englishdec = englishdec == null ? "" : englishdec.trim();
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message == null ? "" : message.trim();
    }

    public String getAccept() {
        return accept;
    }

    public void setAccept(String accept) {
        this.accept = accept;
    }

    public Integer getErrorCode() {
        return errorCode;
    }

    public void setErrorCode(Integer errorCode) {
        this.errorCode = errorCode;
    }

    @Override
    public String toString() {
        return "ErrorCodeEntry{" +
                "prefix=" + prefix +
                ", code='" + code + '\'' +
                ", reason='" + reason + '\'' +
                ", description='" + description + '\'' +
                ", englishdec='" + englishdec + '\'' +
                ", message='" + message + '\'' +
                ", accept='" + accept + '\'' +
                ", errorCode=" + errorCode +
                '}';
    }
}
