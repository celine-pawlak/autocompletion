$(function()
    {
        var url = document.location.href;
        var id1 = url.charAt(url.length-1);   
        var id2 = url.charAt(url.length-2);
         
        var id = getId(id1, id2);
            
                $.ajax(
                    {
                        url : 'API/indexAPI.php',
                        type : 'GET',            
                        data : {id : id, param : 'getelement'},
                        dataType : 'json',
                        success : (data) =>
                            {                        
                                console.log(data);
                                if(data[1] === true)
                                    {
                                        let chemin = 'images/'+data[0].chemin+'.jpg';                        
                                        $('#article_element').append('<img src="'+chemin+'" alt="cover de '+data[0].nom+'">');
                                        $('#titre_jeu').html(data[0].nom);
                                        $('#article_element p').html(data[0].description);
                                    }
                                else    
                                    {
                                        $('#titre_jeu').html("Nous n'avons pas cette référence");                                        
                                        for(let i = 0; i<data.length; i++)
                                            {
                                                $('#article_element').append('<p>'+data[i]+'</p>');
                                            }
                                    }
                            }
                    });            
    })