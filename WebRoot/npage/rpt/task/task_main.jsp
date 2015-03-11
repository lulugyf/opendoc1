<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/npage/include/public_title_name.jsp" %>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>  
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>任务管理</title>
<link rel="stylesheet" type="text/css" href="style/conf_style.css"/>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/menu_min.js"></script>
<script>  
//加载时适应浏览器高度
$(document).ready(function() {
    //模块尺寸  
	$('.pz_menu').css('height', $(window).height() - 141); 
	$('.pz_cont_wiap100').css('height', $(window).height() - 10); 
})
//改变窗体大小时适应浏览器高度
$(window).resize(function() {
    //模块尺寸
	$('.pz_menu').css('height', $(window).height() - 141);
	$('.pz_cont_wiap100').css('height', $(window).height() - 250);
});
</script>
<script type="text/javascript">
$(document).ready(function (){ 
  
  $(".pz_menu_cont ul li").menu();
  
}); 
</script>
</head>
<body>
<form name="srchFrm" target="ifm" method="post">
		<input type=hidden name="opCode" id="opCode" value="<%=opCode%>">
		<input type=hidden name="proId" id="proId" value="<%=proId%>">
		<input type=hidden name="pageNum" id="pageNum" value="1">
<div class="bb_right_cont1">
      <div height="12"><table><tr height="12"></tr></table> </div>
      <table width="100%" border="0" cellspacing="2" cellpadding="0"  bgcolor="#FFFFFF">
         <tr>
          <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">作业名称：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:10px;"><input type="text" name="job_name" id="job_name" v_maxlength="64" v_minlength="0" class="anc"/></td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">对应数据库：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
              <select name="h_order_id" id="h_order_id" style="width:186px;height:24px">
								<option value ="">--请选择--</option>
								<c:forEach items="${DBConnList }" var="item">
					   				<option value="${item.order_id }">${item.serv_ip }</option>
					   			</c:forEach>
								
			  </select>		
          </td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">可否运行：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
							<select name="job_enable" id="job_enable" style="width:186px;height:24px">
								<option value ="">--请选择--</option>
						    	<option value ="0">不可运行</option>
						    	<option value ="1">可运行</option>
						    </select>	
          </td>
        </tr>
		<tr>
          <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">定时方式：</td>
          <td width="10%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
							<select name="job_run_mode" id="job_run_mode" style="width:186px;height:24px">
								<option value ="">--请选择--</option>
						    	<option value ="1">定时</option>
						    	<option value ="2">实时</option>
						    </select>
          </td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">作业类型：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
							<select name="job_mode" id="job_mode" onchange="selectRunTime(this.value);" style="width:186px;height:24px">
								<option value ="">--请选择--</option>
						    	<option value ="D">日作业</option>
						    	<option value ="M">月作业</option>
						    	<option value ="S">实时作业</option>
						    </select>	
          </td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">作业开始时间：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
							<div id="jobRunTime" style="display:none" >
							<input type="text" name="job_run_time" id="job_run_time" class="anc" onkeyup="value=value.replace(/[^\d]/g,'')" />秒</div>
							<select name="job_run_time_M" id="job_run_time_M" style="WIDTH: 20%;display:none">
								<option value ="">--</option>
								<c:forEach items="${jobRunTimeMList }" var="item">
					   				<option value="${item }">${item }日</option>
					   			</c:forEach>
						    </select>
						    <select name="job_run_time_H" id="job_run_time_H" style="WIDTH: 20%;display:none">
								<option value ="">--</option>
								<c:forEach items="${jobRunTimeHList }" var="item">
					   				<option value="${item }">${item }时</option>
					   			</c:forEach>
						    </select>
						    <select name="job_run_time_m" id="job_run_time_m" style="WIDTH: 20%;display:none">
								<option value ="">--</option>
								<c:forEach items="${jobRunTimemList }" var="item">
					   				<option value="${item }">${item }分</option>
					   			</c:forEach>
						    </select>
						    <select name="job_run_time_S" id="job_run_time_S" style="WIDTH: 20%;display:none">
								<option value ="">--</option>
								<c:forEach items="${jobRunTimemList }" var="item">
					   				<option value="${item }">${item }秒</option>
					   			</c:forEach>
						    </select>
          </td>
        </tr>
         <tr>
          <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">运行类型：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:0px;">
							<select name="job_type" id="job_type" style="width:186px;height:24px">
								<option value ="">--请选择--</option>
						    	<option value ="0">全量</option>
						    	<option value ="1">增量</option>
						    </select>	
          </td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">数据源表：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:10px;"><input type="text" name="s_tab" id="s_tab" v_maxlength="64" v_minlength="0" class="anc"/></td>
		  <td width="10%" height="32" bgcolor="#f6f6f6" align="right" style="text-indent:10px;">目的表：</td>
          <td width="22%" height="32" bgcolor="#f6f6f6" align="left" style="text-indent:10px;"><input type="text" name="d_tab" id="d_tab" v_maxlength="64" v_minlength="0" class="anc"/></td>
        </tr>
		<tr>
          <td height="32" align="center" class="blue" colspan="6">
            <input name="" type="button" class="bb_right_sub1" value="查  询" onclick="doSrchSubmit()"/>&nbsp;&nbsp;&nbsp;
            <input name="" type="button" class="bb_right_sub1" value="重  置" onclick="doReset()"/>&nbsp;&nbsp;&nbsp;
			<input name="" type="button" class="bb_right_sub1" id="add" value="新  增" onclick="addTask()"/>
			</td>
        </tr>
      </table>
      <iframe name="ifm" src="" style="width:100%;height:400px;" frameborder="0"></iframe>
    </div>
</form>
</body>
<!-- 自动补全引入js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/njs/plugins/actb/common.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/njs/plugins/actb/myactb.js"></script>
<script src="<%=request.getContextPath()%>/npage/rpt/task/task.js" type="text/javascript"></script>
<script src="<%=request.getContextPath()%>/njs/system/system.js" type="text/javascript"></script>
<script language="javascript" type="text/javascript">
/***********显示隐藏功能权限对应按钮 begin***************/
$(document).ready(function () {
    getOpersForPage();
});

var param='?';
function getOpersForPage(){
	var opersForPage = '${opersForPage}';
    if(opersForPage!='' && opersForPage!='NULL'){
        var opers = opersForPage.split(':')[1].split(';');
        for(var i=0; i<opers.length; i++){
            if(opers[i]=='1'){
                $('#add').css('display','');
            }else if(opers[i]=='2'){
                param=param+'edit=Y&';
            }else if(opers[i]=='3'){
                param=param+'del=Y&';
            }else if(opers[i]=='4'){
                param=param+'pope=Y&';
            }
        }
    }
}
/***********显示隐藏功能权限对应按钮 end***************/

//查询表单提交
function doSrchSubmit(){
	//console.log("<%=request.getContextPath()%>/tasklist.do"+param);
    document.forms['srchFrm'].action="<%=request.getContextPath()%>/tasklist.do"+param;
    document.forms['srchFrm'].submit();
}

//增加关联模块，打开弹出窗口
function addTask(){
	openDivWin("<%=request.getContextPath()%>/gotoAddTask.do?proId=<%=proId%>&opCode=<%=opCode%>","新增任务配置","800","300");
	refreshByClose();
}
//list页面弹出窗口的关闭事件执行
function refreshByClose(){
    $(".window .close:last").click(function(){
		try{
		    doSrchSubmit();
	    }catch(e){}
	});
}


</script>
</html>
