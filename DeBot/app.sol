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


//Import the Target smart contract
import "app.sol";
import "../Debot.sol";
/*Simple input/output. Allows to print string messages to the user and get input string from the user. */
import "../Terminal.sol";
/*Interface for menu. */
import "../Menu.sol";
/*Allows to input smart contract address. */
import "../AddressInput.sol";
/*Interface for confirm input. */
import "../ConfirmInput.sol";
/*Allows the update of code */
import "../Upgradable.sol";
/*Builtin Interface that covers subset of TON SDK functions. Implemented by DEngine. */
import "../Sdk.sol";
import "../Transferable.sol";
/*Interface for amount input. */
import "../AmountInput.sol";
import "../UserInfo.sol";
/*Interface for getting signing box which can be used to sign external messages and other arbitrary 
data by handle without accessing the keys directly.*/
import "../SigningBoxInput.sol";
/*Allows to manage security card. */
import "../SecurityCardManagement.sol";
/*Allows to scan qrcode and return its data as string. */
import "../QRCode.sol";
/*Interface for number input. */
import "../NumberInput.sol";
/*Interface for creating new encryption box that can encrypt/decrypt data using defined crypto algorithm. */
import "../EncryptionBoxInput.sol";
/*Allows to input date and time. */
import "../DateTimeInput.sol";
/*Allows you to input the country code (ISO 3166-1 alpha-2) and customize the list of countries. */
import "../CountryInput.sol";


contract App{
 

    //Entry Point for the DeBot

}





