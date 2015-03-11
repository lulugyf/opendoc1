﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="uif/si.tld" prefix="si" %>
<%@ taglib uri="uif/si-logic.tld" prefix="logic" %> 
<%@ page import="com.sitech.rom.common.bo.FtpsitesBo" %>
<%@ page import="com.sitech.rom.util.StringUtil" %>
<%@ include file="/npage/include/public_title_name.jsp" %>
<html>
<body>
<div id="operation" style="padding:0px">
<div id="operation_table" style="margin:0px">
<div class="title"> <div class="text">FTP站点列表</div></div>  
<div class="list">
	<table id="mTable">
		<tr>	
			<th>省份运营商</th>
			<th>主机名称</th>
			<th>站点名称</th>
			<th>主机地址</th>
			<th>端口</th>
			<th>FTP用户</th>
			<th>站点描述</th>
			<th>数据类型</th>
			<th>操作</th>
		</tr>
		<% 
		    String provinceTell = request.getParameter("provinceTell").trim();
		    String[] arr=provinceTell.split("_");
		    String provinceCode = arr[0];
		    String tellType = arr[1];
		            
		    String hostIp = request.getParameter("hostIp").trim();
		    
		    String edit = request.getParameter("edit");
		    String del = request.getParameter("del");
		    
		    FtpsitesBo ftpsitesBo = new FtpsitesBo();
		    if(proId!=null && !"".equals(proId))ftpsitesBo.setProCode(proId);
		    if(provinceCode!=null && !"".equals(provinceCode))ftpsitesBo.setProvinceCode(provinceCode);
		    if(tellType!=null && !"".equals(tellType))ftpsitesBo.setTellType(tellType);
		    if(hostIp!=null && !"".equals(hostIp))ftpsitesBo.setHostIp(hostIp);
		    ftpsitesBo.setLoginNo(session.getAttribute("loginNo").toString());
		    
		%>
		<si:pagelist name="ftplist" id="sftpsites.qryFtpsites" param="<%=ftpsitesBo %>" scope="end" url="ftpsites_list.jsp">
			 <logic:iterate id="show" name="ftplist" indexId="i" type="com.sitech.rom.common.bo.FtpsitesBo">    
		   		<tr>
			   		<td><%=StringUtil.safeValue(show.getProvinceName())+StringUtil.safeValue(show.getTellName())%></td>
			   		<td><%=StringUtil.safeValue(show.getHostName())%></td>
			   		<td><%=StringUtil.safeValue(show.getSiteName())%></td>
			   		<td><%=StringUtil.safeValue(show.getHostIp())%></td>
			   		<td><%=StringUtil.safeValue(show.getFtpPort())%></td>
			   		<td><%=StringUtil.safeValue(show.getFtpUser())%></td>
			   		<td><%=StringUtil.safeValue(show.getRemarks())%></td>
			   		<td><% if(show.getIsOwn()==0){
			   				   out.print("自建");
			   			   }else{
			   			   	   out.print(show.getLoginNo()+"共享");
			   			   } %>
			   		</td>
			   		<td>
			   			<% if(show.getIsOwn()==0){ %>
			   		    	<input type="button" class="butCha" name="edit" style="display:none" title="编辑" onclick="editRow('<%=StringUtil.safeValue(show.getSiteId())%>')"/>
			   		    	<input type="button" class="butDel" name="del" style="display:none" title="删除" onclick="showDialog('是否删除?',3,'retT=delRow(\'<%=StringUtil.safeValue(show.getSiteId())%>\',\'<%=StringUtil.safeValue(show.getProvinceName())+StringUtil.safeValue(show.getTellName())+"-"+StringUtil.safeValue(show.getHostIp())%>\',\'<%=StringUtil.safeValue(show.getSiteName())%>\')');"/>  
						<% } %>
			   		</td>
		   		</tr>
		   	 </logic:iterate>  
	    </si:pagelist>
	</table>
</div>
  
</div>	
</div>
<%@ include file="/npage/include/footer.jsp"%>
 </body>
 
<script language="javascript" type="text/javascript">
$(document).ready(function () {
    if('<%=edit%>'=='Y'){
        $("input[name='edit']").each(function(){
            $(this).css('display','');
        })
    }
    if('<%=del%>'=='Y'){
        $("input[name='del']").each(function(){
            $(this).css('display','');
        })
    }
    parent.unLoading('ajaxLoadingDiv');
});
//编辑当前行内容
function editRow(siteId){
	var qryPara="siteId="+siteId+"&proId=<%=proId%>&opCode=<%=opCode%>&provinceCode=<%=provinceCode%>&tellType=<%=tellType%>";
	parent.openDivWin("<%=request.getContextPath()%>/gotoUpdateFtpsite.do?"+qryPara,"修改FTP站点","750","400");
	parent.refreshByClose();
}
//删除行
function delRow(siteId,hostName,siteName){
	var packet = new AJAXPacket("<%=request.getContextPath()%>/delFtpsite.do");
	packet.data.add("siteId" ,siteId);
	packet.data.add("proId" ,'<%=proId%>');
	packet.data.add("opCode" ,'<%=opCode%>');
	packet.data.add("provinceCode" ,'<%=provinceCode%>');
	packet.data.add("tellType" ,'<%=tellType%>');
	packet.data.add("hostName" ,hostName);
	packet.data.add("siteName" ,siteName);
	core.ajax.sendPacket(packet,doDelRow);
	packet =null;
}
function doDelRow(packet){
	var retCode = packet.data.findValueByName("retCode");
	
  	if(retCode=='1'){
  	    parent.parent.showDialog("FTP站点删除成功！",2);
  	    parent.doSrchSubmit();
  	}else if(retCode=='noright'){
  	    parent.parent.showDialog("您没有权限进行此操作！",0);
  	}else{
  	    parent.parent.showDialog("FTP站点删除失败！",0);
  	}
}

</script>
</html>
