function redirectGame() {
	var id_game = this.id;
	console.log(id_game);
	window.location = "element.php" + id_game;
}

$(function () {
	$('#search').keyup(function () {
		var searchValue = $(this).val();
		$.ajax({
			url: 'API/indexAPI.php?param=searchbar',
			method: 'POST',
			data: {search: searchValue},
			dataType: "json",
			success: (data) => {
				$('#search_results').html('');
				for (let i = 0; (i < data.length) && (i < 5); i++) {
					$('#search_results').append('<button class="game_input clickable" id="?jeuid=' + data[i].id + '">' + data[i].name + '</button>');
				}
			}
		})
	})
	$('#search_results').on('click', '.game_input', redirectGame);
});