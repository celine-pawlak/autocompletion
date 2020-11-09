/**
 * Récupère les deux derniers caractères de l'url et regarde si ce sont des entiers
 * @param {*} id1 id si un seul chiffre, si deux chiffre placé en dernier dans le return
 * @param {*} id2 si pas entier, pas retourné, si entier ajouter avec id1
 * @return l'id de l'élément
 */
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
/**
 * Génère l'élément en fonction de la $val demandé et affiche des suggestions (sans la $val)
 * @param {*} $page page vers laquelle envoyer l'ajax
 * @param {*} $type get ou post
 * @param {*} $val ici un id
 * @param {*} $param paramètre qui défini dans quelle condition sera effectué le traitement
 * @param {*} $isset true ou false si section déjà créée
 */
function ajax($page, $type, $val, $param, $isset)
    {
        $.ajax(
            {                
                url : $page,
                type : $type,            
                data : {id : $val, param : $param},
                dataType : 'json',
                success : (data) =>
                    {                                  
                        if(data[1] === true)
                            {
                                let chemin = 'images/'+data[0].path+'.jpg';                        
                                $('#article_element div').html('<img src="'+chemin+'" alt="cover de '+data[0].name+'">');
                                $('#titre_jeu').html(data[0].name);
                                $('#article_element p').html(data[0].description);                                  

                                if($isset === false)
                                    {
                                        for(let i = 0; i<data[2].length; i++)                                      
                                            {                        
                                                $('#suggestion section').append('<div id="sug'+i+'"></div>');
                                                $('#sug'+i).append('<p class="elementSug" id='+data[2][i].id+'>'+data[2][i].name+'</p>');                                                
                                                $('#sug'+i).append('<img src="images/'+data[2][i].path+'.jpg" alt="cover de '+data[2][i].name+'" class="elementSug" id='+data[2][i].id+'>');                                                                                                        
                                            }
                                    }
                                else
                                    {                 
                                        $('#suggestion section').empty();                       
                                        for(let j = 0; j<data[2].length; j++)                                      
                                            {                                                         
                                                $('#suggestion section').append('<div id="sug'+j+'"></div>');
                                                $('#sug'+j).append('<p class="elementSug" id='+data[2][j].id+'>'+data[2][j].name+'</p>');                                                
                                                $('#sug'+j).append('<img src="images/'+data[2][j].path+'.jpg" alt="cover de '+data[2][j].name+'" class="elementSug" id='+data[2][j].id+'>');
                                            }
                                    }
                                $('.elementSug').click(function()
                                    {
                                        let nexId = $(this).attr('id');                                                         
                                        ajax('API/indexAPI.php', 'GET', nexId, 'getelement', true);                                        
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
