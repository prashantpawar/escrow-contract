contract Escrow {
    struct Buyer {
        address account;
    }
    struct Seller {
        address account;
    }
    Buyer buyer;
    Seller seller;
    uint amount;
    uint dispute_resolution_fee = 5; //Percentage
    
    function setBuyer(uint _amount) {
        buyer.account = msg.sender;
        amount = _amount;
    }
    
    function setSeller(uint _amount) {
        seller.account = msg.sender;
        amount = _amount;
    }
    
    function complete() {
        seller.account.send(_amount);
    }
    
    function cancel() {
        suicide(buyer.account);
    }
}