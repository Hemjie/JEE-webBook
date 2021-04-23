<div class="one-book">
    <p class="title-one-book">${ oneBook.title }</p>
    <div class="line-one-book"></div>
    <div class="details-one-book">                    
        <img src="${ oneBook.thumbnail }">
        <div class="infos-one-book">
            <div class="info">                        
                <p class="info-title">Auteur</p>
                <p class="info-name">
	                <c:forEach items="${ oneBook.authors }" var="author">
	                	${ author }
	                </c:forEach>
                </p>
            </div>
            <div class="info">                        
                <p class="info-title">Langue</p>
                <p class="info-name">
                
                	<c:if test="${ oneBook.language == 'fr' }">
                		Français
                	</c:if>
                	<c:if test="${ oneBook.language == 'en' }">
                		Anglais
                	</c:if>
                	<c:if test="${ oneBook.language == 'de' }">
                		Allemand
                	</c:if>
                	<c:if test="${ oneBook.language == 'es' }">
                		Espagnol
                	</c:if>
                	<c:if test="${ oneBook.language == 'it' }">
                		Italien
                	</c:if>
                	<c:if test="${ oneBook.language == 'hy' }">
                		Arménien
                	</c:if>
                	<c:if test="${ oneBook.language == 'la' }">
                		Latin
                	</c:if>
                	<c:if test="${ oneBook.language == 'nl' }">
                		Néerlandais
                	</c:if>
                	<c:if test="${ oneBook.language == 'pl' }">
                		Polonais
                	</c:if>
                	<c:if test="${ oneBook.language == 'sq' }">
                		Albanais
                	</c:if>
                	<c:if test="${ oneBook.language == 'sv' }">
                		Suédois
                	</c:if>
                	<c:if test="${ oneBook.language == 'tr' }">
                		Turc
                	</c:if>
                	<c:if test="${ oneBook.language == 'un' }">
                		Non déterminé
                	</c:if>
                	
                </p>
            </div>
            <div class="info">                        
                <p class="info-title">Date de parution</p>
                <p class="info-name">${ oneBook.publishedDate }</p>
            </div>
            <div class="info">                        
                <p class="info-title">ISBN</p>
                <p class="info-name"><c:forEach items="${ oneBook.industryEntity }" var="ISBN">
	                	${ ISBN.identifier }
	                </c:forEach></p>
            </div>
            <div class="info">                        
                <p class="info-title">Nombre de pages</p>
                <p class="info-name">${ oneBook.pageCount }</p>
            </div>
        </div>
        
        
    </div>
    <div class="synopsis-one-book">
        <p class="title-one-book">Synopsis</p>
        <div class="line-one-book"></div>
        <p>
            ${ oneBook.description }
        </p>
    </div>
</div>
