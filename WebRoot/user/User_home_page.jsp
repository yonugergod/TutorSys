<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>首页_易教易学网</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<link rel="stylesheet" type="text/css" href="../css/reset.css">
<link rel="stylesheet" type="text/css" href="../css/luara.left.css" />
<script src="../js/area.js"></script>
<script type="text/javascript" src="../js/jquery-1.11.2-min.js"></script>
<script type="text/javascript" src="../js/jquery.SuperSlide.2.1.1.js"></script>
<script src="../js/jquery.luara.0.0.1.min.js"></script>
<script type="text/javascript" src="../js/admin.js"></script>
</head>
<body>
	<!--头部-->
	<div id="headerBar">
		<!--登陆\注册-->
		<div class="topbar">
			<div class="topbox">
				<div class="box_1">
					您好！欢迎来到易学易教网！<a href="<%=path%>/user/User">请登录</a> | <a href="<%=path%>/user/User_register_notice.jsp">免费注册</a>
				</div>
				<div class="box_2">
					<div class="fav">
						<div class="tel">
							<span>全国投诉专线：18359337329</span>
						</div>
						<span>&nbsp;|&nbsp;<a href="javascript:window.external.addFavorite(&#39;http://www.ygjj.com&#39;,&#39;阳光家教网&#39;)">收藏本站</a>
						</span>
					</div>
				</div>
			</div>
		</div>
		<!--Logo\搜索-->

		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="#"><img src="../images/logo.jpg">
					</a>
				</div>
				<!--
            <div class="all fl">
                <div class="head">
                    <p><label class="diqu"></label></p>
                    <p><label class="btn">[更多城市]</label></p>
                </div>
                <div class="cityBox">
                    <div class="head">
                        <span class="title">选择城市</span>
                        <span class="close" onClick="closeFun()">关闭</span>
                    </div>
                    <div class="cont">
                        <div class="c1">
                            <label class="bt">省/直辖市：</label>
                            <ul class="list" id="province"></ul>
                        </div>
                        <ul class="list" style="width: 100%;margin-left: 20px" id="city"></ul>
                    </div>
                </div>
            </div>
           <script>
                $(function(){
                    var this_ity;
                    $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function(_result) {
                        if (remote_ip_info.ret == '1') {
                          this_ity=remote_ip_info.city;
                            $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function(_result) {
                                $.ajax({
                                    type: "GET",
                                    url: "http://wthrcdn.etouch.cn/weather_mini?city="+this_ity,
                                    dataType: "json",
                                    success: function(data){
                                        if(data.status==1000){
                                            var date=[];
                                            var json=data.data;
                                            $(".diqu").html(json.city);
                                        }
                                    }
                                });
                            });
                        }
                    });
                });
                function cityBtn(obj){
                    closeFun();
                    var cityS=$(obj).html();
                    $.getScript('http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=js', function(_result) {
                        $.ajax({
                            type: "GET",
                            url: "http://wthrcdn.etouch.cn/weather_mini?city="+cityS,
                            dataType: "json",
                            success: function(data){
                                if(data.status==1000){
                                    var date=[];
                                    var json=data.data;
                                    $(".diqu").html(json.city);
                                }
                            }
                        });
                    });
                }
                function closeFun() {
                    $("#province").html("");
                    $("#city").html("");
                    $(".cityBox").hide();
                }
            </script>
            -->
				<div class="search_box fl">
					<input type="text" name="search_text" class="search_text fl">
					<input type="button" value="搜 索" class="search_btn fr">
				</div>
				<div class="shopCar fr">
					<span class="shopText fl">购物车</span> <span class="shopNum fl">0</span>
				</div>
			</div>
		</div>
		<!--导航栏-->
		<div class="nav clearfix">
			<div class="comWidth">
				<ul>
					<li><a href="#">首页</a></li>
					<li class="sunav"><a href="#">教师秀</a> <span>
							<ul>
								<li><a href="#">幼教老师</a>
								</li>
								<li><a href="#">小学老师</a>
								</li>
								<li><a href="#">初中老师</a>
								</li>
								<li><a href="#">高中老师</a>
								</li>
								<li><a href="#">应届高考生</a>
								</li>
								<li><a href="#">文科状元</a>
								</li>
								<li><a href="#">理科状元</a>
								</li>
							</ul> </span></li>
					<li class="sunav"><a href="#">课程教辅</a> <span>
							<ul>
								<li><a href="#">语文</a>
								</li>
								<li><a href="#">数学</a>
								</li>
								<li><a href="#">外文</a>
								</li>
								<li><a href="#">思想政治</a>
								</li>
								<li><a href="#">历史</a>
								</li>
								<li><a href="#">地理</a>
								</li>
								<li><a href="#">物理</a>
								</li>
								<li><a href="#">化学</a>
								</li>
								<li><a href="#">生物</a>
								</li>
							</ul> </span></li>
					<li class="sunav"><a href="#">课外兴趣</a> <span>
							<ul>
								<li><a href="#">声乐</a>
								</li>
								<li><a href="#">美术</a>
								</li>
								<li><a href="#">形体</a>
								</li>
								<li><a href="#">体能/运动</a>
								</li>
								<li><a href="#">信息技术</a>
								</li>
							</ul> </span></li>
					<li class="sunav"><a href="#">教育资讯</a>
					</li>
					<li class="sunav"><a href="#">教育心得</a>
					</li>
					<li class="sunav"><a href="#">BBS论坛</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!--展示-->
	<div class="show">
		<div class="comWidth">
			<!--图片轮换-->
			<div class="example2 fr">
				<ul>
					<li><a href="#"><img src="../images/1.jpg" alt="1" />
					</a>
					</li>
					<li><a href="#"><img src="../images/2.jpg" alt="2" />
					</a>
					</li>
					<li><a href="#"><img src="../images/3.jpg" alt="3" />
					</a>
					</li>
					<li><a href="#"><img src="../images/4.jpg" alt="4" />
					</a>
					</li>
				</ul>
			</div>
			<!--Luara图片切换骨架end-->
			<script type="text/javascript">
				$(function() {
					//调用Luara示例
					$(".example2").luara({
						width : "500",
						height : "334",
						interval : 4500,
						selected : "seleted",
						deriction : "left"
					});
				});
			</script>
			<!--showimg-->
			<div class="showimg"></div>
			<!--教师-->
			<div>
				<div class="idxright fr">
					<div>
						<a href="#" target="_blank" rel="nofollow"><img
							src="../images/qy.jpg" alt="签约教员" border="0">
						</a>
					</div>
					<!-- 最新家教记录 -->
					<div class="zcjy">
						<div class="tit">最新成功家教记录</div>
						<div class="content">
							<ul>
								<a href="#"><li class="c1">12-08</li>
								<li class="c2">李教员</li>
								<li class="c3">幼儿陪玩家教</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">12-07</li>
								<li class="c2">朱教员</li>
								<li class="c3">数学家教</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">12-07</li>
								<li class="c2">徐教员</li>
								<li class="c3">英语家教</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">11-31</li>
								<li class="c2">何教员</li>
								<li class="c3">高三全辅</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">11-28</li>
								<li class="c2">丁教员</li>
								<li class="c3">声乐家教</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">11-16</li>
								<li class="c2">连教员</li>
								<li class="c3">IT技术家教</li>
								</a>
							</ul>
							<ul>
								<a href="#"><li class="c1">11-11</li>
								<li class="c2">姚教员</li>
								<li class="c3">排球家教</li>
								</a>
							</ul>
						</div>
					</div>
				</div>
				<div class="layout_certify" id="layout_certify">
					<div class="title_style3" id="certify_li">
						<h2 class="tith">认证家教</h2>
						<ul>
							<li class="active">
								<a href="#">数学家教<em></em></a>
							</li>
							<li>
								<a href="#">语文家教<em></em></a>
							</li>
							<li>
								<a href="#">英语家教<em></em></a>
							</li>
							<li>
								<a href="#">物理家教<em></em></a>
							</li>
							<li>
								<a href="#">化学家教<em></em></a>
							</li>
							<li>
								<a href="#">生物家教<em></em></a>
							</li>
							<li>
								<a href="#">其他学科<em></em></a>
							</li>
						</ul>
					</div>
					<div class="cont" style="display: none;">
						<div class="certify_box">
							<ul class="clearfix">
								<!-- 教师数据循环begin -->
								<s:iterator value="#session.mathList" var="math">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="#" class="img-h" target="_blank"><img style="width: 102px; height: 136px;" src="../images/xiaoai.png" alt="Array家教小艾" onerror="nofind();"></a>
											<a href="#" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="#" target="_blank"><strong class="mr"><s:property value="#math.id"/></strong>
												</a> 
												<em class="renzheng-2 mr">学生认证</em>&nbsp;
												<em class="renzheng-4 mr">身份认证</em>&nbsp;
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人性格开朗，擅长于人交流。本科...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong>100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="#" target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl>
								</li>
								</s:iterator>
								<!-- 教师循环end -->
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/242035.html" class="img-h"
												target="_blank"><img
												style="width: 102px; height: 136px;"
												src="../images/gonghuifang.jpg" alt="小学数学家教龚慧芳"
												onerror="nofind();">
											</a><a href="bj/jiajiao/242035.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/242035.html" target="_blank"><strong
													class="mr">龚慧芳</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>大三女生，在新东方任职过一年助教...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong>70
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/242035.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl>
								</li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/241661.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="小学托管家教VV"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/241661.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/241661.html" target="_blank"> <strong
													class="mr">VV</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">专职家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>教过各种不同情况的孩子，有着丰富...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 120
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/241661.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/241375.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中数学家教黄谢平"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/241375.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/241375.html" target="_blank"> <strong
													class="mr">黄谢平</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>黄谢平 男 清华大学水利系 大三...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/241375.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<div class="more">
							<a href="#" target="_blank">查看更多数学家教 &gt;</a>
						</div>
					</div>
					<div class="cont" style="display:none;">
						<div class="certify_box">
							<ul class="">
								<li>
									<dl class="">
										<dt class="img">
											<a href="bj/jiajiao/239874.html" class="img-h"
												target="_blank"><img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="小学语文家教荀荀"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/239874.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/239874.html" target="_blank"><strong
													class="mr">荀荀</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人现在大一，工业设计专业，想找...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong>50
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/239874.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/239375.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/426534_1499008982faOp.jpg.thumb.jpg"
												alt="初中文综家教孙浩" onerror="nofind();"> </a><a
												href="bj/jiajiao/239375.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/239375.html" target="_blank"> <strong
													class="mr">孙浩</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人初中，高中均就读于北京市十一...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 70
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/239375.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/238720.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/425481_1498570934wV8C.jpg.thumb.jpg"
												alt="初中文综家教小王老师" onerror="nofind();"> </a><a
												href="bj/jiajiao/238720.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/238720.html" target="_blank"> <strong
													class="mr">小王老师</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>北京大学中文研究生一年级在读，湖...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 160
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/238720.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/235171.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="小学陪读家教黄从浩"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/235171.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/235171.html" target="_blank"> <strong
													class="mr">黄从浩</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>高考以全省文科第721名的成绩考...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 90
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/235171.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/yuwen/" target="_blank">查看更多语文家教 &gt;</a>
						</div>
					</div>
					<div class="cont" style="display:none;">
						<div class="certify_box">
							<ul class="clearfix">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="#" class="img-h" target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/432086_1504795278o0bR.jpg.thumb.jpg"
												alt="Array家教小艾" onerror="nofind();"> </a><a href="#"
												class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="#" target="_blank"> <strong class="mr">小艾</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-5 mr">本科毕业证</em>&nbsp;<em
													class="renzheng-7 mr">英语四级认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人性格开朗，擅长于人交流。本科...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="#" target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/242035.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/430797_1503316898sai1.jpg.thumb.jpg"
												alt="小学数学家教龚慧芳" onerror="nofind();"> </a><a
												href="bj/jiajiao/242035.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/242035.html" target="_blank"> <strong
													class="mr">龚慧芳</strong> </a> <em class="renzheng-2 mr">学生证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>大三女生，在新东方任职过一年助教...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 70
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/242035.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/240967.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/428993_1500861434889F.jpg.thumb.jpg"
												alt="初中英语家教学而思" onerror="nofind();"> </a><a
												href="bj/jiajiao/240967.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/240967.html" target="_blank"> <strong
													class="mr">学而思</strong> </a> <em class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">辅导机构</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>成立于2007年致力于培养初高中...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 260
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/240967.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/240861.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/428817_1501293729Ydga.jpg.thumb.jpg"
												alt="初中数学家教初心" onerror="nofind();"> </a><a
												href="bj/jiajiao/240861.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/240861.html" target="_blank"> <strong
													class="mr">初心</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-10 mr">自定义认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>考研成绩专业第一，大学时期获得北...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 75
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/240861.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/yingyu/" target="_blank">查看更多英语家教 &gt;</a>
						</div>
					</div>
					<div class="cont" style="display:none;">
						<div class="certify_box">
							<ul class="clearfix">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/242249.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/431166_1503846932p7pP.jpg.thumb.jpg"
												alt="初中物理家教无涯" onerror="nofind();"> </a><a
												href="bj/jiajiao/242249.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/242249.html" target="_blank"><strong
													class="mr">无涯</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>高中时理科生，全省1519名（全...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/242249.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/241784.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="高中数学家教李江"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/241784.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/241784.html" target="_blank"><strong
													class="mr">李江</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-7 mr">英语四级认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人高中就读于人大附中，大学就读...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/241784.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/238128.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中物理家教吴桂燕"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/238128.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/238128.html" target="_blank"><strong
													class="mr">吴桂燕</strong>
												</a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人阳光自信 于2016年考上北...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 60
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/238128.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/236900.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/421925_1494498581odOz.jpg.thumb.jpg"
												alt="小学数学家教闫小磊" onerror="nofind();"> </a><a
												href="bj/jiajiao/236900.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/236900.html" target="_blank"><strong
													class="mr">闫小磊</strong>
												</a> <em class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-8 mr">英语六级认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人中考成绩全县排名38，高中期...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/236900.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/wuli/" target="_blank">查看更多物理家教 &gt;</a>
						</div>
					</div>
					<div class="cont" style="display:none;">
						<div class="certify_box">
							<ul class="clearfix">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/240406.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中理综家教陈凯锋"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/240406.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/240406.html" target="_blank"> <strong
													class="mr">陈凯锋</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人性格开朗，乐观向上，爱好广泛...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 80
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/240406.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/239809.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中化学家教盼夏"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/239809.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/239809.html" target="_blank"> <strong
													class="mr">盼夏</strong> </a> <em class="renzheng-1 mr">教师资格认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-5 mr">本科毕业证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>我是化学专业的在读研究生，就读于...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 120
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/239809.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/238128.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中物理家教吴桂燕"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/238128.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/238128.html" target="_blank"> <strong
													class="mr">吴桂燕</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人阳光自信 于2016年考上北...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 60
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/238128.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/236850.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中理综家教李同学"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/236850.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/236850.html" target="_blank"> <strong
													class="mr">李同学</strong> </a> <em class="renzheng-2 mr">学生证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本科期间曾获校三好学生及其他奖学...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 80
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/236850.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/huaxue/" target="_blank">查看更多化学家教 &gt;</a>
						</div>
					</div>
					<div class="cont" style="display:none;">
						<div class="certify_box">
							<ul class="clearfix">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/238128.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="初中物理家教吴桂燕"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/238128.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/238128.html" target="_blank"> <strong
													class="mr">吴桂燕</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本人阳光自信 于2016年考上北...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 60
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/238128.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/234992.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/418619_14894176967OG2.jpg.thumb.jpg"
												alt="初中生物家教徐良" onerror="nofind();"> </a><a
												href="bj/jiajiao/234992.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/234992.html" target="_blank"> <strong
													class="mr">徐良</strong> </a> <em class="renzheng-3 mr">工作证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-11 mr">研究生毕业证</em>
											</div>
											<div class="ug">专职家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>本科，硕士均为生物专业，经过系统...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 120
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/234992.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/234228.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/417412_1488520923qFF6.jpg.thumb.jpg"
												alt="初中数学家教吴迪" onerror="nofind();"> </a><a
												href="bj/jiajiao/234228.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/234228.html" target="_blank"> <strong
													class="mr">吴迪</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-7 mr">英语四级认证</em>&nbsp;<em
													class="renzheng-8 mr">英语六级认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>研究生一年级在读，英语成绩优异，...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 75
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/234228.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/233836.html" class="img-h"
												target="_blank"> <img class="img-h"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/nopic2.png"
												width="100px" height="100px" alt="高中生物家教小晨子"
												style="height: 102px; width: 102px; margin-left: 0px;">
											</a><a href="bj/jiajiao/233836.html" class="design"
												target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/233836.html" target="_blank"> <strong
													class="mr">小晨子</strong> </a> <em class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>英语：四六级600+，目前准备托...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 80
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/233836.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/shengwu/" target="_blank">查看更多生物家教 &gt;</a>
						</div>
					</div>
					<div class="cont">
						<div class="certify_box">
							<ul class="clearfix">
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/69020.html" class="img-h" target="_blank">
												<img style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/117311_14790601729qaL.jpg.thumb.jpg"
												alt="中考数学家教杜老师" onerror="nofind();"> </a> <a
												href="bj/jiajiao/69020.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/69020.html" target="_blank"> <strong
													class="mr"> 杜老师</strong> </a> <em class="iv mr">v</em><em
													class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>&nbsp;<em
													class="renzheng-5 mr">本科毕业证</em>
											</div>
											<div class="ug">专职家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>专补初中数学，一对一家教上门。6...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 220-200元/小时
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/69020.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/238062.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/424321_1496741033H1NJ.jpg.thumb.jpg"
												alt="小学英文版教材家教李天宇" onerror="nofind();"> </a> <a
												href="bj/jiajiao/238062.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/238062.html" target="_blank"> <strong
													class="mr"> 李天宇</strong> </a> <em class="iv mr">v</em><em
													class="renzheng-2 mr">学生证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>我是来自北京市第一届高端技能人才...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 75
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/238062.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/224925.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/399728_1471231220hnvN.jpg.thumb.jpg"
												alt="初中物理家教余老师" onerror="nofind();"> </a> <a
												href="bj/jiajiao/224925.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/224925.html" target="_blank"> <strong
													class="mr"> 余老师</strong> </a> <em class="iv mr">v</em><em
													class="renzheng-2 mr">学生证认证</em>&nbsp;<em
													class="renzheng-4 mr">身份证认证</em>
											</div>
											<div class="ug">大学生家教</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>作为一名来自西南贫困山区的孩子，...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 100
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/224925.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
								<li>
									<dl class="clearfix">
										<dt class="img">
											<a href="bj/jiajiao/169922.html" class="img-h"
												target="_blank"> <img
												style="width: 102px; height: 136px;"
												src="./家教网_家教中心_【常青藤家教网-全国连锁专业权威】一对一家教辅导_files/314031_1493193424kSNJ.jpg.thumb.jpg"
												alt="高中数学家教悠悠兰" onerror="nofind();"> </a> <a
												href="bj/jiajiao/169922.html" class="design" target="_blank"></a>
										</dt>
										<dd>
											<div class="name">
												<a href="bj/jiajiao/169922.html" target="_blank"> <strong
													class="mr"> 悠悠兰</strong> </a> <em class="iv mr">v</em><em
													class="renzheng-1 mr">教师资格认证</em>
											</div>
											<div class="ug">在职教师</div>
											<div class="lc">
												<strong class="bt bk">个人简介：</strong>高中数学高级教师，西城区在职老师...
											</div>
											<div class="lc">
												<strong class="bt bk">课时费：</strong> 260
											</div>
											<div class="but mt15">
												<a class="submit_style4" href="bj/jiajiao/169922.html"
													target="_blank">联系该家教</a>
											</div>
										</dd>
									</dl></li>
							</ul>
						</div>
						<!--/ certify_box-->
						<div class="more">
							<a href="bj/jiajiao/" target="_blank">查看更多家教 &gt;</a>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					noticetab('#layout_certify', 'div.cont', '#certify_li',
							'li');
				</script>
			</div>
			<!--新闻-->
			<div class="hot_news">
				<div class="tempWrap"
					style="overflow:hidden; position:relative; width:980px">
					<div class="bd"
						style="width: 2940px; position: relative; overflow: hidden; padding: 0px; margin: 0px; left: -490px;">
						<dl style="float: left; width: 470px;">
							<dt>
								<a href="http://longyan.ygjj.com/zx/1/24/1" title="家教小学资讯">小学资讯</a>
							</dt>
							<dd>
								<span>2016/05/24</span><a
									href="http://longyan.ygjj.com/D421743.html" target="_blank"
									title="买学区房，上名校，精英教育这条路，我们要去挤吗？">买学区房，上名校，精英教育这条路，我们要去挤吗？</a>
							</dd>
							<dd>
								<span>2016/05/24</span><a
									href="http://longyan.ygjj.com/D421603.html" target="_blank"
									title="高考倒计时14天：考场上10个细节做到速提50分">高考倒计时14天：考场上10个细节做到速提50分</a>
							</dd>
							<dd>
								<span>2016/05/23</span><a
									href="http://longyan.ygjj.com/D421543.html" target="_blank"
									title="IB成绩应该如何换算成GPA？">IB成绩应该如何换算成GPA？</a>
							</dd>
							<dd>
								<span>2016/05/23</span><a
									href="http://longyan.ygjj.com/D421433.html" target="_blank"
									title="美国藤校的招生价值观，中国学生真的理解吗？">美国藤校的招生价值观，中国学生真的理解吗？</a>
							</dd>
							<dd>
								<span>2016/05/20</span><a
									href="http://longyan.ygjj.com/D421353.html" target="_blank"
									title="教师如何弄清楚学生内心的“真实意图”">教师如何弄清楚学生内心的“真实意图”</a>
							</dd>
						</dl>
						<dl style="float: left; width: 470px;">
							<dt>
								<a href="http://longyan.ygjj.com/zx/2/24/1" title="家教初中资讯">初中资讯</a>
							</dt>
							<dd>
								<span>2015/06/29</span><a
									href="http://longyan.ygjj.com/D199526.html" target="_blank"
									title="龙岩长汀第一中学数学老师">龙岩长汀第一中学数学老师</a>
							</dd>
							<dd>
								<span>2015/05/25</span><a
									href="http://longyan.ygjj.com/D47713.html" target="_blank"
									title="教育孩子，你越位了吗？">教育孩子，你越位了吗？</a>
							</dd>
						</dl>
						<dl style="float: left; width: 470px;">
							<dt>
								<a href="http://longyan.ygjj.com/zx/3/24/1" title="家教高中资讯">高中资讯</a>
							</dt>
							<dd>
								<span>2016/05/24</span><a
									href="http://longyan.ygjj.com/D421627.html" target="_blank"
									title="中小学语文教材将大幅修改">中小学语文教材将大幅修改</a>
							</dd>
							<dd>
								<span>2016/05/23</span><a
									href="http://longyan.ygjj.com/D421450.html" target="_blank"
									title="孩子不会写作文？掌握这些词语，作文轻松搞定！">孩子不会写作文？掌握这些词语，作文轻松搞定！</a>
							</dd>
							<dd>
								<span>2016/05/20</span><a
									href="http://longyan.ygjj.com/D421238.html" target="_blank"
									title="孩子上兴趣班的最佳年龄汇总，每个爸妈都应该看看！">孩子上兴趣班的最佳年龄汇总，每个爸妈都应该看看！</a>
							</dd>
							<dd>
								<span>2016/05/19</span><a
									href="http://longyan.ygjj.com/D421114.html" target="_blank"
									title="你把课堂上和书本上学到的知识都忘记了，还剩下什么？">你把课堂上和书本上学到的知识都忘记了，还剩下什么？</a>
							</dd>
							<dd>
								<span>2016/05/18</span><a
									href="http://longyan.ygjj.com/D420911.html" target="_blank"
									title="知道这些，你才能真正成为一个很厉害的人">知道这些，你才能真正成为一个很厉害的人</a>
							</dd>
						</dl>
					</div>
				</div>
				<span class="prev">&lt;</span> <span class="next">&gt;</span>
				<script type="text/javascript">
					// 隐藏过多文本
					$(".teacher_p")
							.each(
									function() {
										var arr = [];
										if ($(this).height() > 21) {
											$(this).css({
												"white-space" : "nowrap",
												"cursor" : "pointer"
											});
											$(this)
													.after(
															"<div class='flow_p' style='display:none;'></div>");
										}
										;
										$(this).height(21);
									});
					// 经过显示文本
					$(".teacher_article").mouseenter(
							function() {
								$(this).children(".flow_p").show();
								$(this).addClass("light");
								$(this).children(".flow_p").text(
										$(this).children(".teacher_p").text());
							}).mouseleave(function() {
						$(this).children(".flow_p").hide();
						$(this).removeClass("light");
					});;
					$(function() {
						//$(".tabox").slide({ trigger: "click" });
						// 滚动信息
						$(".hot_news").slide({
							mainCell : ".bd",
							autoPage : true,
							effect : "leftLoop",
							autoPlay : true,
							vis : 2,
							scroll : 1
						});
						/*鼠标移过，左右按钮显示*/
						$(".hot_news").hover(
								function() {
									jQuery(this).find(".prev,.next").stop(true,
											true).fadeTo("show", .8);
								}, function() {
									jQuery(this).find(".prev,.next").fadeOut();
								});
					});
				</script>
			</div>
		</div>
	</div>

	<!--底部-->
	<div class="footNavBox">
		<div class="footNav">
			<div class="cityTel">
				<span>厦门热线</span>
				<p>400-700-7788</p>
			</div>
			<div class="navBox">
				<dl>
					<dt>会员指南</dt>
					<dd>
						<span>→ </span><a href="#">帮助中心</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">如何请家教</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">如何做家教</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">教辅人员签约协议</a>
					</dd>
				</dl>
				<dl>
					<dt>支付方式</dt>
					<dd>
						<span>→ </span><a href="#">在线支付</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">银行转账</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">资费标准</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">退款说明</a>
					</dd>
				</dl>
				<dl>
					<dt>服务条款</dt>
					<dd>
						<span>→ </span><a href="#">隐私保护</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">侵权处理</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">免责说明</a>
					</dd>
				</dl>
				<dl>
					<dt>关于我们</dt>
					<dd>
						<span>→ </span><a href="#">易学易教网简介</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">易学易教网公告</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">联系我们</a>
					</dd>
					<dd>
						<span>→ </span><a href="#">友情链接</a>
					</dd>
				</dl>
			</div>
			<div class="clearfix"></div>
			<div class="ps">
				【易学易教网】是中国规模较大的正规、专业家教网站。我们为您提供最优质的厦门家教，帮助厦门小老师、中学老师和大学生家教寻求家教兼职。欢迎致电<span
					class="focus">400-700-7788</span>
			</div>
		</div>
	</div>
</body>
</html>