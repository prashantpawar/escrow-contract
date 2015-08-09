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
    
    function Escrow(address buyer, address seller) {
    }
    
    function setBuyer(address buyerAccount) {
        buyer.account = buyerAccount;
    }
    
    function setSeller(address sellerAccount) {
        seller.account = sellerAccount;
    }
    
    function complete() {
        seller.account.send(amount);
    }
    
    function cancel() {
        suicide(buyer.account);
    }
}