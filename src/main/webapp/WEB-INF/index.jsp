<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">

    <link rel="stylesheet" href="${ pageContext.request.contextPath }/assets/css/style.css">

    <title>WebBooks - ${ title }</title>
	<noscript>
		Ce site n'est pas disponible sans JavaScript. Veuillez le réactiver.
	</noscript>
</head>
<body>
    <div class="container">
        <header>
            <div class="header-left">                
                <div class="logo">
                    <a href="${ pageContext.request.contextPath }/">
                    	<img src="${ pageContext.request.contextPath }/assets/icon/book_icon.svg"/>
                    </a>
                </div>
                <div class="title">
                	<a href="${ pageContext.request.contextPath }/">WebBooks</a>
                </div>
            </div>
            <nav class="menu">
                <a href="${ pageContext.request.contextPath }/">Home</a>
                <a href="${ pageContext.request.contextPath }/contact">Contact</a>
                <a href="#modal-search">Search</a>
                <a id="person" href="#modal-sign-up"><img src="${ pageContext.request.contextPath }/assets/icon/person_black_48dp.svg"></a>
            </nav>
        </header>
        
        <c:if test="${ page != null }">
			<c:import url="pages/${page}.jsp"></c:import>
		</c:if>
		
	</div>
</body>
</html>