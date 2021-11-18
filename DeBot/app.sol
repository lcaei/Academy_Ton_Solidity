/*Pragma keyword is used to enable certain compiler features or checks. A pragma directive is always local to a source file,
so you have to add the pragma to all your files if you want to enable it in your whole project. 
If you import another file, the pragma from that file is not automatically applied to the importing file. Visit for more Information
https://github.com/tonlabs/TON-Solidity-Compiler/blob/master/API.md */

// Check if compiler version is greater or equal than 0.35.5
pragma ton-solidity >=0.35.0;
//time at which message should be meant as expired.
pragma AbiHeader expire;
// local time at which message was created;
pragma AbiHeader time;
//public key by which the message can be signed;
pragma AbiHeader pubkey;



contract App{
        //store debot icon data
        byte m_icon;
        uint256 m_ownerPubkey;
        
        modifier onlyOwner() {
            require(msg.pubkey() == m_ownerPubkey, 101);
            _;
        }


        constructor( uint256 pubkey) public {
            require(pubkey != 0, 120);
            tvm.accept();
            m_ownerPubkey = pubkey;
        }

    //Entry point for test functions

    uint128 P_count;

    struct Person{
        uint PID;
        string fname;
        string lname;
        address Paddress;
        }

    mapping(uint256 => Person) public persons;

    function createPerson(string fname, string lname, address Paddress) public onlyOwner {
        tvm.accept();
        P_count++;
        persons[P_count]=Person(P_count, fname, lname, Paddress);
    }

    function deletePerson(uint PID) public onlyOwner {
        require(persons.exists(PID), 102);
        tvm.accept();
        delete persons[PID];
    }

    function send_gram(address Paddress, uint64 amount, bool bounce) pure public {
        tvm.accept();
        Paddress.transfer(amount,  bounce);
    }

    onBounce (TvmSlice body) pure external {
        require(body.bits()==0);
    }

    function getPerson() public view returns (Person[] mpersons){
        string fname;
        string lname;
        address Paddress;

        for ((uint PID, Person sperson): persons){
            fname=sperson.fname;
            lname=sperson.lname;
            Paddress = sperson.Paddress;
            mpersons.push(Person(PID, fname, lname, Paddress));
        }
    }


    //Entry Point for the DeBot

}





