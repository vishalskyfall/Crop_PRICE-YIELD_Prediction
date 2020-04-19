
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/functions" %>
    <c:set var="length" value="${f:length(districtList)}"/>
[
	<c:forEach begin="0" end="${length-1}"  items="${districtList}" var="district" varStatus="j">

	{
		"districtName":"${district.districtName}",
		"id":"${district.id}"
	}
		<c:if test="${j.count ne length}">,</c:if>
		
	</c:forEach>
		
]
