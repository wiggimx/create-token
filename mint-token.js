const MyToken = artifacts.require("WiggiCoin");

module.exports = async function(callback) {

    const myToken = await MyToken.deployed();
    await myToken.mint("<<address>>", "1000000000000000000");
    console.log("Minting complete");

    callback();
}
