// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Streebog256 {
    function _PI_WORDS() private pure returns (uint256[8] memory) {
        uint256[8] memory pi;
        pi[0] = 0xC15FCD14BBF13617BA992E93DBF077E94D04C523DAFAC4FB16316ECF11DDEEFC;
        pi[1] = 0x1FD3D47F98ED0B06A08F6AE3AE0284054F8E018B423C1C8121EF5CE25A6518F9;
        pi[2] = 0x875DB79C471372BF12760C08560E70B5CCCE3AFDA2682AF2AB48C8EA512C34EB;
        pi[3] = 0x570DBDC380C6546D7E8A35FF3D197532B1B29E9D6F7891F3C79A7B102996A115;
        pi[4] = 0x4A0A334E5028E8DCBCB0947ADEEC0FE003B9227CF6D679D7C943A83EA924F5DF;
        pi[5] = 0x3B95D5697DA5A38C2F555E27924645AD41269F648238B81A4462001E736097A7;
        pi[6] = 0x6185D8CA90AA538DFEF83F4C49831BE189E7D988E46B3730F71DAC8640B35807;
        pi[7] = 0xB6634B39C2AF66D1C0B4F4E6D274A659526CE5BED0259BCB5B092B2DA4677120;
        return pi;
    }

    function _A_FULL() private pure returns (uint256[64] memory) {
        uint256[64] memory a;
        a[0]  = 0x8e20faa72ba0b470;
        a[1]  = 0x47107ddd9b505a38;
        a[2]  = 0xad08b0e0c3282d1c;
        a[3]  = 0xd8045870ef14980e;
        a[4]  = 0x6c022c38f90a4c07;
        a[5]  = 0x3601161cf205268d;
        a[6]  = 0x1b8e0b0e798c13c8;
        a[7]  = 0x83478b07b2468764;
        a[8]  = 0xa011d380818e8f40;
        a[9]  = 0x5086e740ce47c920;
        a[10] = 0x2843fd2067adea10;
        a[11] = 0x14aff010bdd87508;
        a[12] = 0x0ad97808d06cb404;
        a[13] = 0x05e23c0468365a02;
        a[14] = 0x8c711e02341b2d01;
        a[15] = 0x46b60f011a83988e;
        a[16] = 0x90dab52a387ae76f;
        a[17] = 0x486dd4151c3dfdb9;
        a[18] = 0x24b86a840e90f0d2;
        a[19] = 0x125c354207487869;
        a[20] = 0x092e94218d243cba;
        a[21] = 0x8a174a9ec8121e5d;
        a[22] = 0x4585254f64090fa0;
        a[23] = 0xaccc9ca9328a8950;
        a[24] = 0x9d4df05d5f661451;
        a[25] = 0xc0a878a0a1330aa6;
        a[26] = 0x60543c50de970553;
        a[27] = 0x302a1e286fc58ca7;
        a[28] = 0x18150f14b9ec46dd;
        a[29] = 0x0c84890ad27623e0;
        a[30] = 0x0642ca05693b9f70;
        a[31] = 0x0321658cba93c138;
        a[32] = 0x86275df09ce8aaa8;
        a[33] = 0x439da0784e745554;
        a[34] = 0xafc0503c273aa42a;
        a[35] = 0xd960281e9d1d5215;
        a[36] = 0xe230140fc0802984;
        a[37] = 0x71180a8960409a42;
        a[38] = 0xb60c05ca30204d21;
        a[39] = 0x5b068c651810a89e;
        a[40] = 0x456c34887a3805b9;
        a[41] = 0xac361a443d1c8cd2;
        a[42] = 0x561b0d22900e4669;
        a[43] = 0x2b838811480723ba;
        a[44] = 0x9bcf4486248d9f5d;
        a[45] = 0xc3e9224312c8c1a0;
        a[46] = 0xeffa11af0964ee50;
        a[47] = 0xf97d86d98a327728;
        a[48] = 0xe4fa2054a80b329c;
        a[49] = 0x727d102a548b194e;
        a[50] = 0x39b008152acb8227;
        a[51] = 0x9258048415eb419d;
        a[52] = 0x492c024284fbaec0;
        a[53] = 0xaa16012142f35760;
        a[54] = 0x550b8e9e21f7a530;
        a[55] = 0xa48b474f9ef5dc18;
        a[56] = 0x70a6a56e2440598e;
        a[57] = 0x3853dc371220a247;
        a[58] = 0x1ca76e95091051ad;
        a[59] = 0x0edd37c48a08a6d8;
        a[60] = 0x07e095624504536c;
        a[61] = 0x8d70c431ac02a736;
        a[62] = 0xc83862965601dd1b;
        a[63] = 0x641c314b2b8ee083;
        return a;
    }

    function hash(bytes memory message) public pure returns (bytes32) {
        uint256[8] memory pi = _PI_WORDS();
        uint256[64] memory a = _A_FULL();

        assembly {
            function _xorBlock(dst, aLoc, bLoc) {
                mstore(dst, xor(mload(aLoc), mload(bLoc)))
                mstore(add(dst, 32), xor(mload(add(aLoc, 32)), mload(add(bLoc, 32))))
            }

            function _copyBlock(dst, src) {
                mstore(dst, mload(src))
                mstore(add(dst, 32), mload(add(src, 32)))
            }

            function _addMod512(dst, aLoc, bLoc) {
                let aLo := mload(aLoc)
                let aHi := mload(add(aLoc, 32))
                let bLo := mload(bLoc)
                let bHi := mload(add(bLoc, 32))
                let sumLo := add(aLo, bLo)
                let carry := lt(sumLo, aLo)
                let sumHi := add(add(aHi, bHi), carry)
                mstore(dst, sumLo)
                mstore(add(dst, 32), sumHi)
            }

            function _S(ptr, piPtr) {
                for { let i := 0 } lt(i, 8) { i := add(i, 1) } {
                    let word := mload(add(ptr, mul(i, 8)))
                    let newWord := 0
                    for { let j := 0 } lt(j, 8) { j := add(j, 1) } {
                        let byteVal := and(shr(mul(j, 8), word), 0xff)
                        let idx := byteVal
                        let piWord := mload(add(piPtr, mul(div(idx, 32), 32)))
                        let piByte := and(shr(mul(mod(idx, 32), 8), piWord), 0xff)
                        newWord := or(newWord, shl(mul(j, 8), piByte))
                    }
                    mstore(add(ptr, mul(i, 8)), newWord)
                }
            }

            function _P(ptr, tmp) {
                mstore(tmp, 0)
                mstore(add(tmp, 32), 0)
                for { let i := 0 } lt(i, 8) { i := add(i, 1) } {
                    let word := mload(add(ptr, mul(i, 8)))
                    for { let j := 0 } lt(j, 8) { j := add(j, 1) } {
                        let byteVal := and(shr(mul(j, 8), word), 0xff)
                        let old := mload(add(tmp, mul(j, 8)))
                        let new := or(old, shl(mul(i, 8), byteVal))
                        mstore(add(tmp, mul(j, 8)), new)
                    }
                }
                _copyBlock(ptr, tmp)
            }

            function _L(ptr, aPtr) {
                let res0 := 0
                let res1 := 0
                let res2 := 0
                let res3 := 0
                let res4 := 0
                let res5 := 0
                let res6 := 0
                let res7 := 0
                for { let j := 0 } lt(j, 64) { j := add(j, 1) } {
                    let wordIdx := div(j, 8)
                    let bitIdx := mod(j, 8)
                    let word := mload(add(ptr, mul(wordIdx, 8)))
                    let bitSet := and(shr(bitIdx, word), 1)
                    if bitSet {
                        let aOff := mul(j, 64)
                        let aWord0 := mload(add(aPtr, aOff))
                        let aWord1 := mload(add(aPtr, add(aOff, 32)))
                        res0 := xor(res0, aWord0)
                        res1 := xor(res1, aWord1)
                        res2 := xor(res2, mload(add(aPtr, add(aOff, 64))))
                        res3 := xor(res3, mload(add(aPtr, add(aOff, 96))))
                        res4 := xor(res4, mload(add(aPtr, add(aOff, 128))))
                        res5 := xor(res5, mload(add(aPtr, add(aOff, 160))))
                        res6 := xor(res6, mload(add(aPtr, add(aOff, 192))))
                        res7 := xor(res7, mload(add(aPtr, add(aOff, 224))))
                    }
                }
                mstore(ptr, res0)
                mstore(add(ptr, 8), res1)
                mstore(add(ptr, 16), res2)
                mstore(add(ptr, 24), res3)
                mstore(add(ptr, 32), res4)
                mstore(add(ptr, 40), res5)
                mstore(add(ptr, 48), res6)
                mstore(add(ptr, 56), res7)
            }

            function _LPS(dst, src, piPtr, aPtr, tmp) {
                _copyBlock(dst, src)
                _S(dst, piPtr)
                _P(dst, tmp)
                _L(dst, aPtr)
            }

            function _E(Kptr, statePtr, piPtr, aPtr, tmpXor, tmpLps, cMem) {
                for { let i := 1 } lt(i, 13) { i := add(i, 1) } {
                    let cOff := mul(sub(i, 1), 64)
                    mstore(tmpLps, mload(add(cMem, cOff)))
                    mstore(add(tmpLps, 32), mload(add(cMem, add(cOff, 32))))
                    _xorBlock(tmpXor, Kptr, tmpLps)
                    _LPS(Kptr, tmpXor, piPtr, aPtr, tmpLps)
                    _xorBlock(tmpXor, statePtr, Kptr)
                    _LPS(statePtr, tmpXor, piPtr, aPtr, tmpLps)
                }
            }

            function _gN(hPtr, nPtr, mPtr, sigmaPtr, piPtr, aPtr, cMem, Kptr, tPtr, tmp1, tmp2) {
                _xorBlock(tPtr, hPtr, nPtr)
                _LPS(Kptr, tPtr, piPtr, aPtr, tmp1)
                _copyBlock(tmp2, mPtr)
                _E(Kptr, tmp2, piPtr, aPtr, tPtr, tmp1, cMem)
                _xorBlock(tPtr, tmp2, hPtr)
                _xorBlock(hPtr, tPtr, mPtr)
                mstore(tPtr, 512)
                mstore(add(tPtr, 32), 0)
                _addMod512(nPtr, nPtr, tPtr)
                _addMod512(sigmaPtr, sigmaPtr, mPtr)
            }

            let free := mload(0x40)
            let hMem := free
            free := add(free, 64)
            let nMem := free
            free := add(free, 64)
            let sigmaMem := free
            free := add(free, 64)
            let blockMem := free
            free := add(free, 64)
            let Kmem := free
            free := add(free, 64)
            let tMem := free
            free := add(free, 64)
            let tmp1 := free
            free := add(free, 64)
            let tmp2 := free
            free := add(free, 64)
            let cMem := free
            free := add(free, 768)
            mstore(0x40, free)

            for { let r := 1 } lt(r, 13) { r := add(r, 1) } {
                let off := mul(sub(r, 1), 64)
                let c0, c1
                switch r
                case 1 { c0 := 0xB1085BDA1ECADAE9EBCB2F81C0657C1F2F6A76432E45D016714EB88D7585C4FC c1 := 0x4B7CE09192676901A2422A08A460D31505767436CC744D23DD806559F2A64507 }
                case 2 { c0 := 0x6FA3B58AA99D2F1A4FE39D460F70B5D7F3FEA720A232B9861D55E0F16B501319 c1 := 0x9AB5176B12D6995815CB561C2DB0AA7CA55DDA21BD7CBC56E679047021B19BB7 }
                case 3 { c0 := 0xF574DCAC2BCE2FC70A39FC286A3D843506F15E5F529C1F8BF2EA7514B1297B7B c1 := 0xD3E20FE490359EB1C1C93A376062DB09C2B6F443867ADB31991E96F50ABA0AB2 }
                case 4 { c0 := 0xEF1FDFB3E81566D2F948E1A05D71E4DD488E857E335C3C7D9D721CAD685E353F c1 := 0xA9D72C82ED03D675D8B7133935203BE3453EAA193E837F1220CBEEBC84E3D12E }
                case 5 { c0 := 0x4BEA6BACAD474799A3F4106C6A923637F151C1F1686104A359E35D7800FFBDBF c1 := 0xBFCD1747253AF5A3DFF00B723271A1637A56A27EA9EA63F5601758FD7C6CFE57 }
                case 6 { c0 := 0xAE4FAEE1D3AD3D96FA4C33B7A3039C02D66C4F95142A46C187F9AB49AF08EC6C c1 := 0xCFFAA6B71C9AB7B40AF21F66C2BEC6B6BF71C57236904F35FA68407A46647D6E }
                case 7 { c0 := 0xF4C70E16EEAAC5EC51AC86FEBF240954399EC6C7E6BF87C9D3473E33197A93C9 c1 := 0x0992ABC52D822C3706747683284A05043517454CA23C4AF38886564D3A14D493 }
                case 8 { c0 := 0x9B1F5B424D93C9A703E7AA020C6E41414EB7F8719C36DE1E89B4443B4DDBC49A c1 := 0xF4892BCB929B069069D18D2BD1A5C42F36ACC2355951A8D9A47F0DD4BF02E71E }
                case 9 { c0 := 0x378F5A541631229B944C9AD8EC165FDE3A7D3A1B258942243CD955B7E00D0984 c1 := 0x800A440BDB2CEB17B2B8A9AA6079C540E38DC692CB1F2A607261445183235ADB }
                case 10 { c0 := 0xABBEDEA680056F52382AE548B2E4F3F38941E71CFF8A78DB1FFE18A1B3361039 c1 := 0x9FE76702AF69334B7A1E6C303B7652F43698FAD1153BB6C374B4C7FB98459CED }
                case 11 { c0 := 0x7BCD9ED0EFC889FB3002C6CD635AFE94D8FA6BBBEBAB07612001802114846798 c1 := 0x8A1D71EFE48B9CAEFBACD1D7D476E98DEA2594AC06FD85D6BCACA4CD81F32D1B }
                case 12 { c0 := 0x378E767F11631BAD21380B00449B17ACDA43C32BCD1D7F782012D430219FB5D8 c1 := 0x5D800EF9D1891CC86E71DA4AA8E12852FA4F17D5D9B21B9948BC924AF11BD720 }
                default { revert(0,0) }
                mstore(add(cMem, off), c0)
                mstore(add(cMem, add(off, 32)), c1)
            }

            mstore(hMem, 0)
            mstore(add(hMem, 32), 0)
            mstore(nMem, 0)
            mstore(add(nMem, 32), 0)
            mstore(sigmaMem, 0)
            mstore(add(sigmaMem, 32), 0)

            let len := mload(message)
            let pos := 0
            for { } lt(add(pos, 64), add(len, 1)) { pos := add(pos, 64) } {
                let src := add(add(message, 32), pos)
                mstore(blockMem, mload(src))
                mstore(add(blockMem, 8), mload(add(src, 8)))
                mstore(add(blockMem, 16), mload(add(src, 16)))
                mstore(add(blockMem, 24), mload(add(src, 24)))
                mstore(add(blockMem, 32), mload(add(src, 32)))
                mstore(add(blockMem, 40), mload(add(src, 40)))
                mstore(add(blockMem, 48), mload(add(src, 48)))
                mstore(add(blockMem, 56), mload(add(src, 56)))
                _gN(hMem, nMem, blockMem, sigmaMem, pi, a, cMem, Kmem, tMem, tmp1, tmp2)
            }

            mstore(blockMem, 0)
            mstore(add(blockMem, 32), 0)
            let remaining := sub(len, pos)
            if gt(remaining, 0) {
                let src := add(add(message, 32), pos)
                for { let i := 0 } lt(i, remaining) { i := add(i, 1) } {
                    mstore8(add(blockMem, i), byte(0, mload(add(src, i))))
                }
            }
            mstore8(add(blockMem, remaining), 0x01)

            _gN(hMem, nMem, blockMem, sigmaMem, pi, a, cMem, Kmem, tMem, tmp1, tmp2)

            mstore(tMem, mul(len, 8))
            mstore(add(tMem, 32), 0)
            _addMod512(nMem, nMem, tMem)

            mstore(blockMem, 0)
            mstore(add(blockMem, 32), 0)
            _gN(hMem, nMem, sigmaMem, blockMem, pi, a, cMem, Kmem, tMem, tmp1, tmp2)
            _gN(hMem, blockMem, sigmaMem, blockMem, pi, a, cMem, Kmem, tMem, tmp1, tmp2)

            let hashVal := mload(add(hMem, 32))
            mstore(0x00, hashVal)
            return(0x00, 32)
        }
    }
}
