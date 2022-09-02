// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract Superclasse {

    address private proprietario;
    
    event ProprietarioSet(address indexed proprietarioAntigo, address indexed proprietarioNovo);

    modifier somenteProprietario() {
          require(msg.sender == proprietario, "Quem chamou nao eh o dono.");
            _;
    }
    
    constructor() {
        proprietario = msg.sender; 
        emit ProprietarioSet(address(0), proprietario);
    }
    
    function mudarProprietatio(address novoProprietario) public somenteProprietario {
        emit ProprietarioSet(proprietario, novoProprietario);
        proprietario = novoProprietario;
    }
    
    function obterProprietario() external view returns (address) {
        return proprietario;
    }
} 