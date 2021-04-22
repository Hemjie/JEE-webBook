<div class="one-book">
    <p class="title-one-book">Belle Greene</p>
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
                <p class="info-title">Type de ressources</p>
                <p class="info-name"> ${ oneBook.printType }</p>
            </div>
            <div class="info">                        
                <p class="info-title">EAN</p>
                <p class="info-name">978-2378801748</p>
            </div>
            <div class="info">                        
                <p class="info-title">ISBN</p>
                <p class="info-name">2378801742</p>
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
            New York, dans les années 1900. Une jeune fille, que passionnent les livres rares, se joue du destin et gravit tous les échelons.
            Elle devient la directrice de la fabuleuse bibliothèque du magnat J.P. Morgan et la coqueluche de l'aristocratie internationale,
            sous le faux nom de Belle da Costa Greene. Belle Greene pour les intimes. En vérité, elle triche surtout. Car la flamboyante 
            collectionneuse qui fait tourner les têtes et règne sur le monde des bibliophiles cache un terrible secret,dans une Amérique 
            violemment raciste. Bienqu'elle paraisse blanche, elle est en réalité afro-américaine. Et, de surcroît, fille d'un célèbre 
            activiste noir qui voit sa volonté de cacher ses origines comme une trahison. C'est ce drame d'un être écartelé entre son histoire 
            et son choix d'appartenir à la société qui opprime son peuple que raconte Alexandra Lapierre. Fruit de trois années d'enquête, 
            ce roman retrace les victoires et les déchirements d'une femme pleine de vie, aussi libre que déterminée, dont les stupéfiantes 
            audaces font écho aux combats d'aujourd'hui.
        </p>
    </div>
</div>
