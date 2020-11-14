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
    <title>Document</title>
</head>
<body>
<header class="background-black">
    <div id="logo-gamesearch" class="max-width-content flex-row h-10vh align-items-center justify-content-center w-100 clickable">
        <i class="fas fa-gamepad"></i>
        <h1 class="text-white no-margin"><?= '&nbsp' ?>Game<span class="orange-text">Search</span></h1>
    </div>
</header>
<main id="main-index" class="background-dark-grey">
    <div class="max-width-content background-white h-90vh">
        <div id="section-search-index"
             class="relative flex-row justify-content-center align-items-center w-70 pt-40vh mx-auto">
            <input type="search" id="search" name="search" class="w-90"><?= '&nbsp' ?>
            <i class="no-border background-white clickable orange-text fas fa-search" id="button_index"></i>
            <section class="flex-column w-100 absolute" id="search_results">
            </section>
        </div>

    </div>
</main>
</body>
</html>