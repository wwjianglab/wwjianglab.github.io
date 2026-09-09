

<html>
  <head>
    <title></title>
    <script type="text/javascript" src="https://api.map.baidu.com/api?v=3.0&ak=e6kGkTnXrFTIlQvaqIi7AIvmXRFOOhGq"></script>
  </head>

  <body style="overflow: hidden;margin:0px;padding:0px;">
  <table cellpadding="0" cellspacing="0" border="0" width="100%" height="100%">
  	<tr>
  		<td><div id="neweditormap" style="width: 100%; height: 100%;"></div></td>
  	</tr>
  </table>
<script type="text/javascript">
    function getIconNum(id)
    {
    	var nums = 0;
    	if(id == "1")
    	{
    		nums = "0";
    	}
    	if(id == "2")
    	{
    		nums = -23;
    	}
    	if(id == "3")
    	{
    		nums = -46;
    	}
    	if(id == "4")
    	{
    		nums = -69;
    	}
    	if(id == "5")
    	{
    		nums = -92;
    	}
    	return nums;
    }
try
{
	var map = new BMap.Map("neweditormap");
	//map.enableScrollWheelZoom();
	map.enableContinuousZoom();
	var point = new BMap.Point(114.366133,30.542672);    // 创建点坐标
    map.addControl(new BMap.NavigationControl());
    map.centerAndZoom(point, 19);                     // 初始化地图,设置中心点坐标和地图级别。
    var markerstr = "114.365545,30.54273";
    var markerstexts = "";
    var markiframeindex = "1";
    var markiframeindexs = markiframeindex.split(",");
    if(markerstr != "")
    {
    	var markers = markerstr.split("|");
    	var markerstext;
    	if(markerstexts != "")
    	{
    		markerstext = markerstexts.split(",|");
    	}
    	var img = "/system/resource/baidumap/images/vsb_mk_icon_baidu.png";
    	if(markers.length >= 1)
    	{
    		var markerpoint0 = markers[0].split(",");
    		var myIcon = new BMap.Icon(img,new BMap.Size(19,25),{anchor:new BMap.Size(10,24),imageOffset:new BMap.Size(getIconNum(markiframeindexs[0]),-21)});
    		var marker0 = new BMap.Marker(new BMap.Point(markerpoint0[0],markerpoint0[1]), {icon: myIcon});
    		if(markerstexts != "")
    		{
	    		var infoWindow0 = new BMap.InfoWindow("<span style='font-size:11pt;width:210px; line-height:20px;padding-left:10px;padding-right:10px;'>"+markerstext[0]+"</span>",{offset:new BMap.Size(0,-24)});
	    		marker0.addEventListener("mouseover", function()
	    		{
	    			this.openInfoWindow(infoWindow0);
	    		});
	            marker0.addEventListener("mouseout", function()
	    		{
	                this.closeInfoWindow(infoWindow0);
	            });
	        }
            map.addOverlay(marker0);
    	}
    	if(markers.length >= 2)
    	{
    		var markerpoint1 = markers[1].split(",");
    		var myIcon = new BMap.Icon(img,new BMap.Size(19,25),{anchor:new BMap.Size(10,24),imageOffset:new BMap.Size(getIconNum(markiframeindexs[1]),-21)});
    		var marker1 = new BMap.Marker(new BMap.Point(markerpoint1[0],markerpoint1[1]), {icon: myIcon});
    		if(markerstexts != "")
    		{
	    		var infoWindow1 = new BMap.InfoWindow(markerstext[1],{offset:new BMap.Size(0,-24)});
	    		marker1.addEventListener("mouseover", function()
	    		{
	    			this.openInfoWindow(infoWindow1);
	    		});
	            marker1.addEventListener("mouseout", function()
	    		{
	                this.closeInfoWindow(infoWindow1);
	            });
            }
            map.addOverlay(marker1);
    	}
    	if(markers.length >= 3)
    	{
    		var markerpoint2 = markers[2].split(",");
    		var myIcon = new BMap.Icon(img,new BMap.Size(19,25),{anchor:new BMap.Size(10,24),imageOffset:new BMap.Size(getIconNum(markiframeindexs[2]),-21)});
    		var marker2 = new BMap.Marker(new BMap.Point(markerpoint2[0],markerpoint2[1]), {icon: myIcon});
    		if(markerstexts != "")
    		{
	    		var infoWindow2 = new BMap.InfoWindow(markerstext[2],{offset:new BMap.Size(0,-24)});
	    		marker2.addEventListener("mouseover", function()
	    		{
	    			this.openInfoWindow(infoWindow2);
	    		});
	            marker2.addEventListener("mouseout", function()
	    		{
	                this.closeInfoWindow(infoWindow2);
	            });
            }
            map.addOverlay(marker2);
    	}
    	if(markers.length >= 4)
    	{
    		var markerpoint3 = markers[3].split(",");
    		var myIcon = new BMap.Icon(img,new BMap.Size(19,25),{anchor:new BMap.Size(10,24),imageOffset:new BMap.Size(getIconNum(markiframeindexs[3]),-21)});
    		var marker3 = new BMap.Marker(new BMap.Point(markerpoint3[0],markerpoint3[1]), {icon: myIcon});
    		if(markerstexts != "")
    		{
	    		var infoWindow3 = new BMap.InfoWindow(markerstext[3],{offset:new BMap.Size(0,-24)});
	    		infoWindow3.setContent(markerstext[3]);
	    		marker3.addEventListener("mouseover", function()
	    		{
	    			this.openInfoWindow(infoWindow3);
	    		});
	            marker3.addEventListener("mouseout", function()
	    		{
	                this.closeInfoWindow(infoWindow3);
	            });
            }
            map.addOverlay(marker3);
    	}
    	if(markers.length >= 5)
    	{
    		var markerpoint4 = markers[4].split(",");
    		var myIcon = new BMap.Icon(img,new BMap.Size(19,25),{anchor:new BMap.Size(10,24),imageOffset:new BMap.Size(getIconNum(markiframeindexs[4]),-21)});
    		var marker4 = new BMap.Marker(new BMap.Point(markerpoint4[0],markerpoint4[1]), {icon: myIcon});
    		if(markerstexts != "")
    		{
	    		var infoWindow4 = new BMap.InfoWindow(markerstext[4],{offset:new BMap.Size(0,-24)});
	    		infoWindow4.setContent(markerstext[4]);
	    		marker4.addEventListener("mouseover", function()
	    		{
	    			this.openInfoWindow(infoWindow4);
	    		});
	            marker4.addEventListener("mouseout", function()
	    		{
	                this.closeInfoWindow(infoWindow4);
	            });
            }
            map.addOverlay(marker4);
    	}
    }
}
catch(e)
{
}
</script>
</body>
</html>
