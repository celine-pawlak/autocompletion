$(function()
    {
        var url = document.location.href;
        var id1 = url.charAt(url.length-1);   
        var id2 = url.charAt(url.length-2);
         
        var id = getId(id1, id2);

        ajax('API/indexAPI.php', 'GET', id, 'getelement', false);                    
      
        $(window).scroll(function() 
            {
                ScrollToTop(250, 0, 500);
                StopAnimation();
            });                             
    })