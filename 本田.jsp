<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>本田</title>

<style type="text/css">

        .imgBox{
            border-top: 2px solid cadetblue;
            width: 100%;
            height: 250px;
            margin: 0 auto;

        }

        .imgBox img{
            width: 80%;
            height: 500px;
            margin: 0 auto;
            padding-top: 30px;

        }

        .img1{
            display: block;
        }

        .img2{
            display: none;
        }

        .img3{
            display: none;
        }
		
		
		
.box{
	position: relative;
	width: 1000px;
	height: 600px;
	margin: 50px auto;
	background-color: aquamarine;
	position: relative;
}
.box .ul_1{
	overflow: hidden;
	width: 1000px;
	height: 600px;
}
.box .ul_1 li{
	width: 1000px;
	height: 600px;
	border: 1px solid #f5e5;
}
.box .ul_1 li img{
	width: 100%;
	height: 100%;
}
.ul_2{
	position: absolute;
	right: 0;
	bottom: 10px;
	z-index: 5;
}
.ul_2 li{
	width: 20px;
	height: 20px;
	background-color: blanchedalmond;
	text-align: center;
	float: left;
}
.ul_2 li a{
	text-align: center;
}

		
		embed {
position: absolute;
top: 1400px;
left: 170px;
width: 80%;
height: 80%;
}
		
		
		
    </style>

</head>
<body>


<table border="1" align="center"  style="width:100%; height:100%; text-align: center" bgcolor="#009999" >
		<tr>
			<td>跨骑车
				
			</td>
			<td>
				踏板车
			</td>
			<td>
				弯梁车
			</td>
			<td>
				电动摩托车
			</td>
		
		</tr>
	</table>
	<span style="font-size: 36px; font-family: unifrakturcook; font-style: normal; font-weight: 700;">GL1800</span>
	<div class="imgBox">
    <img class="img-slide img1" src="/picture/本田1.jpg" alt="1">
    <img class="img-slide img2" src="/picture/本田2.jpg" alt="2">
    <img class="img-slide img3" src="/picture/本田3.jpg" alt="3">
</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	<span style="font-size: 36px; font-family: unifrakturcook; font-style: normal; font-weight: 700;">CBF500</span>
	<div class="box">
		<ul class="ul_1">
			<li><img src="/picture/本田4.jpg" alt="" id="one"></li>
			<li><img src="/picture/本田5.jpg" alt="" id="two"></li>
			<li><img src="/picture/本田6.jpg" alt="" id="three"></li>
		</ul>
		<ul class="ul_2">
			<li><a href="#one">1</a></li>
			<li><a href="#two">2</a></li>
			<li><a href="#three">3</a></li>
		</ul>
	</div>
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>



</body>

<script type="text/javascript">
    var index=0;
    //效果
    function ChangeImg() {
        index++;
        var a=document.getElementsByClassName("img-slide");
        if(index>=a.length) index=0;
        for(var i=0;i<a.length;i++){
            a[i].style.display='none';
        }
        a[index].style.display='block';
    }
    //设置定时器，每隔两秒切换一张图片
    setInterval(ChangeImg,3000);
</script>

</html>