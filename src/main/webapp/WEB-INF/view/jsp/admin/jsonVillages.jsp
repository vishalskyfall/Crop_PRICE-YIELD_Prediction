
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
    <c:set var="length" value="${f:length(villageList)}"/>
[
	<c:forEach begin="0" end="${length-1}"  items="${villageList}" var="village" varStatus="j">
	
	{
		"villageName":"${village.villageName}",
		"id":"${village.id}"
	
	}
		<c:if test="${j.count ne length}">,</c:if>
		
	</c:forEach>
		
]
