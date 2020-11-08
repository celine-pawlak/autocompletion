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

function goElement (valeur)
    {
        console.log(valeur);
    }