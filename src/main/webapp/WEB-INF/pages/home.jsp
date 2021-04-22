<div class="img-back">
    <img src="${ pageContext.request.contextPath }/assets/img/femme-hamac-livre.jpg"/>
</div>

<div class="recent-books">
    <p class="title-recent">Recent books</p>
    <div class="line-recent"></div>
    <div class="list-recent">
    	<c:forEach items="${ recentBooks }" var="recentBook">
	        <div class="book-recent">   
	        	<a href="${ pageContext.request.contextPath }/one_book?id=${ recentBook.id }">        		
	            	<img src="${ recentBook.thumbnail }">
	        	</a>                 
	            <h2 class="title-book-recent">${ recentBook.title }</h2>
	        </div>
        </c:forEach>
    </div>
</div>

<div id="modal-search" class="modal">
    <div>
        <form>
            <input type="text" />
        </form>
        <div class="search-list">
          	<a href="${ pageContext.request.contextPath }/one_book">
          		<img src="${ pageContext.request.contextPath }/assets/img/Fables-Livres-VII-a-XI-oeuvre-au-programme.jpg">
            	<div>
	                <p class="search-title">
	                    Fables de La Fontaine, Livres VII à XI (Bac 2021)
	                </p>
	                <p class="search-editor">Hatier</p>
	                <p class="search-date">28/08/2019</p>
            	</div>
          	</a>            
        </div>
        <div class="search-list">
        <a href="${ pageContext.request.contextPath }/one_book">
            <img src="${ pageContext.request.contextPath }/assets/img/Fables.jpg">
            <div>
                <p class="search-title">
                    Fables
                </p>
                <p class="search-editor">Gallimard</p>
                <p class="search-date">15/04/2021</p>
            </div>
            </a>
        </div>
        <div class="search-list">
        <a href="${ pageContext.request.contextPath }/one_book">
            <img src="${ pageContext.request.contextPath }/assets/img/A-la-claire-fontaine.jpg">
            <div>
                <p class="search-title">
                    Fables (livres VII à XI) - Nouvelle
                </p>
                <p class="search-editor">Belin Education</p>
                <p class="search-date">15/06/2020</p>
            </div>
            </a>
        </div>
        <div class="search-list">
        <a href="${ pageContext.request.contextPath }/one_book">
            <img src="${ pageContext.request.contextPath }/assets/img/Fables-Livres-VII-a-XI-oeuvre-au-programme.jpg">
            <div>
                <p class="search-title">
                    Les Fables, Livres VII à XI 
                </p>
                <p class="search-editor">Nathan</p>
                <p class="search-date">02/01/2020</p>
            </div>
            </a>
        </div>
        <div class="search-list">
        <a href="${ pageContext.request.contextPath }/one_book">
            <img src="${ pageContext.request.contextPath }/assets/img/A-la-claire-fontaine.jpg">
            <div>
                <p class="search-title">
                    Agatha Raisin - Méfiez-vous de l'eau qui dort! ...
                </p>
                <p class="search-editor">Albin Michel</p>
                <p class="search-date">28/08/2019</p>
            </div>
            </a>
        </div>
        <div class="search-list">
        <a href="${ pageContext.request.contextPath }/one_book">
            <img src="${ pageContext.request.contextPath }/assets/img/Fables-Livres-VII-a-XI-oeuvre-au-programme.jpg">
            <div>
                <p class="search-title">
                    Fables de La Fontaine, Livres VII à XI (Bac 2021)
                </p>
                <p class="search-editor">Hatier</p>
                <p class="search-date">28/08/2019</p>
            </div>
            </a>
        </div>
    </div>
</div>

<div id="modal-sign-in" class="modal">
    <div>
        <form>
            <label>Email</label>
            <input type="email" />
            <label>Password</label>
            <input type="password" />
        </form>
        <a href="${ pageContext.request.contextPath }/"><p>Sign out</p></a>
        <a class="btn-sign" href="${ pageContext.request.contextPath }/">Sign in</a>
    </div>
</div>

<div id="modal-sign-up" class="modal">
    <div>
        <form>
            <label>Full Name</label>
            <input type="text" />
            <label>Email</label>
            <input type="email" />
            <label>Password</label>
            <input type="password" />
            <label>Password</label>
            <input type="password" />
        </form>
        <a href="#modal-sign-in"><p>Sign in</p></a>
        <a class="btn-sign" href="${ pageContext.request.contextPath }/">Sign up</a>
    </div>
</div>
