<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome icons -->
    <script src="https://kit.fontawesome.com/68f3afb94b.js" crossorigin="anonymous"></script>
    <!-- JS & JQUERY -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="ressources/JS/element.js"></script>
    <script src="ressources/JS/script.js"></script>
    <script src="ressources/JS/function-element.js"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="ressources/CSS/style.css">
    <title>Document</title>
</head>
<body>
<header class="flex-column">
    <div class="background-black">
        <div id="logo-gamesearch"
             class="max-width-content flex-row h-10vh align-items-center justify-content-center w-100 clickable">
            <i class="fas fa-gamepad"></i>
            <h1 class="text-white no-margin"><?= '&nbsp' ?>Game<span class="orange-text">Search</span></h1>
        </div>
    </div>
    <div class="background-dark-grey w-100">
        <section id="section-search-index" class="background-white max-width-content flex-row justify-content-flexstart align-items-center px-1 pt-1 relative">
            <input type="search" id="search" class="w-50" placeholder="Recherche">
            <i class="fas fa-search"></i>
            <section class="flex-column absolute" id="search_results">
            </section>
        </section>
    </div>
</header>
<main id="main_element" class="container background-dark-grey">
    <section id="section_element" class="max-width-content background-white">
        <h2 id="titre_jeu"></h2>
        <article id="article_element">
        </article>
    </section>
    <section id="suggestion" class="max-width-content background-white">
        <h3 class="text-align-center background-black orange-text py-2">Suggestions</h3>
        <section id="section-suggestions"></section>
    </section>
    <a href="#" title="Haut de page" class="scrollup"><i class="fa fa-arrow-up"></i></a>
</main>
<footer>
    <p><span class="span-footer">autocomplétion</span> @2020 - Céline Pawlak & Martin Bozon</p>
</footer>
</body>
</html>