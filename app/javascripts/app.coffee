$(document).ready(->
    logger = (str) ->
        $(".log").append("<div>" + str + "</div>")
        
    logger "Hello World, Escrow is deployed at " + Escrow.deployed_address
    
    e = Escrow.at(Escrow.deployed_address) 
)