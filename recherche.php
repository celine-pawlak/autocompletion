<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Font Awesome icons -->
    <script src="https://kit.fontawesome.com/68f3afb94b.js" crossorigin="anonymous"></script>
    <!-- JS & JQUERY -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
    <script src="ressources/JS/script.js"></script>
    <!-- CSS -->
    <link rel="stylesheet" href="ressources/CSS/style.css">
    <title></title>
</head>
<body>
<header class="flex-column">
    <div class="background-black">
        <div id="logo-gamesearch"
             class="max-width-content flex-row h-10vh align-items-center justify-content-center w-100 clickable">
            <i class="fas fa-gamepad"></i>
            <h1 id="logoGameSearch" class="text-white no-margin"><?= '&nbsp' ?>Game<span class="orange-text">Search</span></h1>
        </div>
    </div>
    <div class="background-dark-grey w-100">
        <section id="section-search-index" class="background-white max-width-content flex-row justify-content-center align-items-center px-1 pt-1 relative">
            <input type="search" id="search" class="w-90" placeholder="Recherche">
            <i class="fas fa-search"></i>
            <section class="flex-column absolute" id="search_results">
            </section>
        </section>
    </div>
</header>
<main class="background-dark-grey">
    <section id="recherche-games" class="flex-column background-white max-width-content px-1">
    </section>
</main>
</body>
</html>