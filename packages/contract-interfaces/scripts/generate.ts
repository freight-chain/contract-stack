import { promises as fs } from "fs";
import * as path from "path";
import { AbiDescription } from "@zoltu/ethereum-abi-encoder";
import { generateContractInterfaces, CompilerOutput } from "@zoltu/solidity-typescript-generator";

async function run() {
  const mainnetAbiPath = path.join(__dirname, "mainnet-abi");
  const abis: Record<string, { abi: ReadonlyArray<AbiDescription> }> = {};
  for (const filename of await fs.readdir(mainnetAbiPath)) {
    const fileContentsJson = await fs.readFile(path.join(mainnetAbiPath, filename), "utf8");
    const abi = JSON.parse(fileContentsJson) as ReadonlyArray<AbiDescription>;
    abis[filename.slice(0, -4)] = { abi };
  }
  const contractInterfaces = await generateContractInterfaces({ contracts: { "GasEVO.sol": abis } });
  await fs.writeFile(path.join(__dirname, "../source/index.ts"), contractInterfaces, { encoding: "utf8" });
}

run()
  .then(() => {
    process.exit(0);
  })
  .catch(error => {
    console.error(error);
    process.exit(1);
  });
