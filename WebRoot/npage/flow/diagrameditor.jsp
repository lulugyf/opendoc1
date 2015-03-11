﻿<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
	<title>flow</title>
 	<link rel="stylesheet" href="<%=request.getContextPath()%>/npage/flow/css/wordpress.css" type="text/css" media="screen" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script type="text/javascript">
		mxBasePath = '<%=request.getContextPath()%>/npage/flow';
	</script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/npage/flow/js/mxclient.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/npage/flow/js/mxApplication.js"></script>
	<script type="text/javascript">
		
		var currentEditor = null;
		// Program starts here. The document.onLoad executes the
		// mxApplication constructor with a given configuration.
		// In the config file, the mxEditor.onInit method is
		// overridden to invoke this global function as the
		// last step in the editor constructor.
		function onInit(editor, isFirstTime)
		{
			currentEditor = editor;
			
			// Defines an icon for creating new connections in the connection handler.
			// This will automatically disable the highlighting of the source vertex.
			mxConnectionHandler.prototype.connectImage = new mxImage('images/connector.gif', 16, 16);
			
			// Enables connections in the graph and disables
			// reset of zoom and translate on root change
			// (ie. switch between XML and graphical mode).
			editor.graph.setConnectable(true);

			// Clones the source if new connection has no target
			editor.graph.connectionHandler.setCreateTarget(true);
			
			// Displays information about the session
			// in the status bar
			editor.addListener(mxEvent.SESSION, function(editor, evt)
			{
				var session = evt.getProperty('session');
				
				if (session.connected)
				{
					var tstamp = new Date().toLocaleString();
					editor.setStatus(tstamp+':'+
						' '+session.sent+' bytes sent, '+
						' '+session.received+' bytes received');
				}
				else
				{
					editor.setStatus('Not connected');
				}
			});
			
			// Updates the title if the root changes
			var title = document.getElementById('title');
			
			if (title != null)
			{
				var f = function(sender)
				{
					title.innerHTML = 'mxDraw - ' + sender.getTitle();
				};
				
				editor.addListener(mxEvent.ROOT, f);
				f(editor);
			}
			
			// Defines a new action to switch between
			// XML and graphical display
			var textNode = document.getElementById('xml');
			var graphNode = editor.graph.container;
			var sourceInput = document.getElementById('source');
			sourceInput.checked = false;

			var funct = function(editor)
			{
				if (sourceInput.checked)
				{
					graphNode.style.display = 'none';
					textNode.style.display = 'inline';
					
					var enc = new mxCodec();
					var node = enc.encode(editor.graph.getModel());
					
					textNode.value = mxUtils.getPrettyXml(node);
					textNode.originalValue = textNode.value;
					textNode.focus();
				}
				else
				{
					graphNode.style.display = '';
					
					if (textNode.value != textNode.originalValue)
					{
						var doc = mxUtils.parseXml(textNode.value);
						var dec = new mxCodec(doc);
						dec.decode(doc.documentElement, editor.graph.getModel());
					}

					textNode.originalValue = null;
					
					// Makes sure nothing is selected in IE
					if (mxClient.IS_IE)
					{
						document.selection.empty();
					}

					textNode.style.display = 'none';

					// Moves the focus back to the graph
					textNode.blur();
					editor.graph.container.focus();
				}
			};
			
			editor.addAction('switchView', funct);
			
			// Defines a new action to switch between
			// XML and graphical display
			mxEvent.addListener(sourceInput, 'click', function()
			{
				editor.execute('switchView');
			});

			// Create select actions in page
			var node = document.getElementById('mainActions');
			var imgs = ['undo', 'redo', 'delete', 'cut', 'copy', 'paste'];
			
			for (var i = 0; i < imgs.length; i++)
			{
				var img = document.createElement('img');
				var factory = function(name)
				{
					return function()
					{
						editor.execute(name);
					};
				};
			  img.setAttribute('src', mxBasePath+'/images/'+imgs[i]+'.gif');
			  img.className='editorPic';
			  img.setAttribute('title', mxResources.get(imgs[i]));
				mxEvent.addListener(img, 'click', factory(imgs[i]));
				node.appendChild(img);
			}

			var select = document.createElement('select');
			var option = document.createElement('option');
			select.style.width=70+'px';
			mxUtils.writeln(option, '更多...');
			select.appendChild(option);
      
      	//更多
			var items = ['group', 'ungroup', 'print'];

			for (var i=0; i<items.length; i++)
			{
				var option = document.createElement('option');
				mxUtils.writeln(option, mxResources.get(items[i]));
				option.setAttribute('value', items[i]);
				select.appendChild(option);
			}
			
			mxEvent.addListener(select, 'change', function(evt)
			{
				if (select.selectedIndex > 0)
				{
					var option = select.options[select.selectedIndex];
					select.selectedIndex = 0;
				
					if (option.value != null)
					{
						editor.execute(option.value);
					}
				}
			});
			
			node.appendChild(select);

			// Create select actions in page
			var node = document.getElementById('selectActions');
			mxUtils.linkAction(node, '全选', editor, 'selectAll');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '不选', editor, 'selectNone');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '选择图形', editor, 'selectVertices');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '选择线条', editor, 'selectEdges');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '放大', editor, 'zoomIn');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '缩小', editor, 'zoomOut');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '实际大小', editor, 'actualSize');
			mxUtils.write(node, ', ');
			mxUtils.linkAction(node, '适合画布', editor, 'fit');
		}
		
		//保存设计文件
		function submitXml(){
		    var enc = new mxCodec();
			var node = enc.encode(currentEditor.graph.getModel());
		    alert(mxUtils.getPrettyXml(node)); //图形文件内容
		}
		
		//加载图形
		function xmlLoad(){
		    var xmlFile='<mxGraphModel><root><Diagram label="My Diagram" id="-1"><mxCell/></Diagram><Layer label="Default Layer" id="0"><mxCell parent="-1"/></Layer><Rect label="步骤1" href="test.jsp" id="32"><mxCell parent="0" vertex="1"><mxGeometry x="70" y="160" width="80" height="40" as="geometry"/></mxCell></Rect><Connector label="" href="" id="33"><mxCell parent="0" source="40" target="32" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Shape label="判断" href="www.baidu.com" id="34"><mxCell style="rhombus" parent="0" vertex="1"><mxGeometry x="80" y="250" width="60" height="60" as="geometry"/></mxCell></Shape><Connector label="" href="" id="35"><mxCell parent="0" source="32" target="34" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Shape label="结束" href="" id="36"><mxCell style="doubleEllipse" parent="0" vertex="1"><mxGeometry x="340" y="370" width="60" height="60" as="geometry"/></mxCell></Shape><Connector label="否" href="" id="37"><mxCell parent="0" source="34" target="40" edge="1"><mxGeometry relative="1" as="geometry"><Array as="points"><mxPoint x="190" y="180"/></Array></mxGeometry></mxCell></Connector><Rect label="步骤2" href="" id="38"><mxCell style="rounded" parent="0" vertex="1"><mxGeometry x="70" y="370" width="80" height="40" as="geometry"/></mxCell></Rect><Connector label="是" href="" id="39"><mxCell parent="0" source="34" target="38" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Rect label="开始" href="opcode.jsp?flag=0&amp;cust_id=$&amp;user_id=$&amp;user_name=哈哈" id="40"><mxCell style="ellipse" parent="0" vertex="1"><mxGeometry x="80" y="40" width="60" height="60" as="geometry"/></mxCell></Rect><Shape label="Shape" href="" id="41"><mxCell style="hexagon" parent="0" vertex="1"><mxGeometry x="330" y="70" width="80" height="60" as="geometry"/></mxCell></Shape><Shape label="Shape" href="" id="42"><mxCell style="triangle" parent="0" vertex="1"><mxGeometry x="200" y="360" width="40" height="60" as="geometry"/></mxCell></Shape><Shape label="人员" href="" id="43"><mxCell style="actor" parent="0" vertex="1"><mxGeometry x="350" y="280" width="40" height="50" as="geometry"/></mxCell></Shape><Shape label="数据库" href="" id="44"><mxCell style="cylinder" parent="0" vertex="1"><mxGeometry x="340" y="180" width="60" height="60" as="geometry"/></mxCell></Shape><Shape label="云" href="" id="45"><mxCell style="cloud" parent="0" vertex="1"><mxGeometry x="490" y="140" width="80" height="60" as="geometry"/></mxCell></Shape><Connector label="" href="" id="46"><mxCell parent="0" source="38" target="42" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Connector label="" href="" id="47"><mxCell parent="0" source="42" target="41" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Connector label="" href="" id="48"><mxCell parent="0" source="41" target="44" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Connector label="" href="" id="49"><mxCell parent="0" source="44" target="43" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Connector label="" href="" id="50"><mxCell parent="0" target="45" edge="1"><mxGeometry relative="1" as="geometry"><mxPoint x="400" y="212.5" as="sourcePoint"/><mxPoint x="560" y="212.5" as="targetPoint"/><Array as="points"/></mxGeometry></mxCell></Connector><Connector label="" href="" id="51"><mxCell parent="0" source="43" target="36" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Text label="Text Here" href="" id="53"><mxCell style="text" parent="0" vertex="1"><mxGeometry x="220" y="470" width="80" height="20" as="geometry"/></mxCell></Text><Connector label="" href="" id="55"><mxCell style="straightConnector" parent="0" source="38" target="53" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector><Connector label="" href="" id="56"><mxCell style="straightConnector" parent="0" source="41" target="45" edge="1"><mxGeometry relative="1" as="geometry"/></mxCell></Connector></root></mxGraphModel>';
        	var xml=mxUtils.parseXml(xmlFile);
    		currentEditor.readGraphModel(xml.documentElement);
    		setStatus('当前模板：宽带办理业务');
		}
		
		//状态信息
		function setStatus(mes){
		    currentEditor.setStatus(mes);
		}
	</script>
</head>
<body onload="new mxApplication('<%=request.getContextPath()%>/npage/flow/config/diagrameditor.xml');">
	<a href="<%=request.getContextPath()%>/npage/flow/showdiagram.jsp">show</a>
	<table style="font-size:12px">
		<tr>
			<td style="width:260x;padding:10px" valign="top">
				<div class="controlSpace">
					<div class="titlebg">添加控件</div>
					<div id="toolbar" class="contentbg" style="width:100%;"></div>
				</div>
				
				<div class="controlSpace">
					<div class="titlebg">属性对话框</div>
					<div class="tabcontentbg" style="width:100%;">
						<UL class="tabs">
							<LI class="tabs-selected" onclick="HoverLit(this);show('propty','busipropty')"><A class="tabs-inner" href="javascript:void(0)">信息</A></LI>
							<LI onclick="HoverLit(this);show('busipropty','propty')"><A class="tabs-inner" href="javascript:void(0)">业务属性</A></LI>
						</UL>
						<table id="propty" class="propty" cellpadding="0" cellspacing="0">
							<tr>
								<td class="t_bg" style="width:80px">名称</td>
								<td class="t_bg">值</td>
							</tr>
						</table>
						<table id="busipropty" class="propty" style="display:none" cellpadding="0" cellspacing="0">
							<tr>
								<td class="t_bg" style="width:80px">名称</td>
								<td class="t_bg">值</td>
							</tr>
						</table>
					</div>
				</div>
			</td>
			<td>
				<div id="page">
					<div id="header"></div>
					<div id="mainActions" style="padding-left:24px;padding-bottom:8px;float:left">
						  <img src="<%=request.getContextPath()%>/npage/flow/images/save.gif" title="保存" class="editorPic" onclick="submitXml()"/>
						  <img src="<%=request.getContextPath()%>/npage/flow/images/open.gif" title="加载" class="editorPic" onclick="xmlLoad()"/>
					</div>
					<div id="selectActions" style="float:left;margin-left:10px;text-align:left;font-size:12px"></div>
					<table border="0" width="730px">
						<tr>
							<td style="width:10px;padding-left:15px;" valign="top"></td>
							<td valign="top" style="border-width:1px;border-style:solid;border-color:black;">
								<div id="graph" style="position:relative;height:520px;width:100%;overflow:hidden;cursor:default;background: url('<%=request.getContextPath()%>/npage/flow/images/grid.gif');">
									<!-- Graph Here -->
									<center id="splash" style="padding-top:230px;">
										<img src="<%=request.getContextPath()%>/npage/flow/images/loading.gif">
									</center>
								</div>
								<textarea id="xml" style="height:520px;width:100%;display:none;border-style:none;"></textarea>
							</td>
						</tr>
					</table>
					<span style="width:100px;float:right;padding-right:36px;">
						<input id="source" type="checkbox"/>XML
					</span>
					<div id="status" class="statusFooter">
							<!-- Status Here -->Loading...
					</div>
					<div id="footer">
					</div>
				</div>
			</td>
		</tr>
	</table>
	
</body>
<script type="text/javascript" src="<%=request.getContextPath()%>/njs/system/jquery-1.3.2.min.js"></script>
<script>
function HoverLit(obj){
	$(".tabs").eq(0).children().each(function(){
        $(this).attr('class','');
    });
    $(obj).attr('class','tabs-selected');
}
function show(id,disId){
	$('#'+id).css('display','');
	$('#'+disId).css('display','none');
}
</script>
</html>
