$(function()
    {
        var url = document.location.href;
        var id1 = url.charAt(url.length-1);   
        var id2 = url.charAt(url.length-2);
         
        var id = getId(id1, id2);

        ajax('API/indexAPI.php', 'GET', id, 'getelement', false);
            
                // $.ajax(
                //     {
                //         url : 'API/indexAPI.php',
                //         type : 'GET',            
                //         data : {id : id, param : 'getelement'},
                //         dataType : 'json',
                //         success : (data) =>
                //             {                                         
                //                 if(data[1] === true)
                //                     {
                //                         let chemin = 'images/'+data[0].path+'.jpg';                        
                //                         $('#article_element div').html('<img src="'+chemin+'" alt="cover de '+data[0].name+'">');
                //                         $('#titre_jeu').html(data[0].name);
                //                         $('#article_element p').html(data[0].description);  
                                        
                //                         for(let i = 0; i<data[2].length; i++)                                      
                //                             {                                                                                            
                //                                 $('#suggestion section').append('<div id="sug'+i+'"></div>');
                //                                 $('#sug'+i).append('<p class="elementSug" id='+data[2][i].id+'>'+data[2][i].name+'</p>');                                                
                //                                 $('#sug'+i).append('<img src="images/'+data[2][i].path+'.jpg" alt="cover de '+data[2][i].name+'" class="elementSug" id='+data[2][i].id+'>');
                //                             }
                //                         $('.elementSug').click(function()
                //                             {
                //                                 let id = $(this).attr('id');
                //                                 goElement(id);
                //                             });
                //                     }
                //                 else    
                //                     {
                //                         $('#titre_jeu').html("Nous n'avons pas cette référence");                                        
                //                         for(let i = 0; i<data.length; i++)
                //                             {
                //                                 $('#article_element').append('<p>'+data[i]+'</p>');
                //                             }
                //                     }
                //             }
                //     });            
    })