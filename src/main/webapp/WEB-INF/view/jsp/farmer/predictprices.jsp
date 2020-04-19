<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="callService()">
<jsp:include page="header.jsp"></jsp:include>
<div id="price">

</div>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript">
	
	
	function callService()
	{
		var year="${priceVO.getYear()}";
		var district="${priceVO.getDistrict()}";
		var date="${priceVO.getDate()}";
		var variety="${priceVO.getVariety()}";
		$.ajax({
			url:'http://127.0.0.1:5000/?Year='+year+'&District='+district+'&Date='+date+'&Variety='+variety,
			type="GET",
			 success:function(response)
			{
				 
				 var p=document.getElementById("Price");
				 p.innerHTML=response;
				//onsuccess(response);
			}
			/* error:function(){
				onerror();
			} 
		 */
		});
	}
	/* function onsuccess(response){
		var id="${videoVO.getId()}"
		$.ajax({
			
			url:"/client/predictprices?id="+id+"&link="+response
		});
	} */
	

</script>


</body>
</html>