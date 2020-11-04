$(function () {
	$('#search').keyup(function () {
		var searchValue = $(this).val();
		$.ajax({
			url: 'API/indexAPI.php?param=searchbar',
			method: 'POST',
			data: {search: searchValue},
			dataType: "json",
			success: (data) => {
				console.log(data);
				$('#search_results').html('');
				for (let i = 0; (i < data.length) && (i < 5); i++) {
					$('#search_results').append('<input id="game' + data[i].id + '" value="' + data[i].name + '" disabled>');
					console.log(data[i]);
				}
			}
		})
	})
});