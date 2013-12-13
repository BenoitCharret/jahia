<%@page contentType="text/html;charset=UTF-8"%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="reevoo" uri="http://reevoo.com/java-taglib/v1"%>

<link rel="stylesheet" href="http://mark.reevoo.com/stylesheets/reevoomark/embedded_reviews.css" type="text/css" />

	<script id="reevoomark-loader">
		(function() {
			var myscript = document.createElement('script');
			myscript.type = 'text/javascript';
			myscript.src = ('//mark.reevoo.com/reevoomark/ABC.js?async=true');

			var s = document.getElementById('reevoomark-loader');
			s.parentNode.insertBefore(myscript, s);
		})();
	</script>


		<reevoo:mark trkref="ABC" sku="sample"
			baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />
	
		<reevoo:mark sku="10" trkref="REV" baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />

		<reevoo:mark sku="167823" trkref="REV" baseURI="http://mark.reevoo.com/reevoomark/embeddable_reviews.html" />
		