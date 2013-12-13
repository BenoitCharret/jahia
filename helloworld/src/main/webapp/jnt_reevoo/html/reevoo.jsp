<%@page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr"%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib"%>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%--@ taglib prefix="reevoo" uri="http://reevoo.com/java-taglib/v1"--%>

<jcr:nodeProperty var="trkref" node="${currentNode}" name="trkref" />
<jcr:nodeProperty var="sku" node="${currentNode}" name="sku" />

<c:if test="${not renderContext.editMode }">
	<template:addResources type="css"
		resources="//mark.reevoo.com/stylesheets/reevoomark/embedded_reviews.css" />
</c:if>

<template:addResources>
	<script id="reevoomark-loader">
		(function() {
			var myscript = document.createElement('script');
			myscript.type = 'text/javascript';
			myscript.src = ('//mark.reevoo.com/reevoomark/${trkref.string}.js?async=true');

			var s = document.getElementById('reevoomark-loader');
			s.parentNode.insertBefore(myscript, s);
		})();
	</script>
</template:addResources>
<c:choose>
	<c:when test="${empty  sku.string}">
		<reevoo:mark trkref="${trkref.string}"
			baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />
	</c:when>
	<c:otherwise>
		<reevoo:mark sku="${sku.string}" trkref="${trkref.string}"
			baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />
	</c:otherwise>

</c:choose>