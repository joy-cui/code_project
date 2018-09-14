// JavaScript Document


function h(){
var h=$(window).height();
var xh=h-377;
var mh;
var rh=$(".right").height();
var lh=$(".left").height();
if(lh>rh){mh=lh}
else{mh=rh}
mh=(mh>xh)?mh:xh;
$(".left").css("height",mh+"px");
$(".right").css("height",mh+"px");
$("#vertical_box").css("height",h+"px");
}
/*弹窗*/
function popOut(){
	var delUser=$(".delUser");
	var addUser=$(".addUser");
	var editUser=$(".editUser");
	var delGroup=$(".delGroup");
	var moveGrp=$(".moveGrp");
	var addGroup=$(".addGroup");
	var editGroup=$(".editGroup");
	var delServer=$(".delServer");
	var addServer=$(".addServer");
	var editServer=$(".editServer");
	var editAdmin=$(".editAdmin");
	var adminLog=$(".adminLog");
	var delCom=$(".delCom");
	var addCom=$(".addCom");
	var editCom=$(".editCom");
	var delDevice=$(".delDevice");
	var addDevice=$(".addDevice");
	var editDevice=$(".editDevice");
	var editMeetingN=$(".editMeetingN");
	var delMeeting=$(".delMeeting");
	var downloadMeeting=$(".downloadMeeting");
	var meetingLog=$(".meetingLog");
	var moreMeetingU=$(".moreMeetingU");
	var shareMeeting=$(".shareMeeting");
	var editAuthority=$(".editAuthority");
	var authority=$(".authority");
	delUser.click(function(){$("#vertical_box").css("display","table");$("#delUser").fadeIn();event.preventDefault();})
	addUser.click(function(){$("#vertical_box").css("display","table");$("#addUser").fadeIn();event.preventDefault();})
	editUser.click(function(){$("#vertical_box").css("display","table");$("#editUser").fadeIn();event.preventDefault();})
	delGroup.click(function(){$("#vertical_box").css("display","table");$("#delGroup").fadeIn();event.preventDefault();})
	editGroup.click(function(){$("#vertical_box").css("display","table");$("#editGroup").fadeIn();event.preventDefault();})
	addGroup.click(function(){$("#vertical_box").css("display","table");$("#addGroup").fadeIn();event.preventDefault();})
	moveGrp.click(function(){$("#vertical_box").css("display","table");$("#moveGrp").fadeIn();event.preventDefault();})
	delServer.click(function(){$("#vertical_box").css("display","table");$("#delServer").fadeIn();event.preventDefault();})
	addServer.click(function(){$("#vertical_box").css("display","table");$("#addServer").fadeIn();event.preventDefault();})
	editServer.click(function(){$("#vertical_box").css("display","table");$("#editServer").fadeIn();event.preventDefault();})
	editAdmin.click(function(){$("#vertical_box").css("display","table");$("#editAdmin").fadeIn();event.preventDefault();})
	adminLog.click(function(){$("#vertical_box").css("display","table");$("#loginRecord").fadeIn();event.preventDefault();})
	delCom.click(function(){$("#vertical_box").css("display","table");$("#delCom").fadeIn();event.preventDefault();})
	addCom.click(function(){$("#vertical_box").css("display","table");$("#addCom").fadeIn();event.preventDefault();})
	editCom.click(function(){$("#vertical_box").css("display","table");$("#editCom").fadeIn();event.preventDefault();})
	delDevice.click(function(){$("#vertical_box").css("display","table");$("#delDevice").fadeIn();event.preventDefault();})
	addDevice.click(function(){$("#vertical_box").css("display","table");$("#addDevice").fadeIn();event.preventDefault();})
	editDevice.click(function(){$("#vertical_box").css("display","table");$("#editDevice").fadeIn();event.preventDefault();})
	// editMeetingN.click(function(){$("#vertical_box").css("display","table");$("#editMeetingN").fadeIn();event.preventDefault();})
	// delMeeting.click(function(){
	// 	$("#vertical_box").css("display","table");
	// 	$("#delMeeting").fadeIn();
	// 	event.preventDefault();
	// })
	downloadMeeting.click(function(){$("#vertical_box").css("display","table");$("#downloadMeeting").fadeIn();event.preventDefault();})
	meetingLog.click(function(){$("#vertical_box").css("display","table");$("#meetingLog").fadeIn();event.preventDefault();})
	moreMeetingU.click(function(){$("#vertical_box").css("display","table");$(".popOut").hide();$("#moreMeetingU").fadeIn();event.preventDefault();})
	shareMeeting.click(
		function(){$("#vertical_box").css("display","table");
		$(".popOut").hide();
		$("#shareMeeting").fadeIn();
		event.preventDefault();
            setInsertPrefix();
		})
	editAuthority.click(function(){$("#vertical_box").css("display","table");$(".popOut").hide();$("#editAuthority").fadeIn();event.preventDefault();})
	authority.click(function(){$("#vertical_box").css("display","table");$(".popOut").hide();$("#authority").fadeIn();event.preventDefault();})

}

//
//
//
function closePop(){
	$(".closePop").click(function(){
		$("#vertical_box").css("display","none");$(".popOut").hide();
	});
}
function cancelPop() {
    $(".cancel").click(function(){
        $("#vertical_box").css("display","none");$(".popOut").hide();
    });
}
function dispop() {
    $("#vertical_box").css("display","none");$(".popOut").hide();
}


// /*下拉列表选择*/
// function selectOpt(){
// 	$(".selectIpt").click(function(){
// 		$(this).next(".selectOpt").slideDown();
//
// 	});
// 	$(".selectOpt li").mouseover(function(){
// 		$(this).css({"color":"#fff","background":"#4772b7"});
// 	});
// 	$(".selectOpt li").mouseout(function(){
// 		$(this).css({"color":"#2b3953","background":"#fff"});
// 	});
// 	$(".selectOpt li").click(function(){
// 		var v=$(this).html()
// 		$(this).parent().parent(".selectOpt").prev(".selectIpt").focus()
// 		$(this).parent().parent(".selectOpt").slideUp()
// 		$(this).parent().parent(".selectOpt").prev(".selectIpt").val(v)
// 	});
// 	$(".mSelectIpt").click(function(){
// 		$(this).next(".mSelectOpt").slideDown();
//
// 	});
// 	$(".mSelectOpt li").mouseover(function(){
// 		$(this).css({"background":"#f1f4f9"});
// 	});
// 	$(".mSelectOpt li").mouseout(function(){
// 		$(this).css({"background":""});
// 	});
// 	$(".mSelectOpt li").click(function(){
// 		var v=$(this).html()
// 		$(this).parent().parent(".mSelectOpt").prev(".mSelectIpt").focus()
// 		$(this).parent().parent(".mSelectOpt").slideUp()
// 		$(this).parent().parent(".mSelectOpt").prev(".mSelectIpt").val(v)
// 	});
//
// 	$(".tSelectIpt").click(function(){
// 		$(this).next(".tSelectOpt").slideDown();
//
// 	});
// 	$(".tSelectOpt li").mouseover(function(){
// 		$(this).css({"background":"#f1f4f9"});
// 	});
// 	$(".tSelectOpt li").mouseout(function(){
// 		$(this).css({"background":""});
// 	});
// 	$(".tSelectOpt li").click(function(){
// 		var v=$(this).html()
// 		$(this).parent().parent(".tSelectOpt").prev(".tSelectIpt").focus()
// 		$(this).parent().parent(".tSelectOpt").slideUp()
// 		$(this).parent().parent(".tSelectOpt").prev(".tSelectIpt").val(v)
// 	});
// }
// /*复选框选择*/
// function checked(){
// 	$(".uncheck:not('.checkAll')").click(function(){
// 		$(this).toggleClass("checked");
// 	});
// 	$(".checkAll").click(function(){
// 		if($(this).hasClass("checked")){
// 			$(this).removeClass("checked")
// 			$(this).parent().parent().parent().parent().children().children().children().children(".uncheck").removeClass("checked")
// 		}else{
// 			$(this).addClass("checked")
// 			$(this).parent().parent().parent().parent().children().children().children().children(".uncheck").addClass("checked")
// 		}
//
// 	})
// }
/*左侧导航*/
function leftNav(){
	// $(".left h3").click(function(){
	// 	if($(this).next().is("ul")){
	// 		$(this).next("ul").slideToggle();
	// 		$(this).toggleClass("openCom");
	// 		//event.preventDefault();
	// 	}
	// });
	// $(".comTeam li").click(function(){
	// 	$(".comTeam li").removeClass("curTeam");
	// 	$(this).addClass("curTeam");
	// 	//event.preventDefault();
	// });
	$(".nav li").click(function(){
        $(".nav li").removeClass("cur");
        $(this).addClass("cur");
    });
}
/*分享用户选择*/
// function selectUser(){
// 	$(".userCom h3").click(function(){
// 		if($(this).next().is("ul")){
// 			$(this).next("ul").slideToggle();
// 			event.preventDefault();
// 		}
// 	});
// 	$(".userCom li").click(function(){
// 		$(".userCom li").removeClass("curTeam");
// 		$(this).addClass("curTeam");
// 		event.preventDefault();
// 	});
// 	$(".userList li a").click(function(){
// 		var h=$(this).html();
// 		var c;
// 		var a=new Array();
// 		for(var i=0;i<$(".selectUser li").length;i++){
// 			a[i]=$(".selectUser li").eq(i).html();
// 			if(a[i]==h){c=0}
// 		}
// 		if(c==0){alert("已选")}else{$(".selectUser ul").append("<li>"+h+"</li>");$(".selectUser li").click(function(){$(this).remove();});}
// 		event.preventDefault();
// 	});
// }

/*表格行移入效果*/
function tableH(){
	$(".tableSty1 tr").mouseover(function(){
		if($(this).index()==0){
			return;
		}else{
		$(this).addClass("hover");
		}
	});
	$(".tableSty1 tr").mouseout(function(){
		$(this).removeClass("hover");
	});
}



$(document).ready(function(e) {
	window.onresize=h;
	h();

	popOut();
	closePop();
	// selectOpt();
	// checked();
	leftNav();
	tableH();
    cancelPop();
	// selectUser();
});