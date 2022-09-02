// SPDX-License-Identifier: GPL-3.0
import "./Superclasse.sol";

pragma solidity >=0.7.0 <0.9.0;

contract Subclasse is Superclasse {

    string nome;

    function armazenaNome(string memory _nome) somenteProprietario public {
        nome = _nome;
    }
    
    function obterNome() public view returns (string memory){
        return nome;
    }
}