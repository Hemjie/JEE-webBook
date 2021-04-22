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
                		Fran�ais
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
                		Arm�nien
                	</c:if>
                	<c:if test="${ oneBook.language == 'la' }">
                		Latin
                	</c:if>
                	<c:if test="${ oneBook.language == 'nl' }">
                		N�erlandais
                	</c:if>
                	<c:if test="${ oneBook.language == 'pl' }">
                		Polonais
                	</c:if>
                	<c:if test="${ oneBook.language == 'sq' }">
                		Albanais
                	</c:if>
                	<c:if test="${ oneBook.language == 'sv' }">
                		Su�dois
                	</c:if>
                	<c:if test="${ oneBook.language == 'tr' }">
                		Turc
                	</c:if>
                	<c:if test="${ oneBook.language == 'un' }">
                		Non d�termin�
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
            New York, dans les ann�es 1900. Une jeune fille, que passionnent les livres rares, se joue du destin et gravit tous les �chelons.
            Elle devient la directrice de la fabuleuse biblioth�que du magnat J.P. Morgan et la coqueluche de l'aristocratie internationale,
            sous le faux nom de Belle da Costa Greene. Belle Greene pour les intimes. En v�rit�, elle triche surtout. Car la flamboyante 
            collectionneuse qui fait tourner les t�tes et r�gne sur le monde des bibliophiles cache un terrible secret,dans une Am�rique 
            violemment raciste. Bienqu'elle paraisse blanche, elle est en r�alit� afro-am�ricaine. Et, de surcro�t, fille d'un c�l�bre 
            activiste noir qui voit sa volont� de cacher ses origines comme une trahison. C'est ce drame d'un �tre �cartel� entre son histoire 
            et son choix d'appartenir � la soci�t� qui opprime son peuple que raconte Alexandra Lapierre. Fruit de trois ann�es d'enqu�te, 
            ce roman retrace les victoires et les d�chirements d'une femme pleine de vie, aussi libre que d�termin�e, dont les stup�fiantes 
            audaces font �cho aux combats d'aujourd'hui.
        </p>
    </div>
</div>
