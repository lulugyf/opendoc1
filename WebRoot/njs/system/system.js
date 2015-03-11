﻿ /*@cc_on
//IE提速语句 
eval((function(props) {
var code = [];
for (var i = 0,l = props.length;i<l;i++){
var prop = props[i];
window['_'+prop]=window[prop];
code.push(prop+'=_'+prop);
}
return 'var '+code.join(',');
})('document self top parent alert setInterval clearInterval setTimeout clearTimeout'.split(' ')));
//IE6图片缓存开启
(function(){
var ua = navigator.userAgent.toLowerCase();
isIE6 = ua.indexOf("msie 6") > -1;
if(isIE6){
try{
document.execCommand("BackgroundImageCache", false, true);
}catch(e){}
}
})();
@*/
var undefined;
if(!uif)var uif={}||window;
/**
 * 解析运行环境调用system.js文件的页面URL，用于获取运行环境的根目录
 * majhc 2009-11-6 15:44:09
 */
function getGlobalPathRoot(){
	var npageIndex = document.URL.indexOf('npage');
	var doIndex = document.URL.indexOf('.do');
	if(-1 != npageIndex){
		return document.URL.substr(0,npageIndex);
	}else if(-1 != doIndex){
		return document.URL.substr(0,document.URL.lastIndexOf('/')+1);
	}else{
		var extIndex = document.URL.indexOf('.jsp')+document.URL.indexOf('.html')+document.URL.indexOf('.htm')+document.URL.indexOf('.si');
		if(-4 != extIndex){
			return document.URL.substr(0,document.URL.lastIndexOf('/')+1);
		}else{
			var lastUrlChar = document.URL.substr(document.URL.length-1,1);
			if('/' == lastUrlChar){
				return document.URL;
			}else{
				return document.URL+'/';
			}
		}
	}
}

var globalPathRoot = getGlobalPathRoot();

/****** hotkey Compressed by JSA(www.xidea.org)********/
(function($){this.version="(beta)(0.0.3)";this.all={};this.special_keys={27:"esc",9:"tab",32:"space",13:"return",8:"backspace",145:"scroll",20:"capslock",144:"numlock",19:"pause",45:"insert",36:"home",46:"del",35:"end",33:"pageup",34:"pagedown",37:"left",38:"up",39:"right",40:"down",112:"f1",113:"f2",114:"f3",115:"f4",116:"f5",117:"f6",118:"f7",119:"f8",120:"f9",121:"f10",122:"f11",123:"f12"};this.shift_nums={"`":"~","1":"!","2":"@","3":"#","4":"$","5":"%","6":"^","7":"&","8":"*","9":"(","0":")","-":"_","=":"+",";":":","'":"\"",",":"<",".":">","/":"?","\\":"|"};this.add=function(B,F,A){if($.isFunction(F)){A=F;F={}}var E={},D={type:"keydown",propagate:false,disableInInput:true,target:"html"},_=this,E=$.extend(E,D,F||{});B=B.toLowerCase();var C=function(N){N=$.event.fix(N);var A=N.data.selector,I=$(N.target);var J=N.which,B=N.type,D=String.fromCharCode(J).toLowerCase(),C=_.special_keys[J],L=N.shiftKey,M=N.ctrlKey,G=N.altKey,O=true,F=null,H=_.all[A].events[B].callbackMap;if(E["disableInInput"] && I.is("textarea, input") && !(G || M || L))return;if(!L&&!M&&!G)F=H[C]||H[D];else{var K="";if(G)K+="alt+";if(M)K+="ctrl+";if(L)K+="shift+";F=H[K+C]||H[K+D]||H[K+_.shift_nums[D]]}if(F){F.cb(N);if(!F.propagate){N.stopPropagation();N.preventDefault();return false}}};if(!this.all[E.target])this.all[E.target]={events:{}};if(!this.all[E.target].events[E.type]){this.all[E.target].events[E.type]={callbackMap:{}};$(E.target).bind(E.type,{selector:E.target},C)}this.all[E.target].events[E.type].callbackMap[B]={cb:A,propagate:E.propagate};return $};this.remove=function(_,A){A=A||{};target=A.target||"html";type=A.type||"keydown";_=_.toLowerCase();$(target).unbind(type);delete this.all[target].events[type].callbackMap[_];return $};$.hotkeys=this;return $})(jQuery);
	
/****** ajax.js********/
var core={};
core.copyright="(c) sitech 2008-2010\nAll code protected by international copyright law.\nSee license.txt for terms and conditions.";
core.version="2.00";
core.ajax = {
  receivePacket:function(packet){
  },
  sendPacket:function(packet , process ,  aysncflag){
     
     var sendUrl = packet.url;
		 var sendData = packet.data.data;
	   if(process ==null) process = doProcess;
		 if(aysncflag==null) aysncflag = false;
		 
		 if(aysncflag == false){
		 	loading();
			}
			
     	 $.ajax({
			   url: sendUrl,
			   data: sendData,
			   type:"POST",
			   async:aysncflag,  
			   dataType:"html",
			   beforeSend: function(req){
					req.setRequestHeader("ajaxReturnDataType", "object");
			   },			   
			   success: function(data){
				   eval(data);
					 process(response);
	         response = null;
			   },
			   error:function(data){
					if(data.status=="404")
					{
						alert( "文件不存在!");
					}
					else if (data.status=="500")
					{
					  alert("服务信息返回错误");
					}
					else{
					  alert("系统错误!");  					
					}
 			   }
			});
			if(aysncflag == false){
		 		unLoading('ajaxLoadingDiv');		 	
			}
  },

  sendPacketHtml:function(packet, process ,aysncflag){
     
     var sendUrl = packet.url;
		 var sendData = packet.data.data;
		 
		 if(process ==null) process = doProcess;
		 if(aysncflag==null) aysncflag = false;
		 if(aysncflag == false){
		 	loading();		 	
			}

     	 $.ajax({
			   url: sendUrl,
			   data: sendData,
			   type:"POST",
			   async:aysncflag, 
			   dataType:"html",
			   beforeSend: function(req){
					req.setRequestHeader("ajaxReturnDataType", "html");
			   },			   
			   success: function(data){
			      process(data);
			   },
			   error:function(data){
					if(data.status=="404")
					{
					  alert( "文件不存在!");
					}
					else if (data.status=="500")
					{
					  alert("服务信息返回错误");
					}
					else{
					  alert("系统错误!");  					
					}
 			   }
			});
			if(aysncflag == false){
		 		unLoading('ajaxLoadingDiv'); 	
			}
  }
};
  
JMap=function(){this.clear();}
JMap.prototype.clear=function(){  this.data={}};
//JMap.prototype.add=function(n,v){ this.data[n] = v };
JMap.prototype.add=function(n,v){
    if(typeof(v)=="object" && v!=null){
        this.serialize(this.data,n,v);
    }
		this.data[n]=v;
};

JMap.prototype.serialize=function(originObj,name,obj){
	if(obj.length){
		var vLength=obj.length;
		for(var i=0;i<vLength;i++){
			var index=name+"["+i+"]";
			if(obj[i]&&typeof(obj[i])==="object"){
				jmap=new JMap();
				jmap.serialize(originObj,index,obj[i])
			}else{
				originObj[index]=obj[i];
			}
		}
	}else{
		for(var s in obj){
			if(typeof(obj[s])==="object"){
				jmap=new JMap();
				jmap.serialize(originObj,s,obj[s]);
			}else{
				originObj[s]=obj[s];
			}
		}
	}
};

JMap.prototype.findValueByName=function(n){return this.data[n]};

AJAXPacket=function(url,text)
{
	this.url=url;
	this.data=new JMap();
	//try ..catch部分为处理订单提交报文中的公用节点而用，在主页面中取custID,idNO,opCode传入订单提交页面
	try{
		this.data.add("crmActiveCustId",$("#crmActiveCustId").val());
		this.data.add("crmActiveIdNo",$("#crmActiveIdNo").val());
		this.data.add("crmActiveOpCode",$("input[name='opCode']").val());
	}catch(e){
		
	}
  this.statusText=text;
	this.guid="";
};


/***********shield.js**********/
$(document).ready(function(){
		//屏蔽右键
		//document.oncontextmenu = function(){return false;};
		
		//左键选择
		//document.onselectstart=new Function("event.returnValue=false");
		if($.hotkeys){
			$.hotkeys.add('Ctrl+n', function(){showDialog("欢迎您使用维护操作平台！",1);});
			$.hotkeys.add('Ctrl+r', function(){showDialog("欢迎您使用维护操作平台！",1);});
			$.hotkeys.add('f5', function(){showDialog("欢迎您使用维护操作平台！",1);window.event.keyCode = 0;return;});
			$.hotkeys.add('f11', function(){showDialog("欢迎您使用维护操作平台！",1);window.event.keyCode = 0;return;});
		}
});
/******** block.js*************/
/*****drag begin
*oId ---the object id
*bossTop---reference object
*flag----the object's type,box or window
******/
var isIE = document.all ? true : false;
function dragDialog(tId,bossTop,flag,oId){
	var mx,my,mouseD,odrag;
	if(bossTop){
		var td = bossTop.document.getElementById(tId);
		var od = bossTop.document.getElementById(oId);
		td.onmousedown = function(e){
	    	odrag = this;
	    	var e = e ? e : bossTop.window.event;
	    	if(e.button == (bossTop.document.all ? 1 : 0))
	    	{
		      mx = e.clientX;
		      my = e.clientY;
		      od.style.left = od.offsetLeft + "px";
		      od.style.top = od.offsetTop + "px";
		      if(isIE)
		      {
		          od.setCapture();                
		      }
		      else
		      {
		          bossTop.window.captureEvents(Event.MOUSEMOVE);//捕获该对象上的鼠标移动事件
		      }
		    } 
	 	  }
	 
	   bossTop.document.onmousedown = function(e){
		    var e = e ? e : bossTop.window.event;
		    if(e.button == ( bossTop.document.all ? 1 : 0))
		    {
		        mouseD = true;            
		    }
		}
	
	   bossTop.document.onmouseup = function(){
		    mouseD = false;
		    odrag = "";
		    if(isIE)
		    {
		        od.releaseCapture();  //打断当前的鼠标捕获
		    }
		    else
		    {
		         bossTop.window.releaseEvents(od.MOUSEMOVE);////释放该对象上的鼠标移动事件
		         od.style.opacity = 1;
		    }        
		}    
	
	  bossTop.document.onmousemove = function(e){
	     var e = e ? e : bossTop.window.event;       
	     if(mouseD==true && odrag)
	     {        
	        var mrx = e.clientX - mx;
	        var mry = e.clientY - my;    
	        od.style.left = parseInt(od.style.left) +mrx + "px";
	        od.style.top = parseInt(od.style.top) + mry + "px";            
	        mx = e.clientX;
	        my = e.clientY;
	     }
	 }
	}else{
		//var od = document.getElementById(oId);
		var td = document.getElementById(tId);
		var od = document.getElementById(oId);
		td.onmousedown = function(e){
	    	odrag = this;
	    	var e = e ? e : event;
	    	if(e.button == (document.all ? 1 : 0))
	    	{
		      mx = e.clientX;
		      my = e.clientY;
		      od.style.left = od.offsetLeft + "px";
		      od.style.top = od.offsetTop + "px";
		      if(isIE)
		      {
		          od.setCapture();                
		      }
		      else
		      {
		         window.captureEvents(Event.MOUSEMOVE);//捕获该对象上的鼠标移动事件
		      }
		    } 
	 	  }
	 
	   document.onmousedown = function(e){
		    var e = e ? e : event;
		    if(e.button == ( document.all ? 1 : 0))
		    {
		        mouseD = true;            
		    }
		}
	
		document.onmouseup = function(){
		    mouseD = false;
		    odrag = "";
		    if(isIE)
		    {
		        od.releaseCapture();  //打断当前的鼠标捕获
		    }
		    else
		    {
		        window.releaseEvents(od.MOUSEMOVE);////释放该对象上的鼠标移动事件
		         od.style.opacity = 1;
		    }        
		}    
	
		document.onmousemove = function(e){
		    var e = e ? e : event;       
		    if(mouseD==true && odrag)
		    {        
		        var mrx = e.clientX - mx;
		        var mry = e.clientY - my;    
		        od.style.left = parseInt(od.style.left) +mrx + "px";
		        od.style.top = parseInt(od.style.top) + mry + "px";            
		        mx = e.clientX;
		        my = e.clientY;
		        if(flag){
		        	setTimeout(function(){setBackStyle("showCover"+flag)},8);
		        }else{
		        	setTimeout(function(){setBackStyle("winCover")},8);
		        }
		    }
		}
	}
}
/***drag end**/
/***following the mouse and set the wincover's style****/
function setBackStyle(id){
		var h1 = window.document.body.scrollHeight+20;
	    var h11=document.body.offsetHeight+20;
	    h1=h1>h11?h1:h11;
	    var w1 = window.document.body.scrollWidth;
	    var w11=window.document.body.offsetWidth;
	    w1=w1>w11?w1:w11;
	    var winH1 = document.documentElement.scrollHeight;
	    var winH11=document.documentElement.clientHeight;
	    winH1=winH1>winH11?winH1:winH11;
	    var winW1 = document.documentElement.scrollWidth;
	    var winW11=document.documentElement.clientWidth;
	    winW1=winW1>winW11?winW1:winW11;
	    if(h1 < winH1){
		    h1 = winH1;
	    }
	    if(w1 < winW1){
		    w1 = winW1;
	    }

		document.getElementById(id).style.height=h1;
		document.getElementById(id).style.width=w1;
}

// 取窗口滚动条高度
function getScrollTop()
{
      var scrollTop=0;
      if(document.documentElement && document.documentElement.scrollTop)
      {
            scrollTop=document.documentElement.scrollTop;
      }else if(document.body)
      {
            scrollTop=document.body.scrollTop;
      }
      return scrollTop;
}

//取窗口滚动条宽度
function getScrollLeft()
{
      var scrollLeft=0;
      if(document.documentElement && document.documentElement.scrollLeft)
      {
            scrollLeft=document.documentElement.scrollLeft;
      }else if(document.body)
      {
            scrollLeft=document.body.scrollLeft;
      }
      return scrollLeft;
}  

//取窗口可视范围的宽度
function getClientWidth()
{
      var clientWidth=0;
      if(document.body.clientWidth && document.documentElement.clientWidth)
      {
            var clientWidth = (document.body.clientWidth< document.documentElement.clientWidth)?document.body.clientWidth:document.documentElement.clientWidth;            
      }else
      {
            var clientWidth = (document.body.clientWidth> document.documentElement.clientWidth)?document.body.clientWidth:document.documentElement.clientWidth;      
      }
      return clientWidth;
} 


//显示等待效果，从调用页面弹出
function loading(msg){
	try{
	   unLoading('ajaxLoadingDiv');
	}catch(e){}
	//create div
	var ajaxLoadingDiv = document.createElement("div");
	ajaxLoadingDiv.setAttribute("id","ajaxLoadingDiv");
	ajaxLoadingDiv.className="ajax_window";
	ajaxLoadingDiv.onclick=function(){
		unLoading('ajaxLoadingDiv');
	}
	
	var ajax_wait = document.createElement("div");
	ajax_wait.className="ajax_wait";
	if(msg){
		ajax_wait.innerHTML=msg+"，请稍候......";
	}else{
		ajax_wait.innerHTML="正在加载，请稍候......";
	}
	
	var loading_gif = document.createElement("div");
	loading_gif.className="loading_gif";
	
	ajax_wait.appendChild(loading_gif);  
	ajaxLoadingDiv.appendChild(ajax_wait);
	document.body.appendChild(ajaxLoadingDiv);
	
	var h = getScrollTop();
	var w1 = getScrollLeft();
	var w = getClientWidth();
	$("#ajaxLoadingDiv").css("top",h+180);
	$("#ajaxLoadingDiv").css("left",w/2 - $("#ajaxLoadingDiv").width()/2 + w1);
}

function showDialog(text,flag,param,butText){
	showDialog_top(window,text,flag,param,butText);
} 

/*
 *根据不同参数,显示不同加载效果,从top页面弹出
 *obj：调用页面的window对象
 *text:显示信息
 *flag :0-失败;1-警告;2-成功;3-确认;若不输入,默认为等待效果
 *param:当flag伟0时有效,detail=失败原因
 				当flag为3时有效,retT=func1(2,3);retF=func2();closeFunc=func3(2)
 *举例：showDialog('操作失败',0,'detail=失败原因')
 				showDialog('警告',1,'closeFunc=func3(\'abc\')')
 				showDialog('成功',2,'closeFunc=func3(123)')
 				showDialog('是否删除?',3,'retT=func1(2,3);retF=func2();closeFunc=func3(2)')
 */ 
function showDialog_top(obj,text,flag,param,butText){
		
		var bossTop;
		var _document;
		
		//客服并运行测试时添加代码，测试结束时可删除
		try{
			if(top && top.document.getElementById("topPanel"))
			{
				bossTop = top;
				_document = top.document;
			}else{
				bossTop = window;
				_document = document;
			}
		}catch(e)
		{
			try{
				if(parent && parent.document.getElementById("topPanel")){
					bossTop = parent;
					_document = parent.document;
				}else if(parent.parent && parent.parent.document.getElementById("topPanel")){
					bossTop = parent.parent;
					_document = parent.parent.document;
				}else if(parent.parent.parent && parent.parent.parent.document.getElementById("topPanel")){
					bossTop = parent.parent.parent;
					_document = parent.parent.parent.document;
				}else{
					bossTop = window;
					_document = document;
				}
			}catch(e){
				bossTop = window;
				_document = document;
			}
		}	 
		//测试代码结束
		
		
		/*	上边测试代码删除时可放开此段代码
		try{
			if(top.document.getElementById("topPanel"))
			{
				bossTop = top;
				_document = top.document;
			}else{
				bossTop = window;
				_document = document;
			}
		}catch(e)
		{
			bossTop = window;
			_document = document;
		}	
		*/
		showWinCover(bossTop,"showCover"+flag);

		var arr_param =new Array();
		if(param)
		{
			var arr_param_temp = param.split(";");
			for(var i=0;i<arr_param_temp.length;i++)
			{
				var _key = arr_param_temp[i].substring(0,arr_param_temp[i].indexOf("="));
				var _value=arr_param_temp[i].substring(arr_param_temp[i].indexOf("=")+1,arr_param_temp[i].length);
				arr_param[_key] = _value;
			}
		}
		
		var arr_butText = new Array();
		if(butText){
			var arr_butText_temp = butText.split(";");
			for(var i=0;i<arr_butText_temp.length;i++)
			{
				var _key = arr_butText_temp[i].substring(0,arr_butText_temp[i].indexOf("="));
				var _value=arr_butText_temp[i].substring(arr_butText_temp[i].indexOf("=")+1,arr_butText_temp[i].length);
				arr_butText[_key] = _value;
			}
		}
		
		var flagClass = "";
		switch(flag)
	  {
	   case 0:
	     flagClass = " wrong";
	     break
	   case 1:
	     flagClass = " warning";
	     break
	   case 2:
	     flagClass = " right";
	     break
	   case 3:
	     flagClass = " questions";
	     break 
	   case 4:
	     flagClass = " questions";
	     break   
	   default:
	     flagClass=" loading";
	  }
	  
	  
		if(_document.getElementById("loadingDiv"+flag))
		_document.body.removeChild(_document.getElementById("loadingDiv"+flag));
		
		//create div
		var loadingDiv =_document.createElement("div");
		loadingDiv.setAttribute("id","loadingDiv"+flag);
		loadingDiv.className="window";
		loadingDiv.style.zIndex="12000";
		
		var caption =_document.createElement("div");
		caption.className="caption";
	  	caption.setAttribute("id","caption"+flag);
	  	
	  	var span =_document.createElement("span");
	 	 span.className="text";
	 	 span.innerHTML=" 提 示 ";
	  
	 	 var _a = _document.createElement("a");
	 	 _a.setAttribute("href","#this");
	  
	 	var _close = _document.createElement("div");
		_close.className="close";
		_close.onclick=function(){
			if(arr_param["closeFunc"]){
				bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				obj.eval(arr_param["closeFunc"]);
			}else{
				bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
			}
	  }
	  
	  	var box=_document.createElement("div");
		box.className="box "+flagClass;
		
		var pic=_document.createElement("div");
		pic.className="pic";
		
		var tips=_document.createElement("div");
		tips.className="tips";
		tips.innerHTML=text;
		
		var but_bg = _document.createElement("div");
		but_bg.className="but_bg";
		
		var detailDiv = _document.createElement("div");
		detailDiv.setAttribute("id","detailDiv");
		detailDiv.className="moreTips";
		detailDiv.style.display="none";
		detailDiv.onclick=function(){
			detailDiv.style.display=="none"?detailDiv.style.display="block":detailDiv.style.display="none";
		}
		detailDiv.innerHTML=arr_param["detail"];
		
		_a.appendChild(_close);
		caption.appendChild(span);
		caption.appendChild(_a);
		
		box.appendChild(pic);		 
		box.appendChild(tips);		 
		 
		if(flag=="0" && arr_param["detail"]){
			
			var _showDetail = _document.createElement("input");
			_showDetail.type="button";
			_showDetail.className="b_text";
			_showDetail.value="更多";
			_showDetail.onclick=function(){
				detailDiv.style.display="block";
		  }
		 	var _t_close = _document.createElement("input");
			_t_close.type="button";
			_t_close.className="b_text";
			_t_close.value="关闭";
			_t_close.onclick=function(){
				if(arr_param["closeFunc"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["closeFunc"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		 	 }
		  	but_bg.appendChild(_showDetail);
			but_bg.appendChild(_t_close);
			
		
		}else if(flag=="3"){
			
			var _t_retT = _document.createElement("input");
			_t_retT.type="button";
			_t_retT.className="b_text";
			if(arr_butText["first"]){
				_t_retT.value=arr_butText["first"];
			}else{
				_t_retT.value="确认";
			}
			_t_retT.onclick=function(){
				_t_retT.disabled="true";
				if(arr_param["retT"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["retT"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		  }
		  
		  var _t_retF = _document.createElement("input");
			_t_retF.type="button";
			_t_retF.className="b_text";
			if(arr_butText["second"]){
				_t_retF.value=arr_butText["second"];
			}else{
				_t_retF.value="取消";
			}
			_t_retF.onclick=function(){
				if(arr_param["retF"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["retF"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		  }
			but_bg.appendChild(_t_retT);
			but_bg.appendChild(_t_retF);
			
		}else if(flag=="4"){
			
			var _t_retP= _document.createElement("input");
			_t_retP.type="button";
			_t_retP.className="b_text";
			_t_retP.value="浏览";
			_t_retP.onclick=function(){
				if(arr_param["retP"]){
					obj.eval(arr_param["retP"]);
				}
		  }
			
			var _t_retT = _document.createElement("input");
			_t_retT.type="button";
			_t_retT.className="b_text";
			_t_retT.value="确认";
			_t_retT.onclick=function(){
				_t_retT.disabled="true";
				if(arr_param["retT"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["retT"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		  }
		  
		  var _t_retF = _document.createElement("input");
			_t_retF.type="button";
			_t_retF.className="b_text";
			_t_retF.value="取消";
			_t_retF.onclick=function(){
				if(arr_param["retF"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["retF"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		  }
		  	but_bg.appendChild(_t_retP);
				but_bg.appendChild(_t_retT);
				but_bg.appendChild(_t_retF);
			
		}else{
			
			var _t_ret = _document.createElement("input"); 
			_t_ret.type="button";
			_t_ret.className="b_text";
			_t_ret.value="确认";
			_t_ret.onclick=function(){
				if(arr_param["closeFunc"]){
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
					obj.eval(arr_param["closeFunc"]);
				}else{
					bossTop.unLoadingShowDialog(bossTop,"loadingDiv"+flag);
				}
		  }
			but_bg.appendChild(_t_ret);
		
		}
		
	   loadingDiv.appendChild(caption);
	   loadingDiv.appendChild(box);
	   loadingDiv.appendChild(but_bg);
	   loadingDiv.appendChild(detailDiv);
		
		_document.body.appendChild(loadingDiv);
	
		bossTop.$("#loadingDiv"+flag).css("left",bossTop.$("body").width()/2 - bossTop.$("#loadingDiv"+flag).width()/2);
		bossTop.$("#loadingDiv"+flag).css("top","0px");
		
		if(_t_ret){
			_t_ret.focus();
		}
		
		if(_t_retT){
			_t_retT.focus();
		}
		
		if(_showDetail){
			_showDetail.focus();
		}
		
		if(document.documentElement && document.documentElement.scrollTop){  
          document.documentElement.scrollTop=0; 
     	}else if(document.body){  
          document.body.scrollTop=0; 
     	} 
		dragDialog("caption"+flag,bossTop,false,"loadingDiv"+flag);
		return;
}


//取消ajax等待效果
function unLoading(id){
		var odiv = document.getElementById(id);
		if(odiv){
			odiv.parentNode.removeChild(odiv);
			odiv=null;
		}
}
	
// 取消showDialog等待效果
function unLoadingShowDialog(bossTop,id){
		var odiv = document.getElementById(id);
		if(odiv){
			odiv.parentNode.removeChild(odiv);
			odiv=null;
		}
		
		var flag= id.substring(id.length-1,id.length);
		removeWinCover(bossTop,"showCover"+flag);
}

/*
 *显示窗口蒙板; 使用iFrame屏蔽后面的下拉框
 *ajax没有遮盖层
 *showDialog的遮盖层的id是 showCover+flag
 *openDivWin的遮盖层的id是 winCover
 */
showWinCover=function (bossTop,id){

		if(typeof(id)== "undefined")
		{
				id="winCover";
		}
		
		removeWinCover(bossTop,id);	
		if(bossTop)
		{
		    if(!bossTop.document) return;
		    //隐藏select
		    var selGroup = bossTop.document.getElementsByTagName("select");
			for (var i = 0; i < selGroup.length; i++)
			{
			  selGroup[i].oldVState=selGroup[i].style.visibility;
				selGroup[i].style.visibility = "hidden";
			}
			var h=bossTop.document.body.clientHeight+20;
			var w=bossTop.document.body.offsetWidth;
		    
		    var iframe="";
		    if(document.all){
		        iframe=bossTop.document.createElement("<iframe src=\"\" id='"+id+"' style='border-style:none;position:absolute;z-index:10000;left:0px;top:0px;width:"+w+"px;filter:alpha(opacity=35);height:"+h+"px;'></iframe>");
		    }else{
		        iframe = bossTop.document.createElement('iframe');
		        iframe.id = id;
		        iframe.setAttribute("style","border-style:none;position:absolute;z-index:10000;left:0px;top:0px;width:"+w+"px;opacity:0.5;height:"+h+"px;");
		    }
		    
		    
		    bossTop.document.body.appendChild(iframe);
		    if(id.substring(0,id.length-1)=="showCover"){
			    	iframe.style.zIndex="10005";
			  }
		    if(bossTop.document.getElementById(id)) bossTop.document.getElementById(id).src=globalPathRoot+"npage/public/blank_block.html";
		    iframe=null;
		}else{
			//隐藏select
			var selGroup = document.getElementsByTagName("select");
			for (var i = 0; i < selGroup.length; i++)
			{
			  selGroup[i].oldVState=selGroup[i].style.visibility;
				selGroup[i].style.visibility = "hidden";
			}
				
		    var h1 = window.document.body.scrollHeight+20;
		    var h11=document.body.offsetHeight+20;
		    h1=h1>h11?h1:h11;
		    var w1 = window.document.body.scrollWidth;
		    var w11=window.document.body.offsetWidth;
		    w1=w1>w11?w1:w11;
		    var winH1 = document.documentElement.scrollHeight;
		    var winH11=document.documentElement.clientHeight;
		    winH1=winH1>winH11?winH1:winH11;
		    var winW1 = document.documentElement.scrollWidth;
		    var winW11=document.documentElement.clientWidth;
		    winW1=winW1>winW11?winW1:winW11;
		    if(h1 < winH1){
			    h1 = winH1;
		    }
		    if(w1 < winW1){
			    w1 = winW1;
		    }
	 	    var xDis1 = 0;
		    var yDis1 = 0;
		    
		    var iframe="";
		    if(document.all){
		        iframe=document.createElement("<iframe src=\"\" id=\""+id+"\" style=\"border-style:none;position:absolute;z-index:10000;left:"+xDis1+"px;top:"+yDis1+"px;width:"+w1+"px;filter:alpha(opacity=35);height:"+h1+"px;\"></iframe>");
		    }else{
		        iframe = document.createElement('iframe');
		        iframe.id = id;
		        iframe.setAttribute("style","border-style:none;position:absolute;z-index:10000;left:"+xDis1+"px;top:"+yDis1+"px;width:"+w1+"px;opacity:0.5;height:"+h1+"px;");
		    }
		    
		    document.body.appendChild(iframe);
		    if(document.getElementById(id)) 
		    document.getElementById(id).src=globalPathRoot+"npage/public/blank_block.html";
		    iframe=null;
		}
	if (document.all)
		window.attachEvent("onunload",function(){removeWinCover(bossTop,id)});
	else
		window.addEventListener("onunload",function(){removeWinCover(bossTop,id)},false); 
}


// 关闭窗口蒙板
function removeWinCover(bossTop,id){
		
		if(typeof(id)== "undefined")
		{
				id="winCover";
		}
		
		if(bossTop)
		{
			if(!bossTop.document) return;
				var iframe=bossTop.document.getElementById(id);
				  if(iframe != undefined){
				  		//隐藏select
				  	var selGroup = bossTop.document.getElementsByTagName("select");
					for (var i = 0; i < selGroup.length; i++)
					{
						if(selGroup[i].oldVState!=undefined)
							selGroup[i].style.visibility=selGroup[i].oldVState;
						else 
							selGroup[i].style.visibility="visible";
					}
						
				  	iframe.src = "about:blank";
				  	iframe.contentWindow.document.clear();
					bossTop.document.body.removeChild(iframe);
					iframe=null;
					if(document.all)CollectGarbage();
		      }
		}else{
	    var iframe=document.getElementById(id);
	    if(iframe != undefined){
	    	
	    	//隐藏select
	    	  var selGroup = document.getElementsByTagName("select");
	        for (var i = 0; i < selGroup.length; i++)
	        {
	          if(selGroup[i].oldVState!=undefined)
	          	 selGroup[i].style.visibility=selGroup[i].oldVState;
		        else selGroup[i].style.visibility="visible";
	        }
	        
	    	iframe.src = "about:blank"; 
		  	iframe.contentWindow.document.clear();
		    document.body.removeChild(iframe);
		    iframe=null;
		    if(document.all)CollectGarbage();
	    }
		}
}


/* 创建DIV窗口
 * 使用iFrame屏蔽后面的下拉框。
 * winURL 弹出页面URL地址
 * winWidth 弹出窗口宽度
 * winHeight 弹出窗口高度
 * winTitle 弹出窗口标题
 */
openDivWin=function (winURL, winTitle, winWidth, winHeight,closeFunc){
	
	if(document.getElementById("divWin")){
		removeDivWin("divWin");
	}
	showWinCover();
	
	var divWin = document.createElement("div");
	divWin.setAttribute("id","divWin");
	divWin.className="window";
	
	var caption = document.createElement("div");
	caption.className="caption";
	  
	var span = document.createElement("span");
	span.className="text";
	span.innerHTML=winTitle;
	  
	var _a = document.createElement("a");
	_a.setAttribute("href","#this");
	  
	var _close = document.createElement("div");
	_close.className="close";
	_close.onclick=function(){
			if(closeFunc){
				removeDivWin("divWin");
				window.eval(closeFunc);
			}else{
				removeDivWin("divWin");
			}
	}
	  
	var box = document.createElement("div");
	box.className="box";

	var iframe = document.createElement("iframe");
	setTimeout(function(){iframe.src=winURL},0);
	iframe.style.borderWidth="0";
	iframe.style.width="100%";
	iframe.style.height="100%";
	iframe.frameBorder="0";

	_a.appendChild(_close);
	caption.appendChild(span);
	caption.appendChild(_a);
	box.appendChild(iframe);
		
	divWin.appendChild(caption);
	divWin.appendChild(box);
	  
	document.body.appendChild(divWin);
	$("#divWin .box").height(winHeight+'px');
	$("#divWin").width(winWidth+'px');

	var h = getScrollTop();
	var w1 = getScrollLeft();
	var w = getClientWidth();
	$("#divWin").css("top",h+10);
	$("#divWin").css("left",w/2 - $("#divWin").width()/2 + w1);
	
}

/* 创建DIV窗口
 * 使用iFrame屏蔽后面的下拉框。
 * winURL 弹出页面URL地址
 * winWidth 弹出窗口宽度
 * winHeight 弹出窗口高度
 * winTitle 弹出窗口标题
 * closeFunc 点击X关闭弹出窗口时调用的回调函数
 * closeFlag 是否显示 X 按钮,默认不写为显示
 */

openDivWin2=function (winURL, winTitle, winWidth, winHeight,closeFunc,closeFlag){
	
	var winNum = $(".window").length;
	var winID = "divWin"+(winNum+1);
	var coverID = "winCover"+(winNum+1);
	showWinCover(window,coverID);
	
	var divWin = document.createElement("div");
	divWin.setAttribute("id",winID);
	divWin.className="window";
	
	var caption = document.createElement("div");
	caption.className="caption";
	  
	var span = document.createElement("span");
	span.className="text";
	span.innerHTML=winTitle;
	  
	var _a = document.createElement("a");
	_a.setAttribute("href","#this");
	  
	var _close = document.createElement("div");
	_close.className="close";
	_close.onclick=function(){
			if(closeFunc){
					removeDivWin2(winID,coverID);
					window.eval(closeFunc);
			}else{
					removeDivWin2(winID,coverID);
			}
	}
	  
	var box = document.createElement("div");
	box.className="box";

	var iframe = document.createElement("iframe");
	setTimeout(function(){iframe.src=winURL},0);
	iframe.style.borderWidth="0";
	iframe.style.width="100%";
	iframe.style.height="100%";
	iframe.frameBorder="0";

	if(closeFlag!=false){
		_a.appendChild(_close);
		caption.appendChild(span);
		caption.appendChild(_a);
	}
	box.appendChild(iframe);
		
	divWin.appendChild(caption);
	divWin.appendChild(box);
	  
	document.body.appendChild(divWin);
	
	$("#" + winID + " .box").height(winHeight+'px');
	$("#" + winID).width(winWidth+'px');

	var h = getScrollTop();
	var w1 = getScrollLeft();
	var w = getClientWidth();
	$("#" + winID).css("top",h+10);
	$("#" + winID).css("left",w/2 - $("#" + winID).width()/2 + w1);
	//dragDialog(winID);
	
}

//关闭DIV窗口;右上角关闭按钮使用
removeDivWin=function (winID){
	var winID=document.getElementById(winID);
	var ifram=winID.getElementsByTagName("iframe")[0];
	ifram.src = "about:blank";
	
 	ifram.contentWindow.document.clear();
	ifram.parentNode.removeChild(ifram);
	if(document.all)CollectGarbage();
	winID.innerHTML="";
	winID.parentNode.removeChild(winID);
	removeWinCover();
}

removeDivWin2=function (winID,coverID){
	var winID=document.getElementById(winID);
	var ifram=winID.getElementsByTagName("iframe")[0];
	ifram.src = "about:blank";
  	ifram.contentWindow.document.clear();
	ifram.parentNode.removeChild(ifram);
	if(document.all)CollectGarbage();
	winID.innerHTML="";
	winID.parentNode.removeChild(winID);
	removeWinCover(window,coverID);
}

// 关闭DIV窗口;窗口内部调用
function closeDivWin(obj){
	if(!obj){
		obj = parent;
	}
	obj.$(".window .close:last").click();
}
   
// 关闭所有DIV窗口：窗口内部调用时obj可以不传；窗口外部调用时obj传this
function closeAllDivWin(obj){
	if(!obj){
		obj = parent;
	}
	obj.$(".window .close").click();
}

//取自客服的滑框效果
var msn_popmenu = null;
var msn_count = 0;

	//function similarMSNPop(msgContent){
slideDialog=function (msgContent,_timeout){
    if(msn_popmenu == null){
    	var MSG1 = new CLASS_MSN_MESSAGE(180, 120, "");
		msn_popmenu = MSG1;
		MSG1.show();
    }else{
    	msn_popmenu.reshow();
    	}	
	similarMSNPop_local(msgContent,_timeout);	
}
	
function similarMSNPop_local(msgContent,_timeout){
    if(document.all){
	    msn_count++;
		var imgClose=msn_popmenu.oPopup.document.createElement("img");
	    imgClose.src=globalPathRoot+"nresources/default/images/icon_close_off.gif";
		imgClose.style.cursor="pointer";
		imgClose.onmouseover=function()
		{
			imgClose.src=globalPathRoot+"nresources/default/images/icon_close_on.gif";
		}
		imgClose.onmouseout=function()
		{
			imgClose.src=globalPathRoot+"nresources/default/images/icon_close_off.gif";
		}
		imgClose.onclick=function()
		{
			hiddenList(overDiv,120);
		}
		imgClose.setAttribute("id","msgImg");
		var titleDiv=msn_popmenu.oPopup.document.createElement("div");
		titleDiv.setAttribute("id","msgTitle");
		var titleDivTxt=msn_popmenu.oPopup.document.createTextNode("弹出框");
		var contentDiv=msn_popmenu.oPopup.document.createElement("div");
		contentDiv.setAttribute("id","msgContent");
		contentDiv.innerHTML=msgContent;
		var overDiv = msn_popmenu.oPopup.document.createElement("div");
		overDiv.setAttribute("id","msg");
		overDiv.style.display="none";
		overDiv.style.overflow="hidden";
		
		overDiv.onclick=function(){
			//hiddenList(overDiv,120);
		}
		
		titleDiv.appendChild(imgClose);
		titleDiv.appendChild(titleDivTxt);
		overDiv.appendChild(titleDiv);
		overDiv.appendChild(contentDiv);
		
		var bodyHtml=msn_popmenu.oPopup.document.getElementsByTagName("body");
		bodyHtml[0].appendChild(overDiv);
		
		showList(overDiv,120); 
		if(msn_popmenu.oPopup.document.getElementById("overDiv")) return false;
		
		if(_timeout){
			_timeout = parseInt(_timeout);	
		}else{
			_timeout=5000;
		}
		var hidett = setTimeout(function(){hiddenList(overDiv,120)},_timeout);
		overDiv.setAttribute("hidett",hidett);
	}else{
	    
	    var imgClose=document.createElement("img");
		imgClose.src=globalPathRoot+"nresources/default/images/icon_close_off.gif";
		imgClose.style.cursor="pointer";
		imgClose.onmouseover=function()
		{
			imgClose.src=globalPathRoot+"nresources/default/images/icon_close_off.gif";
		}
		imgClose.onmouseout=function()
		{
			imgClose.src=globalPathRoot+"nresources/default/images/icon_close_off.gif";
		}
		imgClose.onclick=function()
		{
			hiddenList(overDiv,120);
		}
		imgClose.setAttribute("id","msgImg");
		var titleDiv=document.createElement("div");
		titleDiv.setAttribute("id","msgTitle");
		var titleDivTxt=document.createTextNode("弹出框");
		var contentDiv=document.createElement("div");
		contentDiv.setAttribute("id","msgContent");
		contentDiv.innerHTML=msgContent;
		var overDiv = document.createElement("div");
		overDiv.setAttribute("id","msg");
		overDiv.style.display="none";
		overDiv.style.overflow="hidden";
		titleDiv.appendChild(imgClose);
		titleDiv.appendChild(titleDivTxt);
		overDiv.appendChild(titleDiv);
		overDiv.appendChild(contentDiv);
		var bodyHtml=document.getElementsByTagName("body");
		bodyHtml[0].appendChild(overDiv);
		//contentDiv.innerHTML=msgContent;
		showList(overDiv,120); 
		if(document.getElementById("overDiv")) return false;
		setTimeout(function(){hiddenList(overDiv,120)},_timeout);
		//overDiv.parentNode.removeChild(overDiv);
	}
	
}

function showList(objectId,mH)
{
	var h =0;
	var maxHeight = mH;
	var anim = function()
	{ 
		h += 5;
		if(h > maxHeight)
		{ 
			objectId.style.height = mH+"px";  
			if(tt){window.clearInterval(tt);}  
		} 
		else
		{ 	
			objectId.style.height = h + "px";
			objectId.style.display="block";

		}
	} 
	var tt = window.setInterval(anim,15);  
} 

function hiddenList(objectId,mH)
{ 
	var h =mH; 
	var anim = function()
	{ 
		h -= 5;
		if(h <= 0)
		{ 
			objectId.style.display="none";
			if(tt){window.clearInterval(tt);
			if(objectId.getAttribute("hidett")!=null)
			{
				window.clearInterval(objectId.getAttribute("hidett"));
				}
			if(h>=-5){
			msn_count--;
			if(msn_count<0)
			   msn_count = 0;
			if(msn_count==0){
				msn_popmenu.stopthis();
				msn_popmenu.hide();
			}
			}
			}
			objectId.parentNode.removeChild(objectId);
		} 
		else
		{ 
			objectId.style.height = h + "px";
		} 
	} 
	var tt = window.setInterval(anim,15); 
} 

function CLASS_MSN_MESSAGE(width, height, title) {
	this.title = title;
	this.width = width ? width : 180;
	this.height = height ? height : 120;
	this.timeout = 500;
	this.speed = 150;
	this.step = 5;
	this.right = screen.width - 1;
	this.bottom = screen.height;
	this.left = this.right - this.width;
	this.top = this.bottom - this.height;
	this.timer = 0;
	this.pause = false;
	this.close = false;
	this.autoHide = true;

	this.clickClose = false;
}

CLASS_MSN_MESSAGE.prototype.hide = function () {
	this.oPopup.hide();
};

CLASS_MSN_MESSAGE.prototype.onunload = function () {
	return true;
};

CLASS_MSN_MESSAGE.prototype.show = function () {
  this.oPopup = window.createPopup?window.createPopup():__createPopup();
	this.Pop = this.oPopup;
	var w = this.width;
	var h = this.height;
	var x = this.right-this.width;
	var y = this.bottom-this.height;
	var str = '';
	var me = this.Pop;
	
	if(document.createStyleSheet) {
        this.oPopup.document.createStyleSheet().addImport(globalPathRoot+'nresources/default/css/layer_ob.css');
    }
    else {
        var newSS=document.createElement('link');
        newSS.rel='stylesheet';
        newSS.href=globalPathRoot+'nresources/default/css/layer_ob.css';
        document.getElementsByTagName("head")[0].appendChild(newSS);
    }
	
  
	this.oPopup.document.body.innerHTML = str;
	var fun = function () {
	    if(msn_count!=0)
		me.show(x, y, w, h);
	}
	this.timer = window.setInterval(fun, this.speed);	
	this.close = false;
};

//消息停止方法  
CLASS_MSN_MESSAGE.prototype.stopthis = function () {	
  
	 window.clearInterval(this.timer);
	 this.close = true;	
};

//消息显示方法  
CLASS_MSN_MESSAGE.prototype.reshow = function () {	
  if(this.close==false){
  		return;
  	}
	var w = this.width;
	var h = this.height;
	var x = this.right-this.width;
	var y = this.bottom-this.height;
	var me = this.Pop;
	
	var fun = function () {
	    if(msn_count!=0)
		me.show(x, y, w, h);
	}
	this.timer = window.setInterval(fun, this.speed);	
	this.close = false;	
};

function __createPopup() {
	var SetElementStyles = function( element, styleDict ) {
		var style = element.style ;
		for ( var styleName in styleDict )style[ styleName ] = styleDict[ styleName ] ; 
	}
	var eDiv = document.createElement( 'div' ); 
	SetElementStyles( eDiv, { 'position': 'absolute', 'top': 0 + 'px', 'left': 0 + 'px', 'width': 0 + 'px', 'height': 0 + 'px', 'zIndex': 1000, 'display' : 'none', 'overflow' : 'hidden' } ) ;
	eDiv.body = eDiv ;
	var opened = false ;
	var setOpened = function( b ) {
		opened = b; 
	}
	var getOpened = function() {
		return opened ; 
	}
	var getCoordinates = function( oElement ) {
		var coordinates = {x:0,y:0} ; 
		while( oElement ) {
			coordinates.x += oElement.offsetLeft ;
			coordinates.y += oElement.offsetTop ;
			oElement = oElement.offsetParent ;
		}
		return coordinates ;
	}
	return {htmlTxt : '', document : eDiv, isOpen : getOpened(), isShow : false, hide : function() { SetElementStyles( eDiv, { 'top': 0 + 'px', 'left': 0 + 'px', 'width': 0 + 'px', 'height': 0 + 'px', 'display' : 'none' } ) ; eDiv.innerHTML = '' ; this.isShow = false ; }, show : function( iX, iY, iWidth, iHeight, oElement ) { if (!getOpened()) { document.body.appendChild( eDiv ) ; setOpened( true ) ; } ; this.htmlTxt = eDiv.innerHTML ; if (this.isShow) { this.hide() ; } ; eDiv.innerHTML = this.htmlTxt ; var coordinates = getCoordinates ( oElement ) ; eDiv.style.top = ( iX + coordinates.x ) + 'px' ; eDiv.style.left = ( iY + coordinates.y ) + 'px' ; eDiv.style.width = iWidth + 'px' ; eDiv.style.height = iHeight + 'px' ; eDiv.style.display = 'block' ; this.isShow = true ; } }
};
	
	//jiaybc 2010/10/9
	//c_url:当前iframe的url    url2：跳转目的地
function iframeGoto(c_url,url2){
	if(c_url){
		var len=document.getElementsByTagName("iframe").length
		var p_src=''//生成iframe时，如果地址含有../ 或多个../ 就去掉
		var o;//iframe 对象
		var HTTP_1=c_url.split("/");//
		var url2_ = url2.split("../");
		for(var i=0; i<len;i++){//遍历比较url是不是相似
			p_src=(document.getElementsByTagName("iframe")[i].src).split(/\.\.\//)
			//alert(c_url+"  ==================================   "+p_src)
			if(c_url.indexOf(p_src[p_src.length-1])!=-1){//比较url  定位iframe对象
				
				o=document.getElementsByTagName("iframe")[i]
				for (var j=0;j<url2_.length;j++){
					HTTP_1.pop();
				}
				var HTTP_2 = HTTP_1.join("/")+"/"+url2_[url2_.length-1]
			}else if(i==(len-1)){
				alert("system.js iframeGoto() 未能够找到这个iframe,请检查传递参数是否正确   接口：iframeGoto(document.URL,url)")
			}
		}

		o.src="about:blank"
		if(document.all){
			o.contentWindow.document.clear();
			CollectGarbage();
		}
		this.id=o.id
		this.src=HTTP_2	
		setTimeout("iframeGoto()",10)
	}else{
		try{
			document.getElementById(this.id).src = this.src;
			this.src=null
			this.id=null
		}catch(e){}
	}
}
