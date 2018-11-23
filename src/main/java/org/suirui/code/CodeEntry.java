package org.suirui.code;

import org.suirui.code.pojo.Errcode;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;
import java.io.Serializable;
import java.util.List;
@XmlAccessorType(XmlAccessType.FIELD)
// XML文件中的根标识
@XmlRootElement(name = "errCodes")
// 控制JAXB 绑定类中属性和字段的排序
@XmlType(propOrder = {
        "errCode"
})
public class CodeEntry implements Serializable {
    private static final long serialVersionUID = 1L;
    private List<ErrorCodeEntry> errCode;

    public void setErrcodes(List<ErrorCodeEntry> errCodes) {
        this.errCode = errCodes;
    }

    public List<ErrorCodeEntry> getErrcodes() {
        return errCode;
    }

}
