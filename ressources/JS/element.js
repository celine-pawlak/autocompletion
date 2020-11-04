$(function()
    {
        var id =4;
        
        $.ajax(
            {
                url : 'API/indexAPI.php',
                type : 'GET',            
                data : {id : id, param : 'getelement'},
                dataType : 'json',
                success : (data) =>
                    {                        
                        console.log(data);
                        let chemin = 'images/'+data.chemin+'.jpg';                        
                        $('#section_element').append('<img src="'+chemin+'" alt="cover de '+data.nom+'">');
                        $('#article_element h3').html(data.nom);
                        $('#article_element p').html(data.description);
                    }
            });
    })