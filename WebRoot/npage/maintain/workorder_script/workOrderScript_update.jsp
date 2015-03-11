<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>  
<%@ include file="/npage/include/public_title_name.jsp"%>
<%@ page import="com.sitech.rom.common.bo.HostBo" %>
<%@ page import="com.sitech.rom.util.StringUtil" %>
<%
String provinceCode= request.getParameter("provinceCode");
String tellType= request.getParameter("tellType");
 String dataFuncCode=request.getParameter("dataFuncCode");
 
HostBo hostBo=(HostBo)request.getAttribute("hostBo");
String hostinfostr="";
if(null!=hostBo){
	hostinfostr=hostBo.getProvinceName()+hostBo.getTellName()+"-"+hostBo.getHostIp();
}
 
 %>
<html>
<head>
<title>修改工单脚本信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
</head>
<body>
   <div id="operation">
	<div id="operation_table">
		<form action="" method="post" name="hostForm">
		
			<input type=hidden name="proId" id="proId" value="<%=proId%>">
			<input type=hidden name="opCode" id="opCode" value="<%=opCode%>">
			<input type=hidden name="provinceCode" id="provinceCode" value="<%=provinceCode%>">
			<input type=hidden name="tellType" id="tellType" value="<%=tellType%>">	
			<input type=hidden name="dataFuncCode" id="dataFuncCode" value="<%=dataFuncCode%>">
			<input type=hidden name="itemId" id="itemId" value="${romMaintainItems.itemId}">
			<input type=hidden name="scriptsId" id="scriptsId" value="${romScriptsConfig.scriptsId}">
			<input type=hidden name="actionId" id="actionId" value="${romItemAction.actionId}">
						
			<div class="input">
				<table>
 				
 					<tr>
 						<th>主机信息：</th>
						<td colspan="3">
							<input type="text" name="hostinfostr" id="hostinfostr" class="" readonly="readonly" value="<%=hostinfostr %>"  size="80"/>
						</td> 						
 					</tr>
 					<tr>
 						<th>工单信息：</th>
						<td colspan="3">
							<input type="text" name="iteminfostr" id="iteminfostr" class="" readonly="readonly" value="${romMaintainItems.itemName} ${romMaintainItems.itemDesc}"  size="80"/>
						</td> 						
 					</tr> 
 
 					<tr>
						<th>动作：</th>
						<td>
							<input type="text" name="actionstr" id="actionstr" class="" readonly="readonly" value="${romItemAction.actionName}" />
						</td>					
						<th><font color="red">*脚本类型：</font></th>
						<td>
							<select name="scriptsType" id="scriptsType" class="required " onchange="chgScriptsType()">
								<option value="0">定时执行的脚本</option>
								<option value="1">手工执行的脚本</option>
							</select>
						</td>					
 					</tr>  					 					
					<tr>
						<th><font color="red">*脚本目录：</font></th>
						<td>
							<input type="text" name="scriptsDir" id="scriptsDir" value="${romScriptsConfig.scriptsDir}" class="required isCharLengthOf" v_maxlength="256" v_minlength="0"/>
						</td>
						<th><font color="red">*脚本名称：</font></th>
						<td>
 							<input type="text" name="scriptsName" id="scriptsName" value="${romScriptsConfig.scriptsName}" class="required isCharLengthOf" v_maxlength="32" v_minlength="0"/>
						</td>
					</tr>
					<tr  id="scriptShow1" style="display:none">
						<th><font color="red">*脚本执行开始时间：</font></th>
						<td>
							<input id="beginTimeStr" name="beginTimeStr" value='<fmt:formatDate value="${romCronTaskConf.beginTime}" pattern="yyyy-MM-dd HH:mm:ss"/>' class="required" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',autoPickDate:true,maxDate:'#F{$dp.$D(\'endTimeStr\')}'})"/>
 						</td>
						<th><font color="red">*脚本执行结束时间：</font></th>
						<td>
 							<input id="endTimeStr"  name="endTimeStr" value='<fmt:formatDate value="${romCronTaskConf.endTime}" pattern="yyyy-MM-dd HH:mm:ss"/>' class="required" type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd HH:mm:ss',autoPickDate:true,minDate:'#F{$dp.$D(\'beginTimeStr\')}'})"/>
						</td>
					</tr>
					<tr id="scriptShow2" style="display:none">
						<th><font color="red">*脚本执行间隔：</font></th>
						<td colspan="3">
 							<input type="text" name="intervalTime" id="intervalTime" value="${romCronTaskConf.intervalTime}" class="required isDigLengthOf" v_maxlength="12" v_minlength="0"/>
						</td>					
					</tr>					
					<tr>				
						<th><font color="red">*请求URL：</font></th>
						<td colspan="3">
							<input type="text" name="reqUrl" id="reqUrl" size="80" value="${romScriptsConfig.reqUrl}" class="required isCharLengthOf" v_maxlength="128" v_minlength="0"/>
						</td>
					</tr>					
					<tr>
						<th><font color="red">*用户名：</font></th>
						<td>
							<input type="text" name="visitUser" id="visitUser" value="${romScriptsConfig.visitUser}" class="required isCharLengthOf" v_maxlength="8" v_minlength="1"/>
						</td>
						<th><font color="red">*密码：</font></th>
						<td>
 							<input type="password" name="visitPswd" id="visitPswd" value="${romScriptsConfig.visitPswd}"  class="required isCharLengthOf" v_maxlength="8" v_minlength="1"/>
						</td>
					</tr>					
				</table>
			</div>
			<div id="operation_button">
				<input type="button" name="su" onClick="updateWorkOrderScript()" class="b_foot" value="确定" />
				<input type="button" name="re" onClick="resetFrm();" class="b_foot" value="重置" />
				<input type="button" name="close" onClick="parent.doSrchSubmit();parent.removeDivWin('divWin');" class="b_foot" value="关闭"/>
			</div>
			<div align="center">
			    <font color="red"><span id="succInfo">${operInfo}</span></font>
			</div>
		</form>
	</div>
</div>
<%@ include file="/npage/include/footer.jsp"%>
<script>
$(document).ready(function () {
	//处理下拉列表选中
	$("#scriptsType").val("${romScriptsConfig.scriptsType}");
 		
 	var scriptsType=$('#scriptsType').val();
 	if(scriptsType=="0"){//定时脚本
 		$('#scriptShow1').css('display','');
 		$('#scriptShow2').css('display','');
 	}else{
 		$('#scriptShow1').css('display','none');
 		$('#scriptShow2').css('display','none'); 	
 	}
	 		
	//关闭弹出页面后，刷新主页面数据--begin
    $('#close').click(function(){
		try{
		    parent.doSrchSubmit();
	    }catch(e){}
	});
});

function chgScriptsType(){
 	var scriptsType=$('#scriptsType').val();
 	if(scriptsType=="0"){//定时脚本
 		//切换后清除设置过的数据
 		$('#beginTimeStr').val("");
 		$('#endTimeStr').val("");
 		$('#intervalTime').val("");
 		
 		$('#scriptShow1').css('display','');
 		$('#scriptShow2').css('display','');
 	}else{
 		$('#scriptShow1').css('display','none');
 		$('#scriptShow2').css('display','none'); 	
 	}
}

function updateWorkOrderScript(){
    if(!checksubmit(hostForm)){
		return false;
	}
	if($("#hostId").val()==""){
		alert("请进行主机选择！");
		return false;
	}
 	var hostIp=$("#hostinfostr").val().substring($("#hostinfostr").val().indexOf('-')+1);
	var hostChkIp=$("#reqUrl").val().substring(7);
	if(hostChkIp.indexOf(':')>-1){
		hostChkIp=hostChkIp.substring(0,hostChkIp.indexOf(':'));
	}
	if(hostChkIp!=hostIp){
		alert("请求URL格式有误或与主机IP不匹配！");
		return false;
	}
	document.hostForm.action='<%=request.getContextPath()%>/updateWorkOrderScript.do';
	document.hostForm.submit();
	
}

function resetFrm(){
	document.forms('hostForm').reset();
	//处理下拉列表选中
	$("#scriptsType").val("${romScriptsConfig.scriptsType}");
 		
 	var scriptsType=$('#scriptsType').val();
 	if(scriptsType=="0"){//定时脚本
 		$('#scriptShow1').css('display','');
 		$('#scriptShow2').css('display','');
 	}else{
 		$('#scriptShow1').css('display','none');
 		$('#scriptShow2').css('display','none'); 	
 	}
}

</script>
</body>
</html>