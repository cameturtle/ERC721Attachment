// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "./ERC721Attachment.sol";

/**
 * @title SampleERC721
 * @dev Create a sample ERC721 standard token
 */
contract SampleERC721Attachment is ERC721Attachment {

    uint256 internal nextTokenId = 1;

    constructor(string memory tokenName, string memory tokenSymbol, address refreeToken) ERC721Attachment(tokenName, tokenSymbol, refreeToken) {}

    function mint() external {
        uint256 tokenId = nextTokenId;
        nextTokenId = nextTokenId + 1;
        super._mint(tokenId);
  }

    function setTokenURI(uint256 _tokenId, string memory _message) external {
        require(msg.sender == super.ownerOf(_tokenId));
        super._setTokenURI(_tokenId, _message);
  }
}