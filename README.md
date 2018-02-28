### Fysical Smart Contract
Fysical is a smart contract for introducing and trading arbitrarily-large data resources through [Ethereum](https://www.ethereum.org/). Please visit [Fysical.org](https://fysical.org/) to learn more.

### Smart Contract Source Code
The smart contract source code, available under [src](./src), consists of a single [Solidity](https://solidity.readthedocs.io/en/develop/) file, [Fysical.sol](./src/Fysical.sol), and a copy of the [zeppelin-solidity v1.6.0](https://github.com/OpenZeppelin/zeppelin-solidity/releases/tag/v1.6.0) source code in a zip archive.

### Source Code Audits
[Cure53](https://cure53.de/) and [SmartDec](http://smartcontracts.smartdec.net/) have audited the source code from commit [3d57d5c46ebfa3f0f416ce0569d598a78c441738](https://github.com/Fysical/Fysical/commit/3d57d5c46ebfa3f0f416ce0569d598a78c441738).

From the conclusion of [Cure53's Report](./audits/Cure53/FYS-01-final-report.pdf):
> The results of this Cure53 security audit of the smart contract operated by Fysical are positive. Despite the relatively complex data structures and functions, the smart contract appears very strong in terms of security properties. The overall small number of findings is an outstandingly positive sign, attesting to the fact that the Fysical team is developing their smart contract product with security in mind.

From the conclusion of [SmartDec's Report](./audits/SmartDec/SmartDec%20Fysical%20Security%20Audit%20Final.pdf):
> The audit showed high code quality and security of the project. No serious vulnerabilities were found. However, few medium and low severity issues were found and reported to the developer. In the latest version of the code most of them (and all of the important ones) were fixed.

### Building From Source Code
After cloning this repository, please:
1. Install [Solidity v0.4.19](https://github.com/ethereum/solidity/releases/tag/v0.4.19) and make the `solc` executable accessible on the path.
2. Ensure that an `unzip` utility is accessible on the path.
3. Execute [build.sh](build.sh) using [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).

The result should be a `target` directory containing:
* `Fysical.abi` - the [application binary interface](https://solidity.readthedocs.io/en/develop/abi-spec.html#application-binary-interface-specification)
* `Fysical.bin` - the hex-encoded [Ethereum Virtual Machine bytecode](https://github.com/ethereum/wiki/wiki/Ethereum-Development-Tutorial#state-machine)
* `Fysical.signatures` - a mapping of [function selectors](https://solidity.readthedocs.io/en/develop/abi-spec.html#function-selector) to function signatures

