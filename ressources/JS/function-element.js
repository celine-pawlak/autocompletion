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
 * 
 * @param {*} $data 
 * @param {*} $isset 
 */
function GetSuggest ($data, $isset)
    {
        if($isset === false)
            {
                for(let i = 0; i<$data.length; i++)                                      
                    {                        
                        $('#suggestion section').append('<div id="sug'+i+'"></div>');
                        $('#sug'+i).append('<p class="elementSug" id='+$data[i].id+'>'+$data[i].name+'</p>');                                                
                        $('#sug'+i).append('<img src="images/'+$data[i].path+'.jpg" alt="cover de '+$data[i].name+'" class="elementSug" id='+$data[i].id+'>');                                                                                                                                                        
                    }
            }
        else
            {                 
                $('#suggestion section').empty();                       
                for(let j = 0; j<$data.length; j++)                                      
                    {                                                                                 
                        $('#suggestion section').append('<div id="sug'+j+'"></div>');
                        $('#sug'+j).append('<p class="elementSug" id='+$data[j].id+'>'+$data[j].name+'</p>');                                                
                        $('#sug'+j).append('<img src="images/'+$data[j].path+'.jpg" alt="cover de '+$data[j].name+'" class="elementSug" id='+$data[j].id+'>');
                    }
            }
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
                        console.log(data);          
                        //Si l'id existe alors on affiche l'élément | Suggestions toujours affichées                                              
                        if(data[1] === true)
                            {              
                                $('#article_element').remove();
                                $('#section_element').append('<div id="article_element"></div>');
                                let chemin = 'images/'+data[0].path+'.jpg';                   
                                $('#article_element').append('<img src="'+chemin+'" alt="Cover de '+data[0].name+'"/>');
                                $('#article_element').append('<p class="lead">'+data[0].description+'</p>');                                
                                
                                GetSuggest(data[2], $isset);
                                
                                $('.elementSug').click(function()
                                    {                                        
                                        $("html, body").animate({ scrollTop: 0 }, 500);
                                        let nexId = $(this).attr('id');                                                         
                                        ajax('API/indexAPI.php', 'GET', nexId, 'getelement', true);                                         
                                    });
                            }
                        //Si l'id n'existe pas on affiche les erreurs | Suggestions toujours affichées
                        else    
                            {
                                $('#titre_jeu').html("Nous n'avons pas cette référence"); 
                                $('#article_element p').remove();                                  
                                if(data.length===2)
                                    {
                                        for(let i = 0; i<data.length-1; i++)
                                            {
                                                $('#article_element').append('<p class="lead">'+data[i]+'</p>');
                                            }                                        
                                        GetSuggest(data[data.length-1], $isset);

                                        $('.elementSug').click(function()
                                            {                                                
                                                $("html, body").animate({ scrollTop: 0 }, 500);
                                                let nexId = $(this).attr('id');                                                         
                                                ajax('API/indexAPI.php', 'GET', nexId, 'getelement', true);                                         
                                            });                                     
                                    }
                                if(data.length===3)
                                    {
                                        for(let i = 0; i<data.length-1; i++)
                                            {
                                                $('#article_element').append('<p class="lead">'+data[i]+'</p>');
                                            }
                                        GetSuggest(data[data.length-1], $isset);

                                        $('.elementSug').click(function()
                                            {                                                
                                                $("html, body").animate({ scrollTop: 0 }, 500);
                                                let nexId = $(this).attr('id');                                                         
                                                ajax('API/indexAPI.php', 'GET', nexId, 'getelement', true);                                         
                                            });   
                                    }                                                                                                                                    
                            }                        
                    }
            });            
    }

/**
 * Affiche le bouton retour en haut de page lorsqu'on dépasse $pixel, et si on click sur ce bouton, ramène l'utilisateur en haut de page
 * @param {number} $pixel Nombre de pixel au top de l'écran avant d'afficher le bouton
 * @param {number} $valeurTop Jusqu'où on veut remonter
 * @param {number} $vitesse Vitesse de défilement de la page
 */
function ScrollToTop($pixel, $valeurTop, $vitesse)
    {
        var s = $(window).scrollTop();        
        if (s > $pixel) 
            {
                $('.scrollup').fadeIn();
            } 
        else 
            {
                $('.scrollup').fadeOut();
            }
        
        $('.scrollup').click(function () 
            {
                $("html, body").animate({ scrollTop: $valeurTop }, $vitesse);
                return false;
            });
    }
    
/**
 * Stop l'animation de retour en haut de page si l'utilisateur scroll, click, appuye sur une touche, utilise la roulette de la souris
 */
function StopAnimation()
    {
        $("html, body").bind("scroll mousedown DOMMouseScroll mousewheel keyup", function()
            {
                $('html, body').stop();
            });
    }
