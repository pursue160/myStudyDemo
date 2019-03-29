<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<script src="js-xlsx/xlsx.full.min.js"></script>
<script src="js/readExcelPlug.js"></script>
<link rel="stylesheet" type="text/css"
	href="extjs/ext4.2/resources/css/ext-all.css" />
<script src="extjs/ext-base.js"></script>
<script src="extjs/ext-all.js"></script>
<title>Welcome</title>
</head>
<body>
	<input type="file" onchange="test(this)" />
	<script type="text/javascript">
function test(obj){
	importExcel(obj);
	var win = new Ext.Window({
		    layout:'fit',       //弹出窗口内布局会充满整个窗口;
		    width:1000,          //设置窗口大小;
		    height:800,
		    resizable:true,         //窗口可拖动改变大小;
		    resizeHandles:'se',     //south-east:右下角可拖动;
		    modal:true,             //设置弹窗之后屏蔽掉页面上所有的其他组件;
		    animateTarget:'target', //Ext弹窗从指定的HTML元素弹出或关闭窗口动画;
		    closeAction:'hide', //点击右上角关闭按钮后会执行的操作;
		    closable:false,     //隐藏关闭按钮;
		    draggable:true,     //窗口可拖动;
		    items:[{}],         //默认会生成Ext.Panel类型的对象;并且随窗口大小改变而改变;
	    buttons:[{
	        text:'确定',
	        handler:function(){ //点击后隐藏窗口;
	          win.hide();
	        }
	     },{
	        text:'取消'
	      }]
			//defaultButton:0,      //默认第一个按钮为选中状态,Enter键即可提交;
	    });
		   win.show();
		   //closeAction:'hide':关闭窗口时执行隐藏命令,之后还可以使用show()函数显示刚刚关闭的窗口;
		   //closeAction:'close':关闭窗口时把窗口对象销毁;不能再执行show()了;
		   plain:true              //使窗体主体更融于框架颜色;
}
Ext.get('target').on('click',function(){
     win.show();
   })
</script>
<button id="target">target</button>
</body>
</html>