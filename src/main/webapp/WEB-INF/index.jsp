<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
                    <img src="${ pageContext.request.contextPath }/assets/icon/book_icon.svg"/>
                </div>
                <div class="title">WebBooks</div>
            </div>
            <nav class="menu">
                <a href="${ pageContext.request.contextPath }/">Home</a>
                <a href="${ pageContext.request.contextPath }/contact">Contact</a>
                <a href="#modal-search">Search</a>
                <a id="person" href="#"><img src="${ pageContext.request.contextPath }/assets/icon/person_black_48dp.svg"></a>
            </nav>
        </header>
        
        <c:if test="${ page != null }">
			<c:import url="pages/${page}.jsp"></c:import>
		</c:if>
		
	</div>
</body>
</html>