function getId(id1, id2)
    {
        if(!isNaN(id2))
            {
                var id = [];
                id.push(id2 + id1);                                  
                return id[0];
            }
        else
            return id1;
    }    

function goElement (id)
    {
        $.ajax(
            {
                url : 'API/indexAPI.php',
                type : 'GET',            
                data : {id : id, param : 'getelement'},
                dataType : 'json',
                success : (data) =>
                    {                                                                                                                         
                        if(data[1] === true)
                            {
                                let chemin = 'images/'+data[0].path+'.jpg';                        
                                $('#article_element div').html('<img src="'+chemin+'" alt="cover de '+data[0].name+'">');
                                $('#titre_jeu').html(data[0].name);
                                $('#article_element p').html(data[0].description);  
                                
                                for(let i = 0; i<data[2].length; i++)                                      
                                    {                                        
                                        $('#sug'+i+' p').html('<p class="elementSug" id='+data[2][i].id+'>'+data[2][i].name+'</p>');
                                        $('#sug'+i+' img').attr('src', 'images/'+data[2][i].path+'.jpg');
                                        $('#sug'+i+' img').attr('alt', data[2][i].name);
                                    }
                                $('.elementSug').click(function()
                                    {
                                        let id = $(this).attr('id');
                                        goElement(id);
                                    });
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
    }