<%@ taglib prefix="jcr" uri="http://www.jahia.org/tags/jcr" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="utility" uri="http://www.jahia.org/tags/utilityLib" %>
<%@ taglib prefix="template" uri="http://www.jahia.org/tags/templateLib" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%--@ taglib prefix="reevoo" uri="http://reevoo.com/java-taglib/v1" --%>

<c:if test="${not renderContext.editMode }">
	<template:addResources type="css" resources="//mark.reevoo.com/stylesheets/reevoomark/embedded_reviews.css"/>
</c:if>

<script id="reevoomark-loader">
 (function() {
   var trkref = 'TRKREF';
   var myscript = document.createElement('script');
   myscript.type = 'text/javascript';
   myscript.src=('//mark.reevoo.com/reevoomark/'+trkref+'.js?async=true');
   var s = document.getElementById('reevoomark-loader');
   s.parentNode.insertBefore(myscript, s);
 })();
</script>

SKU : <jcr:nodeProperty node="${currentNode}" name="sku"/>
TRKREF : <jcr:nodeProperty node="${currentNode}" name="trkref"/>  

Reevoo code :<reevoo:mark sku="<jcr:nodeProperty node="${currentNode}" name="sku"/>" trkref="<jcr:nodeProperty node="${currentNode}" name="trkref"/>" baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />
