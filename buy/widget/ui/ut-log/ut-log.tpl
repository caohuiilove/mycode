
<%script%>
	require.async(['buy:widget/ui/jquery/jquery.js', 'buy:widget/ui/ut/ut.js', 'buy:widget/ui/localcookie/localcookie.js'],function($, UT){
		//PV log( & flash cookie)
		// var tn = window.location.search.match(/(^|&|\\?)tn=([^&]*)(&|$)/i);tn=tn===null?"/":tn[2];
		<%if $sysInfo.country != 'jp'%>
		$.hao123.localcookie.getInstance().localcookie('wait',function(){UT.send({type:"faccess",tn:conf.UT.tn});});
		<%/if%>
		// UT.send({type:"access",tn:tn});

		//link click pv
		// 增加统计参数：mod,linkIndex,url
		//$(document.body).on('mousedown','a', function(){ UT.send($.extend({position:"links"}, UT.link(this)));});
	});
<%/script%>
