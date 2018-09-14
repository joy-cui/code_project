var suc="success";
var fai="failer";

//跳转
function forward(codetype) {

    //页面显示
    var jsonData={};
    jsonData.codetype=codetype;
    $.ajax({
        url: "/code",        //后台url
        data:jsonData,
        type: "POST",
        success: function (data) {      //成功，回调函数
            if(data.status=="success"){
                //刷新列表
                $("#codetype").val(data.codetype);
                $("#prefix").val(data.prefix);
                refreshList(data.errcodeList,data.codetype);
            }else{
                alert(data.status);
            }
        },
        error: function (XMLResponse) {          //失败，回调函数
            alert(XMLResponse.status);
        }
    });
}
//搜索
function searchAjax() {
    var searchTxt=$("#searchTxt").val();
    var codetype=$("#codetype").val();
    var jsonData={};
    jsonData.codetype=codetype;
    jsonData.searchTxt=searchTxt;
    $.ajax({
        url: "/search",        //后台url
        data:jsonData,
        type: "POST",
        success: function (data) {      //成功，回调函数
            if(data.status=="success"){
                //刷新列表
                refreshList(data.errcodeList,data.codetype);
            }else{
                alert(data.status);
            }
        },
        error: function (XMLResponse) {          //失败，回调函数
            alert(XMLResponse.status);
        }
    });
}


//导出文件
function exportToJson(isJson) {
    var codetype=$("#codetype").val();
    var jsonData={};
    jsonData.codetype=codetype;
    var toUrl="";
    if(isJson){
        toUrl="/code/toJson";
    }else{
        toUrl="/code/toXml";
    }
    $.ajax({
        url: toUrl,        //后台url
        data:jsonData,
        type: "POST",
        success: function (data) {      //成功，回调函数
            if(data.status=="success"){
                location.href="/downLoad?fileName="+data.fileName;
            }else{
                alert("导出文件出错了");
            }
            $("#vertical_box").css("display","none");
            $(".popOut").hide();
        },
        error: function (XMLResponse) {          //失败，回调函数
            alert(XMLResponse.status);
        }
    });
}

//删除弹框
function  deleteByCodeId(id) {
       $("#deleteId").val(id);
       $("#vertical_box").css("display","table");
       $("#delMeeting").fadeIn();
       event.preventDefault();
}

/**
 * 删除错误编码
 * @param codetype
 */
function deleteCode() {
    var codetype=$("#codetype").val();
    var id=$("#deleteId").val();
    $("#vertical_box").css("display","none");
    $(".popOut").hide();

    var jsonData={};
    jsonData.codetype=codetype;
    jsonData.id=id;
    $.ajax({
        url: "/deleteCode",        //后台url
        data:jsonData,
        type: "POST",
        success: function (data) {      //成功，回调函数
            if(data.status==suc){
                // alert("成功"+JSON.stringify(data.errcodeList));
                //刷新列表
                refreshList(data.errcodeList,data.codetype);
            }else{
                alert("失败"+data.status);
            }

        },
        error: function (XMLResponse) {          //失败，回调函数
            alert(XMLResponse.status);
        }
    });
}
//获取编辑对象，并显示界面
function editErrorCode(id) {
    var codetype=$("#codetype").val();
    var jsonData={};
    jsonData.codetype=codetype;
    jsonData.id=id;
    $.ajax({
        url: "/findById",
        data:jsonData,
        type: "POST",
        success: function (data) {
            if(data.status==suc){
                //errorCodeObj
                editUI(data.errorCodeObj,data.codetype);
            }else{
                alert("失败"+data.status);
            }

        },
        error: function (XMLResponse) {          //失败，回调函数
            alert(XMLResponse.status);
        }
    });

}


/**
 * ajax刷新列表
 * @param codes
 * @param codetype
 */
function refreshList(codes,codetype){

        $('#errcodeListId').empty(); //清空resText里面的所有内容
        var html = ' <table width="100%" border="0" cellspacing="0" cellpadding="0" class="tableSty3">\n' +
            '<tr>\n' +
            '<th align="center">序号</th>\n' +
            '<th align="center">错误编码</th>\n' +
            '<th align="center">原因</th>\n' +
            '<th align="center">接收端</th>\n' +
            '<th align="center">简单描述</th>\n' +
            '<th align="center">产品描述</th>\n' +
            '<th align="center">操作 </th>\n' +
            '</tr>';
            if(codes.length>0){
                $.each(codes, function(commentIndex, comment){
                    commentIndex=commentIndex+1;
                    html += '<tr>'+
                        '<td align="center">'+commentIndex+'</td>'+
                        '<td align="center">'+comment['code']+'</td>'+
                        '<td align="center">'+comment['reason']+'</td>'+
                        '<td align="center">'+comment['accept']+'</td>'+
                        '<td align="center">'+comment['description']+'</td>'+
                        '<td align="center">'+comment['message']+'</td>'+
                        '<td align="center" class="meetingSet">\n' +
                        '<a href="#" class="delMeeting" onclick="deleteByCodeId('+comment['id']+')">删除</a>'+
                        '<a href="#" class="editMeetingN" onclick="editErrorCode('+comment['id']+')">编辑</a>'+
                        ' </td>'+
                        '</tr>';
                });
            }
        $('#errcodeListId').html(html);
}
//编辑显示
function editUI(errCode) {
    $('#editPrefix').attr("disabled");
    var codetype=$("#codetype").val();
    $("#editCodeType").val(codetype);
    $("#editid").val(errCode.id);
    $("#editPrefix").val(errCode.prefix);
    $("#editcode").val(errCode.code);
    $("#editreason").val(errCode.reason);
    $("#editaccept").val(errCode.accept);
    $("#editdescription").val(errCode.description);
    $("#editmessage").val(errCode.message);
    $("#vertical_box").css("display","table");
    $("#editMeetingN").fadeIn();
    event.preventDefault();
}



//提交编辑表单
    function editSubmit() {
        $('#editPrefix').removeAttr("disabled");
        $.ajax({
            type: "POST",//方法类型
            url: "/editCode" ,//url
            data: $('#editCodeForm').serialize(),
            success: function (data) {
                if(data.status==suc){
                    //编辑成功
                    dispop();
                    //刷新列表
                    refreshList(data.errcodeList,data.codetype);

                }else{
                    alert(data.status)
                }

            },
            error : function() {
                alert("异常！");
            }
        });
    }

    function setInsertPrefix(){
        var prefix=$("#prefix").val();
        $("#insertPrefix").val(prefix);
        $('#insertPrefix').attr("disabled");
    }
    //新增
    function insertSubmit() {
        var codetype=$("#codetype").val();
        $("#insertCodeType").val(codetype);
        $('#insertPrefix').removeAttr("disabled");
        $.ajax({
            type: "POST",//方法类型
            url: "/insert" ,//url
            data: $('#insertCodeForm').serialize(),
            success: function (data) {
                if(data.status==suc){
                    //插入成功
                    document.getElementById("insertCodeForm").reset();
                    dispop();

                    //刷新列表
                    refreshList(data.errcodeList,data.codetype);

                }else{
                    alert(data.status)
                }

            },
            error : function(xhr,errorText,errorType) {
                alert("异常！"+xhr.status + ":"+errorText+" : "+errorType);

            }
        });
    }