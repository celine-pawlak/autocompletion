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
    <script src="ressources/JS/function-element.js"></script>
    <!-- CSS -->    
    <link rel="stylesheet" href="ressources/CSS/style.css">
    <title>Document</title>
</head>
<body>
    <header>
        <section id="nom_jeu">
            <i class="fas fa-gamepad" id="logo-manette"></i>&nbsp;            
            <h4><span id="titre-partie">Game</span> Search</h4>
        </section>
        <section>
            <input type="search" id="search_barre" name="search_barre">
            <i class="fas fa-search"></i>
        </section>
    </header>
    <main id="main_element">      
        <section id="section_element" class="container">
            <h3 id="titre_jeu"></h3>
            <article id="article_element">
                <p class="lead"></p>
            </article>
        </section> 
        <section class="container" id="suggestion">
            
        </section>
  </main>
</body>
</html>