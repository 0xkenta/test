async function main() {
    const proposal = ethers.utils.formatBytes32String("join ZKU")
    const ballotFactory = await ethers.getContractFactory("Ballot");
 
    // Start deployment, returning a promise that resolves to a contract object
    const ballot = await ballotFactory.deploy([proposal]);   
    console.log("Contract deployed to address:", ballot.address);
 }
 
 main()
   .then(() => process.exit(0))
   .catch(error => {
     console.error(error);
     process.exit(1);
   });