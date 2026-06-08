// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

contract Streebog256 {
    function _PI_WORDS() private pure returns (uint256[16] memory) {
        uint256[16] memory pi;
        pi[
            0
        ] = 0xED6ECF11DDDDFEEC4E3A5D858AB378EE04C52323DAFAC4FBDE9770F0DB9331A1;
        pi[
            1
        ] = 0x5099C9B97EEDBD5FCC1814BBF1362C171A3193DBF077E94D04C52323DAFAC4FB;
        pi[
            2
        ] = 0x01C9BD026D866D1981C0BF65921E1FBD1A3193DBF077E94D04C52323DAFAC4FB;
        pi[
            3
        ] = 0x510D8E0B06EF3C7D218D3AC3F3F86581EE6ECF11DDDDFEEC4E3A5D858AB378EE;
        pi[
            4
        ] = 0x25913D4F9BA261B3E5407243AA3B73A8B30D8E0B06EF3C7D218D3AC3F3F86581;
        pi[
            5
        ] = 0x1BEF0D7A9C3E56C2A2C438A3AA0E5F89B8199BC0243CB2AED0D88419C8C9F08;
        pi[
            6
        ] = 0x5C2F0B2F9C2F7A5D71832353D1A1A7D9F7F3A716B6A2366C6D039EB0F1D0A7;
        pi[
            7
        ] = 0xA0B4F5F5E8B8CEA7F3E1E7371E7B6F15E6E9F5E5C2F3A5270B2F9C2F7A5D71;
        pi[
            8
        ] = 0xA5B0A5B5D4E5E0A8B0B5A5A4A8E8A7F6FBE5A0B4F5F5E8B8CEA7F3E1E7371E;
        pi[9] = 0xC0B0D0C2C5B5A5C5D5E4E0A8B0B5A5A4A8E8A7F6FBE5A0B4F5F5E8B8CEA7F;
        pi[10] = 0xFCFBFAF9F8F7E6E5E4F3F2F1F0B0D0C2C5B5A5C5D5E4E0A8B0B5A5A4A8E8;
        pi[
            11
        ] = 0xCECFCCCDCACBC8C9C6C7C4C5C2C3C0C1FCFBFAF9F8F7E6E5E4F3F2F1F0B0D0;
        pi[
            12
        ] = 0xEEEDECEBEAE9E8E7E6E5E4E3E2E1E0DFDEDDDCDBDAD9D8D7D6D5D4D3D2D1D0;
        pi[
            13
        ] = 0xFCFDFEFFFAFBF8F9F6F7F4F5F2F3F0F1EEEDECEBEAE9E8E7E6E5E4E3E2E1E0;
        pi[
            14
        ] = 0xC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFDFDEDDDCDBDAD9D8D7D6D5D4D3D2D1;
        pi[
            15
        ] = 0xF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFFDFDEDDDCDBDAD9D8D7D6D5D4D3D2D1;
        return pi;
    }

    function _A() private pure returns (uint64[64] memory) {
        uint64[64] memory a;
        a[0] = 0x8e20faa72ba0b470;
        a[1] = 0x47107ddd9b505a38;
        a[2] = 0xad08b0e0c3282d1c;
        a[3] = 0xd8045870ef14980e;
        a[4] = 0x6c022c38f90a4c07;
        a[5] = 0x3601161cf205268d;
        a[6] = 0x1b8e0b0e798c13c8;
        a[7] = 0x83478b07b2468764;
        a[8] = 0xa011d380818e8f40;
        a[9] = 0x5086e740ce47c920;
        a[10] = 0x2843fd2067adea10;
        a[11] = 0x14aff010bdd87508;
        a[12] = 0x0ad97808d06cb404;
        a[13] = 0x05e23c0468365a02;
        a[14] = 0x8c711e02341b2d01;
        a[15] = 0x46b60f011a83988e;
        a[16] = 0x90dab52a387ae76f;
        a[17] = 0x486dd4151c3dfdb9;
        a[18] = 0x24b86a840e90f0d1;
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

    function _C(uint i) private pure returns (uint64[8] memory) {
        if (i == 1)
            return
                [
                    uint64(0x1F7C65C0812FCBEB),
                    0xE9DACA1E5DAB08B1,
                    0xD06D714E16452E43,
                    0x76A6F2F1FC485750,
                    0x8DB84E71D7064598,
                    0x15D360A4082A22A4,
                    0x926791E0CE7B4BFC,
                    0x07A645F2596680DD
                ];
        if (i == 2)
            return
                [
                    uint64(0xD7B5700F469DE34F),
                    0x1A2F9DA98AB5A36F,
                    0x313501B5160F5ED6,
                    0x862B320A72EAFEF3,
                    0xD3069A6BE1A95BCA,
                    0xB2B2279B5B9FA0D3,
                    0x6E4F7B4F987A2B9B,
                    0xA7F2C4A2B0B4C6A1
                ];
        if (i == 3)
            return
                [
                    uint64(0x0F0E0DDD0C0B0A09),
                    0x0706050403020110,
                    0x1F1E1D1C1B1A1918,
                    0x1716151413121110,
                    0x2F2E2D2C2B2A2928,
                    0x2726252423222120,
                    0x3F3E3D3C3B3A3938,
                    0x3736353433323130
                ];
        if (i == 4)
            return
                [
                    uint64(0x00F9E8D7C6B5A493),
                    0x8291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1908,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 5)
            return
                [
                    uint64(0x00F9E8D7C6B5A4B1),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 6)
            return
                [
                    uint64(0x00F9E8D7C6B5A4B3),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 7)
            return
                [
                    uint64(0x00F9E8D7C6B5A4D3),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 8)
            return
                [
                    uint64(0x00F9E8D7C6B5A4F3),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 9)
            return
                [
                    uint64(0x00F9E8D7C6B5A4B5),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 10)
            return
                [
                    uint64(0x00F9E8D7C6B5A4B7),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 11)
            return
                [
                    uint64(0x00F9E8D7C6B5A4D9),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        if (i == 12)
            return
                [
                    uint64(0x00F9E8D7C6B5A4F9),
                    0x0291A0B0C1D2E3F4,
                    0x1F0E1D0C1B0A1928,
                    0x1726354433524170,
                    0x2F2E3D2C3B2A3928,
                    0x2736354433524170,
                    0x0F0E0D0C0B0A0908,
                    0x0716253443524170
                ];
        revert("Invalid C index");
    }

    function hash(bytes memory message) public pure returns (bytes32) {
        uint64[8] memory h;
        uint64[8] memory N;
        uint64[8] memory Sigma;

        uint256 len = message.length;
        uint256 pos = 0;

        while (pos + 64 <= len) {
            uint64[8] memory m = _loadBlock(message, pos);
            (h, N, Sigma) = _gN(h, N, m, Sigma);
            pos += 64;
        }

        uint64[8] memory padded;
        uint256 remaining = len - pos;
        if (remaining > 0) {
            _copyBytesToBlock(message, pos, padded, remaining);
        }
        assembly {
            mstore8(add(padded, remaining), 0x01)
        }

        (h, N, Sigma) = _gN(h, N, padded, Sigma);

        uint64[8] memory lenBits = _numToBlock(len * 8);
        N = _addMod512(N, lenBits);
        uint64[8] memory zero;

        (h, , ) = _gN(h, N, Sigma, zero);
        (h, , ) = _gN(h, zero, Sigma, zero);

        return _blockToBytes32(h);
    }

    function _gN(
        uint64[8] memory h,
        uint64[8] memory N,
        uint64[8] memory m,
        uint64[8] memory Sigma
    )
        private
        pure
        returns (uint64[8] memory, uint64[8] memory, uint64[8] memory)
    {
        uint64[8] memory K = _LPS(_xorBlock(h, N));
        uint64[8] memory t = _E(K, m);
        uint64[8] memory newH = _xorBlock(_xorBlock(t, h), m);
        uint64[8] memory newN = _addMod512(N, _numToBlock(512));
        uint64[8] memory newSigma = _addMod512(Sigma, m);
        return (newH, newN, newSigma);
    }

    function _P(uint64[8] memory a) private pure returns (uint64[8] memory) {
        uint64[8] memory res;
        for (uint i = 0; i < 8; i++) {
            for (uint j = 0; j < 8; j++) {
                uint8 byteVal = uint8((a[i] >> (j * 8)) & 0xFF);
                res[j] |= uint64(byteVal) << (i * 8);
            }
        }
        return res;
    }

    function _LPS(uint64[8] memory a) private pure returns (uint64[8] memory) {
        return _L(_P(_S(a)));
    }

    function _S(uint64[8] memory a) private pure returns (uint64[8] memory) {
        uint256[16] memory pi = _PI_WORDS();
        uint64[8] memory res;
        for (uint i = 0; i < 8; i++) {
            uint64 word = a[i];
            uint64 newWord;
            for (uint j = 0; j < 8; j++) {
                uint8 byteVal = uint8((word >> (j * 8)) & 0xFF);
                uint idx = byteVal;
                uint piWord = pi[idx / 32];
                uint8 newByte = uint8((piWord >> ((idx % 32) * 8)) & 0xFF);
                newWord |= uint64(newByte) << (j * 8);
            }
            res[i] = newWord;
        }
        return res;
    }

    function _L(uint64[8] memory a) private pure returns (uint64[8] memory) {
        uint64[64] memory A = _A();
        uint64[8] memory res;
        for (uint i = 0; i < 8; i++) {
            uint64 sum;
            for (uint j = 0; j < 64; j++) {
                if ((a[j / 8] >> (j % 8)) & 1 != 0) {
                    sum ^= A[j];
                }
            }
            res[i] = sum;
        }
        return res;
    }

    function _E(
        uint64[8] memory K,
        uint64[8] memory m
    ) private pure returns (uint64[8] memory) {
        uint64[8] memory state = m;
        for (uint i = 1; i <= 12; i++) {
            K = _LPS(_xorBlock(K, _C(i)));
            state = _LPS(_xorBlock(state, K));
        }
        return state;
    }

    function _xorBlock(
        uint64[8] memory a,
        uint64[8] memory b
    ) private pure returns (uint64[8] memory) {
        uint64[8] memory res;
        for (uint i = 0; i < 8; i++) {
            res[i] = a[i] ^ b[i];
        }
        return res;
    }

    function _addMod512(
        uint64[8] memory a,
        uint64[8] memory b
    ) private pure returns (uint64[8] memory) {
        uint64[8] memory res;
        uint64 carry = 0;
        for (uint i = 0; i < 8; i++) {
            uint64 sum = a[i] + b[i] + carry;
            if (sum < a[i] || (sum == a[i] && b[i] + carry > 0)) carry = 1;
            else carry = 0;
            res[i] = sum;
        }
        return res;
    }

    function _numToBlock(uint256 val) private pure returns (uint64[8] memory) {
        uint64[8] memory res;
        assembly {
            mstore(res, val)
            mstore(add(res, 32), 0)
        }
        return res;
    }

    function _loadBlock(
        bytes memory msg,
        uint256 offset
    ) private pure returns (uint64[8] memory) {
        uint64[8] memory res;
        assembly {
            let src := add(add(msg, 32), offset)
            let dst := res
            mstore(dst, mload(src))
            mstore(add(dst, 8), mload(add(src, 8)))
            mstore(add(dst, 16), mload(add(src, 16)))
            mstore(add(dst, 24), mload(add(src, 24)))
            mstore(add(dst, 32), mload(add(src, 32)))
            mstore(add(dst, 40), mload(add(src, 40)))
            mstore(add(dst, 48), mload(add(src, 48)))
            mstore(add(dst, 56), mload(add(src, 56)))
        }
        return res;
    }

    function _copyBytesToBlock(
        bytes memory src,
        uint256 srcOff,
        uint64[8] memory dst,
        uint256 len
    ) private pure {
        assembly {
            let s := add(add(src, 32), srcOff)
            let d := dst
            for {
                let i := 0
            } lt(i, len) {
                i := add(i, 1)
            } {
                mstore8(add(d, i), mload(add(s, i)))
            }
        }
    }

    function _blockToBytes32(
        uint64[8] memory b
    ) private pure returns (bytes32) {
        bytes32 res;
        assembly {
            mstore(0x00, mload(add(b, 32)))
            mstore(0x20, mload(add(b, 40)))
            res := mload(0x00)
        }
        return res;
    }
}