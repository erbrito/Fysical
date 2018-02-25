### Fysical Smart Contract

Fysical is a smart contract for introducing and trading arbitrarily-large data resources through [Ethereum](https://www.ethereum.org/). Please visit [Fysical.org](https://fysical.org/) to learn more.

### Smart Contract Source Code
The smart contract source code, available under [src](./src), consists of a single [Solidity](https://solidity.readthedocs.io/en/develop/) file, [Fysical.sol](./src/Fysical.sol), and a copy of the [zeppelin-solidity v1.6.0](https://github.com/OpenZeppelin/zeppelin-solidity/releases/tag/v1.6.0) source code in a zip archive.

### Building From Source Code
After cloning this repository, please:
1. Install [Solidity v0.4.19](https://github.com/ethereum/solidity/releases/tag/v0.4.19) and make the `solc` executable accessible on the path.
2. Ensure that an `unzip` utility is accessible on the path.
3. Execute [build.sh](build.sh) using [Bash](https://en.wikipedia.org/wiki/Bash_(Unix_shell)).

The result should be a `target` directory containing:
* `Fysical.abi` - the [application binary interface](https://solidity.readthedocs.io/en/develop/abi-spec.html#application-binary-interface-specification)
* `Fysical.bin` - the hex-encoded [Ethereum Virtual Machine bytecode](https://github.com/ethereum/wiki/wiki/Ethereum-Development-Tutorial#state-machine)
* `Fysical.signatures` - a mapping of [function selectors](https://solidity.readthedocs.io/en/develop/abi-spec.html#function-selector) to function signatures
