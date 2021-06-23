// SPDX-License-Identifier: MIT
pragma solidity >= 0.5.0 < 0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

contract Color is ERC721 {

    string[] public colors;
    mapping(string => bool) colorExists;

    constructor () ERC721 ("Color","COLOR") {

    }

    function mint(string memory _color) public {
        require(!colorExists[_color]);
         for(uint i = 0; i<colors.length; i++){
             
                 colors.push(_color);
                 uint id = colors.length - 1;
                 _mint(msg.sender, id);
                 colorExists[_color] = true;
             
         }
         
    }
    
}