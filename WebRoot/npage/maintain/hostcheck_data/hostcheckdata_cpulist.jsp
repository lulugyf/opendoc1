﻿<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="uif/si.tld" prefix="si" %>
<%@ taglib uri="uif/si-logic.tld" prefix="logic" %> 
<%@ page import="com.sitech.rom.common.bo.HostCheckDataBo" %>
<%@ page import="com.sitech.rom.util.*" %>
<%@ include file="/npage/include/public_title_name.jsp" %>
<html>
<body>
<div id="operation" style="padding:0px">
<div id="operation_table" style="margin:0px">
<div class="list">
	<table id="mTable">
		<tr>
			<th>巡检时间</th>
			<th>用户占比</th>
			<th>系统占比</th>
			<th>空闲</th>
			<th>其余</th>
		</tr>
		<% 
		    String hostId = request.getParameter("hostId");
		    String funcCode = request.getParameter("funcCode");
		    String createDateStart = request.getParameter("createDateStart");
		    String createDateEnd = request.getParameter("createDateEnd");
		    
		    HostCheckDataBo hostCheckDataBo = new HostCheckDataBo();
	    	if(StringUtil.notNull(hostId))hostCheckDataBo.setHostId(hostId);
	    	if(StringUtil.notNull(funcCode))hostCheckDataBo.setFuncCode(funcCode);
		    if(StringUtil.notNull(createDateStart))hostCheckDataBo.setCreateDateStart(DateFormat.tolongDate(createDateStart+" 00:00:00"));
		    if(StringUtil.notNull(createDateEnd))hostCheckDataBo.setCreateDateEnd(DateFormat.tolongDate(createDateEnd+" 23:59:59"));
		    
		%>
		<si:pagelist name="datalist" id="shostcheck.qryHostCheckCpuInfo" param="<%=hostCheckDataBo %>" scope="end" url="hostcheckdata_cpulist.jsp">
			 <logic:iterate id="show" name="datalist" indexId="i" type="HostCheckDataBo">    
		   		<tr>
			   		<td><%=StringUtil.safeValue(DateFormat.longDate(show.getCreateDate()))%></td>
			   		<td><%=StringUtil.safeValue(show.getCpuUserPercent())%></td>
			   		<td><%=StringUtil.safeValue(show.getCpuSysPercent())%></td>
			   		<td><%=StringUtil.safeValue(show.getCpuFree())%></td>
			   		<td><%=StringUtil.safeValue(show.getCpuOther())%></td>
		   		</tr>
		   	 </logic:iterate>  
	    </si:pagelist>
	</table>
</div>
  
</div>	
</div>
<%@ include file="/npage/include/footer.jsp"%>
</body>
<script>
parent.reinitIframeCpu();
</script>
</html>
