// Code generated - DO NOT EDIT.
// Generated using https://github.com/privacy-scaling-explorations/snark-verifier

// SPDX-License-Identifier: MIT
//  _____     _ _         _         _
// |_   _|_ _(_) |_____  | |   __ _| |__ ___
//   | |/ _` | | / / _ \ | |__/ _` | '_ (_-<
//   |_|\__,_|_|_\_\___/ |____\__,_|_.__/__/
//
//   Email: security@taiko.xyz
//   Website: https://taiko.xyz
//   GitHub: https://github.com/taikoxyz
//   Discord: https://discord.gg/taikoxyz
//   Twitter: https://twitter.com/taikoxyz
//   Blog: https://mirror.xyz/labs.taiko.eth
//   Youtube: https://www.youtube.com/@taikoxyz

pragma solidity 0.8.20;

contract Halo2Verifier {
    fallback(bytes calldata) external returns (bytes memory) {
        assembly {
            let success := true
            let f_p := 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
            let f_q := 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
            function validate_ec_point(x, y) -> valid {
                {
                    let x_lt_p :=
                        lt(x, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47)
                    let y_lt_p :=
                        lt(y, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47)
                    valid := and(x_lt_p, y_lt_p)
                }
                {
                    let y_square :=
                        mulmod(y, y, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47)
                    let x_square :=
                        mulmod(x, x, 0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47)
                    let x_cube :=
                        mulmod(
                            x_square,
                            x,
                            0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                        )
                    let x_cube_plus_3 :=
                        addmod(
                            x_cube,
                            3,
                            0x30644e72e131a029b85045b68181585d97816a916871ca8d3c208c16d87cfd47
                        )
                    let is_affine := eq(x_cube_plus_3, y_square)
                    valid := and(valid, is_affine)
                }
            }
            mstore(0x20, mod(calldataload(0x0), f_q))
            mstore(0x40, mod(calldataload(0x20), f_q))
            mstore(0x60, mod(calldataload(0x40), f_q))
            mstore(0x80, mod(calldataload(0x60), f_q))
            mstore(0xa0, mod(calldataload(0x80), f_q))
            mstore(0xc0, mod(calldataload(0xa0), f_q))
            mstore(0xe0, mod(calldataload(0xc0), f_q))
            mstore(0x100, mod(calldataload(0xe0), f_q))
            mstore(0x120, mod(calldataload(0x100), f_q))
            mstore(0x140, mod(calldataload(0x120), f_q))
            mstore(0x160, mod(calldataload(0x140), f_q))
            mstore(0x180, mod(calldataload(0x160), f_q))
            mstore(0x1a0, mod(calldataload(0x180), f_q))
            mstore(0x1c0, mod(calldataload(0x1a0), f_q))
            mstore(0x1e0, mod(calldataload(0x1c0), f_q))
            mstore(0x200, mod(calldataload(0x1e0), f_q))
            mstore(0x220, mod(calldataload(0x200), f_q))
            mstore(0x240, mod(calldataload(0x220), f_q))
            mstore(
                0x0, 15300826124191168535433744134019937124812845279865662447667831557873128043246
            )

            {
                let x := calldataload(0x240)
                mstore(0x260, x)
                let y := calldataload(0x260)
                mstore(0x280, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x280)
                mstore(0x2a0, x)
                let y := calldataload(0x2a0)
                mstore(0x2c0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x2c0)
                mstore(0x2e0, x)
                let y := calldataload(0x2e0)
                mstore(0x300, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x300)
                mstore(0x320, x)
                let y := calldataload(0x320)
                mstore(0x340, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x340)
                mstore(0x360, x)
                let y := calldataload(0x360)
                mstore(0x380, y)
                success := and(validate_ec_point(x, y), success)
            }
            mstore(0x3a0, keccak256(0x0, 928))
            {
                let hash := mload(0x3a0)
                mstore(0x3c0, mod(hash, f_q))
                mstore(0x3e0, hash)
            }

            {
                let x := calldataload(0x380)
                mstore(0x400, x)
                let y := calldataload(0x3a0)
                mstore(0x420, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x3c0)
                mstore(0x440, x)
                let y := calldataload(0x3e0)
                mstore(0x460, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x400)
                mstore(0x480, x)
                let y := calldataload(0x420)
                mstore(0x4a0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x440)
                mstore(0x4c0, x)
                let y := calldataload(0x460)
                mstore(0x4e0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x480)
                mstore(0x500, x)
                let y := calldataload(0x4a0)
                mstore(0x520, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x4c0)
                mstore(0x540, x)
                let y := calldataload(0x4e0)
                mstore(0x560, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x500)
                mstore(0x580, x)
                let y := calldataload(0x520)
                mstore(0x5a0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x540)
                mstore(0x5c0, x)
                let y := calldataload(0x560)
                mstore(0x5e0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x580)
                mstore(0x600, x)
                let y := calldataload(0x5a0)
                mstore(0x620, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x5c0)
                mstore(0x640, x)
                let y := calldataload(0x5e0)
                mstore(0x660, y)
                success := and(validate_ec_point(x, y), success)
            }
            mstore(0x680, keccak256(0x3e0, 672))
            {
                let hash := mload(0x680)
                mstore(0x6a0, mod(hash, f_q))
                mstore(0x6c0, hash)
            }
            mstore8(1760, 1)
            mstore(0x6e0, keccak256(0x6c0, 33))
            {
                let hash := mload(0x6e0)
                mstore(0x700, mod(hash, f_q))
                mstore(0x720, hash)
            }

            {
                let x := calldataload(0x600)
                mstore(0x740, x)
                let y := calldataload(0x620)
                mstore(0x760, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x640)
                mstore(0x780, x)
                let y := calldataload(0x660)
                mstore(0x7a0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x680)
                mstore(0x7c0, x)
                let y := calldataload(0x6a0)
                mstore(0x7e0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x6c0)
                mstore(0x800, x)
                let y := calldataload(0x6e0)
                mstore(0x820, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x700)
                mstore(0x840, x)
                let y := calldataload(0x720)
                mstore(0x860, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x740)
                mstore(0x880, x)
                let y := calldataload(0x760)
                mstore(0x8a0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x780)
                mstore(0x8c0, x)
                let y := calldataload(0x7a0)
                mstore(0x8e0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x7c0)
                mstore(0x900, x)
                let y := calldataload(0x7e0)
                mstore(0x920, y)
                success := and(validate_ec_point(x, y), success)
            }
            mstore(0x940, keccak256(0x720, 544))
            {
                let hash := mload(0x940)
                mstore(0x960, mod(hash, f_q))
                mstore(0x980, hash)
            }

            {
                let x := calldataload(0x800)
                mstore(0x9a0, x)
                let y := calldataload(0x820)
                mstore(0x9c0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x840)
                mstore(0x9e0, x)
                let y := calldataload(0x860)
                mstore(0xa00, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x880)
                mstore(0xa20, x)
                let y := calldataload(0x8a0)
                mstore(0xa40, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x8c0)
                mstore(0xa60, x)
                let y := calldataload(0x8e0)
                mstore(0xa80, y)
                success := and(validate_ec_point(x, y), success)
            }
            mstore(0xaa0, keccak256(0x980, 288))
            {
                let hash := mload(0xaa0)
                mstore(0xac0, mod(hash, f_q))
                mstore(0xae0, hash)
            }
            mstore(0xb00, mod(calldataload(0x900), f_q))
            mstore(0xb20, mod(calldataload(0x920), f_q))
            mstore(0xb40, mod(calldataload(0x940), f_q))
            mstore(0xb60, mod(calldataload(0x960), f_q))
            mstore(0xb80, mod(calldataload(0x980), f_q))
            mstore(0xba0, mod(calldataload(0x9a0), f_q))
            mstore(0xbc0, mod(calldataload(0x9c0), f_q))
            mstore(0xbe0, mod(calldataload(0x9e0), f_q))
            mstore(0xc00, mod(calldataload(0xa00), f_q))
            mstore(0xc20, mod(calldataload(0xa20), f_q))
            mstore(0xc40, mod(calldataload(0xa40), f_q))
            mstore(0xc60, mod(calldataload(0xa60), f_q))
            mstore(0xc80, mod(calldataload(0xa80), f_q))
            mstore(0xca0, mod(calldataload(0xaa0), f_q))
            mstore(0xcc0, mod(calldataload(0xac0), f_q))
            mstore(0xce0, mod(calldataload(0xae0), f_q))
            mstore(0xd00, mod(calldataload(0xb00), f_q))
            mstore(0xd20, mod(calldataload(0xb20), f_q))
            mstore(0xd40, mod(calldataload(0xb40), f_q))
            mstore(0xd60, mod(calldataload(0xb60), f_q))
            mstore(0xd80, mod(calldataload(0xb80), f_q))
            mstore(0xda0, mod(calldataload(0xba0), f_q))
            mstore(0xdc0, mod(calldataload(0xbc0), f_q))
            mstore(0xde0, mod(calldataload(0xbe0), f_q))
            mstore(0xe00, mod(calldataload(0xc00), f_q))
            mstore(0xe20, mod(calldataload(0xc20), f_q))
            mstore(0xe40, mod(calldataload(0xc40), f_q))
            mstore(0xe60, mod(calldataload(0xc60), f_q))
            mstore(0xe80, mod(calldataload(0xc80), f_q))
            mstore(0xea0, mod(calldataload(0xca0), f_q))
            mstore(0xec0, mod(calldataload(0xcc0), f_q))
            mstore(0xee0, mod(calldataload(0xce0), f_q))
            mstore(0xf00, mod(calldataload(0xd00), f_q))
            mstore(0xf20, mod(calldataload(0xd20), f_q))
            mstore(0xf40, mod(calldataload(0xd40), f_q))
            mstore(0xf60, mod(calldataload(0xd60), f_q))
            mstore(0xf80, mod(calldataload(0xd80), f_q))
            mstore(0xfa0, mod(calldataload(0xda0), f_q))
            mstore(0xfc0, mod(calldataload(0xdc0), f_q))
            mstore(0xfe0, mod(calldataload(0xde0), f_q))
            mstore(0x1000, mod(calldataload(0xe00), f_q))
            mstore(0x1020, mod(calldataload(0xe20), f_q))
            mstore(0x1040, mod(calldataload(0xe40), f_q))
            mstore(0x1060, mod(calldataload(0xe60), f_q))
            mstore(0x1080, mod(calldataload(0xe80), f_q))
            mstore(0x10a0, mod(calldataload(0xea0), f_q))
            mstore(0x10c0, mod(calldataload(0xec0), f_q))
            mstore(0x10e0, mod(calldataload(0xee0), f_q))
            mstore(0x1100, mod(calldataload(0xf00), f_q))
            mstore(0x1120, mod(calldataload(0xf20), f_q))
            mstore(0x1140, mod(calldataload(0xf40), f_q))
            mstore(0x1160, mod(calldataload(0xf60), f_q))
            mstore(0x1180, mod(calldataload(0xf80), f_q))
            mstore(0x11a0, mod(calldataload(0xfa0), f_q))
            mstore(0x11c0, mod(calldataload(0xfc0), f_q))
            mstore(0x11e0, mod(calldataload(0xfe0), f_q))
            mstore(0x1200, mod(calldataload(0x1000), f_q))
            mstore(0x1220, keccak256(0xae0, 1856))
            {
                let hash := mload(0x1220)
                mstore(0x1240, mod(hash, f_q))
                mstore(0x1260, hash)
            }

            {
                let x := calldataload(0x1020)
                mstore(0x1280, x)
                let y := calldataload(0x1040)
                mstore(0x12a0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x1060)
                mstore(0x12c0, x)
                let y := calldataload(0x1080)
                mstore(0x12e0, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x10a0)
                mstore(0x1300, x)
                let y := calldataload(0x10c0)
                mstore(0x1320, y)
                success := and(validate_ec_point(x, y), success)
            }

            {
                let x := calldataload(0x10e0)
                mstore(0x1340, x)
                let y := calldataload(0x1100)
                mstore(0x1360, y)
                success := and(validate_ec_point(x, y), success)
            }
            mstore(0x1380, keccak256(0x1260, 288))
            {
                let hash := mload(0x1380)
                mstore(0x13a0, mod(hash, f_q))
                mstore(0x13c0, hash)
            }
            {
                let x := mload(0x60)
                x := add(x, shl(68, mload(0x80)))
                x := add(x, shl(136, mload(0xa0)))
                x := add(x, shl(204, mload(0xc0)))
                mstore(5088, x)
                let y := mload(0xe0)
                y := add(y, shl(68, mload(0x100)))
                y := add(y, shl(136, mload(0x120)))
                y := add(y, shl(204, mload(0x140)))
                mstore(5120, y)

                success := and(validate_ec_point(x, y), success)
            }
            {
                let x := mload(0x160)
                x := add(x, shl(68, mload(0x180)))
                x := add(x, shl(136, mload(0x1a0)))
                x := add(x, shl(204, mload(0x1c0)))
                mstore(5152, x)
                let y := mload(0x1e0)
                y := add(y, shl(68, mload(0x200)))
                y := add(y, shl(136, mload(0x220)))
                y := add(y, shl(204, mload(0x240)))
                mstore(5184, y)

                success := and(validate_ec_point(x, y), success)
            }
            mstore(0x1460, mulmod(mload(0xac0), mload(0xac0), f_q))
            mstore(0x1480, mulmod(mload(0x1460), mload(0x1460), f_q))
            mstore(0x14a0, mulmod(mload(0x1480), mload(0x1480), f_q))
            mstore(0x14c0, mulmod(mload(0x14a0), mload(0x14a0), f_q))
            mstore(0x14e0, mulmod(mload(0x14c0), mload(0x14c0), f_q))
            mstore(0x1500, mulmod(mload(0x14e0), mload(0x14e0), f_q))
            mstore(0x1520, mulmod(mload(0x1500), mload(0x1500), f_q))
            mstore(0x1540, mulmod(mload(0x1520), mload(0x1520), f_q))
            mstore(0x1560, mulmod(mload(0x1540), mload(0x1540), f_q))
            mstore(0x1580, mulmod(mload(0x1560), mload(0x1560), f_q))
            mstore(0x15a0, mulmod(mload(0x1580), mload(0x1580), f_q))
            mstore(0x15c0, mulmod(mload(0x15a0), mload(0x15a0), f_q))
            mstore(0x15e0, mulmod(mload(0x15c0), mload(0x15c0), f_q))
            mstore(0x1600, mulmod(mload(0x15e0), mload(0x15e0), f_q))
            mstore(0x1620, mulmod(mload(0x1600), mload(0x1600), f_q))
            mstore(0x1640, mulmod(mload(0x1620), mload(0x1620), f_q))
            mstore(0x1660, mulmod(mload(0x1640), mload(0x1640), f_q))
            mstore(0x1680, mulmod(mload(0x1660), mload(0x1660), f_q))
            mstore(0x16a0, mulmod(mload(0x1680), mload(0x1680), f_q))
            mstore(0x16c0, mulmod(mload(0x16a0), mload(0x16a0), f_q))
            mstore(0x16e0, mulmod(mload(0x16c0), mload(0x16c0), f_q))
            mstore(0x1700, mulmod(mload(0x16e0), mload(0x16e0), f_q))
            mstore(
                0x1720,
                addmod(
                    mload(0x1700),
                    21888242871839275222246405745257275088548364400416034343698204186575808495616,
                    f_q
                )
            )
            mstore(
                0x1740,
                mulmod(
                    mload(0x1720),
                    21888237653275510688422624196183639687472264873923820041627027729598873448513,
                    f_q
                )
            )
            mstore(
                0x1760,
                mulmod(
                    mload(0x1740),
                    10939663269433627367777756708678102241564365262857670666700619874077960926249,
                    f_q
                )
            )
            mstore(
                0x1780,
                addmod(
                    mload(0xac0),
                    10948579602405647854468649036579172846983999137558363676997584312497847569368,
                    f_q
                )
            )
            mstore(
                0x17a0,
                mulmod(
                    mload(0x1740),
                    11016257578652593686382655500910603527869149377564754001549454008164059876499,
                    f_q
                )
            )
            mstore(
                0x17c0,
                addmod(
                    mload(0xac0),
                    10871985293186681535863750244346671560679215022851280342148750178411748619118,
                    f_q
                )
            )
            mstore(
                0x17e0,
                mulmod(
                    mload(0x1740),
                    15402826414547299628414612080036060696555554914079673875872749760617770134879,
                    f_q
                )
            )
            mstore(
                0x1800,
                addmod(
                    mload(0xac0),
                    6485416457291975593831793665221214391992809486336360467825454425958038360738,
                    f_q
                )
            )
            mstore(
                0x1820,
                mulmod(
                    mload(0x1740),
                    21710372849001950800533397158415938114909991150039389063546734567764856596059,
                    f_q
                )
            )
            mstore(
                0x1840,
                addmod(
                    mload(0xac0),
                    177870022837324421713008586841336973638373250376645280151469618810951899558,
                    f_q
                )
            )
            mstore(
                0x1860,
                mulmod(
                    mload(0x1740),
                    2785514556381676080176937710880804108647911392478702105860685610379369825016,
                    f_q
                )
            )
            mstore(
                0x1880,
                addmod(
                    mload(0xac0),
                    19102728315457599142069468034376470979900453007937332237837518576196438670601,
                    f_q
                )
            )
            mstore(
                0x18a0,
                mulmod(
                    mload(0x1740),
                    8734126352828345679573237859165904705806588461301144420590422589042130041188,
                    f_q
                )
            )
            mstore(
                0x18c0,
                addmod(
                    mload(0xac0),
                    13154116519010929542673167886091370382741775939114889923107781597533678454429,
                    f_q
                )
            )
            mstore(0x18e0, mulmod(mload(0x1740), 1, f_q))
            mstore(
                0x1900,
                addmod(
                    mload(0xac0),
                    21888242871839275222246405745257275088548364400416034343698204186575808495616,
                    f_q
                )
            )
            mstore(
                0x1920,
                mulmod(
                    mload(0x1740),
                    11211301017135681023579411905410872569206244553457844956874280139879520583390,
                    f_q
                )
            )
            mstore(
                0x1940,
                addmod(
                    mload(0xac0),
                    10676941854703594198666993839846402519342119846958189386823924046696287912227,
                    f_q
                )
            )
            mstore(
                0x1960,
                mulmod(
                    mload(0x1740),
                    1426404432721484388505361748317961535523355871255605456897797744433766488507,
                    f_q
                )
            )
            mstore(
                0x1980,
                addmod(
                    mload(0xac0),
                    20461838439117790833741043996939313553025008529160428886800406442142042007110,
                    f_q
                )
            )
            mstore(
                0x19a0,
                mulmod(
                    mload(0x1740),
                    12619617507853212586156872920672483948819476989779550311307282715684870266992,
                    f_q
                )
            )
            mstore(
                0x19c0,
                addmod(
                    mload(0xac0),
                    9268625363986062636089532824584791139728887410636484032390921470890938228625,
                    f_q
                )
            )
            mstore(
                0x19e0,
                mulmod(
                    mload(0x1740),
                    19032961837237948602743626455740240236231119053033140765040043513661803148152,
                    f_q
                )
            )
            mstore(
                0x1a00,
                addmod(
                    mload(0xac0),
                    2855281034601326619502779289517034852317245347382893578658160672914005347465,
                    f_q
                )
            )
            mstore(
                0x1a20,
                mulmod(
                    mload(0x1740),
                    915149353520972163646494413843788069594022902357002628455555785223409501882,
                    f_q
                )
            )
            mstore(
                0x1a40,
                addmod(
                    mload(0xac0),
                    20973093518318303058599911331413487018954341498059031715242648401352398993735,
                    f_q
                )
            )
            mstore(
                0x1a60,
                mulmod(
                    mload(0x1740),
                    3766081621734395783232337525162072736827576297943013392955872170138036189193,
                    f_q
                )
            )
            mstore(
                0x1a80,
                addmod(
                    mload(0xac0),
                    18122161250104879439014068220095202351720788102473020950742332016437772306424,
                    f_q
                )
            )
            mstore(
                0x1aa0,
                mulmod(
                    mload(0x1740),
                    4245441013247250116003069945606352967193023389718465410501109428393342802981,
                    f_q
                )
            )
            mstore(
                0x1ac0,
                addmod(
                    mload(0xac0),
                    17642801858592025106243335799650922121355341010697568933197094758182465692636,
                    f_q
                )
            )
            mstore(
                0x1ae0,
                mulmod(
                    mload(0x1740),
                    5854133144571823792863860130267644613802765696134002830362054821530146160770,
                    f_q
                )
            )
            mstore(
                0x1b00,
                addmod(
                    mload(0xac0),
                    16034109727267451429382545614989630474745598704282031513336149365045662334847,
                    f_q
                )
            )
            mstore(
                0x1b20,
                mulmod(
                    mload(0x1740),
                    5980488956150442207659150513163747165544364597008566989111579977672498964212,
                    f_q
                )
            )
            mstore(
                0x1b40,
                addmod(
                    mload(0xac0),
                    15907753915688833014587255232093527923003999803407467354586624208903309531405,
                    f_q
                )
            )
            mstore(
                0x1b60,
                mulmod(
                    mload(0x1740),
                    14557038802599140430182096396825290815503940951075961210638273254419942783582,
                    f_q
                )
            )
            mstore(
                0x1b80,
                addmod(
                    mload(0xac0),
                    7331204069240134792064309348431984273044423449340073133059930932155865712035,
                    f_q
                )
            )
            mstore(
                0x1ba0,
                mulmod(
                    mload(0x1740),
                    13553911191894110065493137367144919847521088405945523452288398666974237857208,
                    f_q
                )
            )
            mstore(
                0x1bc0,
                addmod(
                    mload(0xac0),
                    8334331679945165156753268378112355241027275994470510891409805519601570638409,
                    f_q
                )
            )
            mstore(
                0x1be0,
                mulmod(
                    mload(0x1740),
                    9697063347556872083384215826199993067635178715531258559890418744774301211662,
                    f_q
                )
            )
            mstore(
                0x1c00,
                addmod(
                    mload(0xac0),
                    12191179524282403138862189919057282020913185684884775783807785441801507283955,
                    f_q
                )
            )
            mstore(
                0x1c20,
                mulmod(
                    mload(0x1740),
                    10807735674816066981985242612061336605021639643453679977988966079770672437131,
                    f_q
                )
            )
            mstore(
                0x1c40,
                addmod(
                    mload(0xac0),
                    11080507197023208240261163133195938483526724756962354365709238106805136058486,
                    f_q
                )
            )
            mstore(
                0x1c60,
                mulmod(
                    mload(0x1740),
                    12459868075641381822485233712013080087763946065665469821362892189399541605692,
                    f_q
                )
            )
            mstore(
                0x1c80,
                addmod(
                    mload(0xac0),
                    9428374796197893399761172033244195000784418334750564522335311997176266889925,
                    f_q
                )
            )
            mstore(
                0x1ca0,
                mulmod(
                    mload(0x1740),
                    16038300751658239075779628684257016433412502747804121525056508685985277092575,
                    f_q
                )
            )
            mstore(
                0x1cc0,
                addmod(
                    mload(0xac0),
                    5849942120181036146466777061000258655135861652611912818641695500590531403042,
                    f_q
                )
            )
            mstore(
                0x1ce0,
                mulmod(
                    mload(0x1740),
                    6955697244493336113861667751840378876927906302623587437721024018233754910398,
                    f_q
                )
            )
            mstore(
                0x1d00,
                addmod(
                    mload(0xac0),
                    14932545627345939108384737993416896211620458097792446905977180168342053585219,
                    f_q
                )
            )
            mstore(
                0x1d20,
                mulmod(
                    mload(0x1740),
                    13498745591877810872211159461644682954739332524336278910448604883789771736885,
                    f_q
                )
            )
            mstore(
                0x1d40,
                addmod(
                    mload(0xac0),
                    8389497279961464350035246283612592133809031876079755433249599302786036758732,
                    f_q
                )
            )
            {
                let prod := mload(0x1780)

                prod := mulmod(mload(0x17c0), prod, f_q)
                mstore(0x1d60, prod)

                prod := mulmod(mload(0x1800), prod, f_q)
                mstore(0x1d80, prod)

                prod := mulmod(mload(0x1840), prod, f_q)
                mstore(0x1da0, prod)

                prod := mulmod(mload(0x1880), prod, f_q)
                mstore(0x1dc0, prod)

                prod := mulmod(mload(0x18c0), prod, f_q)
                mstore(0x1de0, prod)

                prod := mulmod(mload(0x1900), prod, f_q)
                mstore(0x1e00, prod)

                prod := mulmod(mload(0x1940), prod, f_q)
                mstore(0x1e20, prod)

                prod := mulmod(mload(0x1980), prod, f_q)
                mstore(0x1e40, prod)

                prod := mulmod(mload(0x19c0), prod, f_q)
                mstore(0x1e60, prod)

                prod := mulmod(mload(0x1a00), prod, f_q)
                mstore(0x1e80, prod)

                prod := mulmod(mload(0x1a40), prod, f_q)
                mstore(0x1ea0, prod)

                prod := mulmod(mload(0x1a80), prod, f_q)
                mstore(0x1ec0, prod)

                prod := mulmod(mload(0x1ac0), prod, f_q)
                mstore(0x1ee0, prod)

                prod := mulmod(mload(0x1b00), prod, f_q)
                mstore(0x1f00, prod)

                prod := mulmod(mload(0x1b40), prod, f_q)
                mstore(0x1f20, prod)

                prod := mulmod(mload(0x1b80), prod, f_q)
                mstore(0x1f40, prod)

                prod := mulmod(mload(0x1bc0), prod, f_q)
                mstore(0x1f60, prod)

                prod := mulmod(mload(0x1c00), prod, f_q)
                mstore(0x1f80, prod)

                prod := mulmod(mload(0x1c40), prod, f_q)
                mstore(0x1fa0, prod)

                prod := mulmod(mload(0x1c80), prod, f_q)
                mstore(0x1fc0, prod)

                prod := mulmod(mload(0x1cc0), prod, f_q)
                mstore(0x1fe0, prod)

                prod := mulmod(mload(0x1d00), prod, f_q)
                mstore(0x2000, prod)

                prod := mulmod(mload(0x1d40), prod, f_q)
                mstore(0x2020, prod)

                prod := mulmod(mload(0x1720), prod, f_q)
                mstore(0x2040, prod)
            }
            mstore(0x2080, 32)
            mstore(0x20a0, 32)
            mstore(0x20c0, 32)
            mstore(0x20e0, mload(0x2040))
            mstore(
                0x2100,
                21888242871839275222246405745257275088548364400416034343698204186575808495615
            )
            mstore(
                0x2120,
                21888242871839275222246405745257275088548364400416034343698204186575808495617
            )
            success := and(eq(staticcall(gas(), 0x5, 0x2080, 0xc0, 0x2060, 0x20), 1), success)
            {
                let inv := mload(0x2060)
                let v

                v := mload(0x1720)
                mstore(5920, mulmod(mload(0x2020), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1d40)
                mstore(7488, mulmod(mload(0x2000), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1d00)
                mstore(7424, mulmod(mload(0x1fe0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1cc0)
                mstore(7360, mulmod(mload(0x1fc0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1c80)
                mstore(7296, mulmod(mload(0x1fa0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1c40)
                mstore(7232, mulmod(mload(0x1f80), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1c00)
                mstore(7168, mulmod(mload(0x1f60), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1bc0)
                mstore(7104, mulmod(mload(0x1f40), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1b80)
                mstore(7040, mulmod(mload(0x1f20), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1b40)
                mstore(6976, mulmod(mload(0x1f00), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1b00)
                mstore(6912, mulmod(mload(0x1ee0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1ac0)
                mstore(6848, mulmod(mload(0x1ec0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1a80)
                mstore(6784, mulmod(mload(0x1ea0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1a40)
                mstore(6720, mulmod(mload(0x1e80), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1a00)
                mstore(6656, mulmod(mload(0x1e60), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x19c0)
                mstore(6592, mulmod(mload(0x1e40), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1980)
                mstore(6528, mulmod(mload(0x1e20), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1940)
                mstore(6464, mulmod(mload(0x1e00), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1900)
                mstore(6400, mulmod(mload(0x1de0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x18c0)
                mstore(6336, mulmod(mload(0x1dc0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1880)
                mstore(6272, mulmod(mload(0x1da0), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1840)
                mstore(6208, mulmod(mload(0x1d80), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x1800)
                mstore(6144, mulmod(mload(0x1d60), inv, f_q))
                inv := mulmod(v, inv, f_q)

                v := mload(0x17c0)
                mstore(6080, mulmod(mload(0x1780), inv, f_q))
                inv := mulmod(v, inv, f_q)
                mstore(0x1780, inv)
            }
            mstore(0x2140, mulmod(mload(0x1760), mload(0x1780), f_q))
            mstore(0x2160, mulmod(mload(0x17a0), mload(0x17c0), f_q))
            mstore(0x2180, mulmod(mload(0x17e0), mload(0x1800), f_q))
            mstore(0x21a0, mulmod(mload(0x1820), mload(0x1840), f_q))
            mstore(0x21c0, mulmod(mload(0x1860), mload(0x1880), f_q))
            mstore(0x21e0, mulmod(mload(0x18a0), mload(0x18c0), f_q))
            mstore(0x2200, mulmod(mload(0x18e0), mload(0x1900), f_q))
            mstore(0x2220, mulmod(mload(0x1920), mload(0x1940), f_q))
            mstore(0x2240, mulmod(mload(0x1960), mload(0x1980), f_q))
            mstore(0x2260, mulmod(mload(0x19a0), mload(0x19c0), f_q))
            mstore(0x2280, mulmod(mload(0x19e0), mload(0x1a00), f_q))
            mstore(0x22a0, mulmod(mload(0x1a20), mload(0x1a40), f_q))
            mstore(0x22c0, mulmod(mload(0x1a60), mload(0x1a80), f_q))
            mstore(0x22e0, mulmod(mload(0x1aa0), mload(0x1ac0), f_q))
            mstore(0x2300, mulmod(mload(0x1ae0), mload(0x1b00), f_q))
            mstore(0x2320, mulmod(mload(0x1b20), mload(0x1b40), f_q))
            mstore(0x2340, mulmod(mload(0x1b60), mload(0x1b80), f_q))
            mstore(0x2360, mulmod(mload(0x1ba0), mload(0x1bc0), f_q))
            mstore(0x2380, mulmod(mload(0x1be0), mload(0x1c00), f_q))
            mstore(0x23a0, mulmod(mload(0x1c20), mload(0x1c40), f_q))
            mstore(0x23c0, mulmod(mload(0x1c60), mload(0x1c80), f_q))
            mstore(0x23e0, mulmod(mload(0x1ca0), mload(0x1cc0), f_q))
            mstore(0x2400, mulmod(mload(0x1ce0), mload(0x1d00), f_q))
            mstore(0x2420, mulmod(mload(0x1d20), mload(0x1d40), f_q))
            {
                let result := mulmod(mload(0x2200), mload(0x20), f_q)
                result := addmod(mulmod(mload(0x2220), mload(0x40), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2240), mload(0x60), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2260), mload(0x80), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2280), mload(0xa0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x22a0), mload(0xc0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x22c0), mload(0xe0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x22e0), mload(0x100), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2300), mload(0x120), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2320), mload(0x140), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2340), mload(0x160), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2360), mload(0x180), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2380), mload(0x1a0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x23a0), mload(0x1c0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x23c0), mload(0x1e0), f_q), result, f_q)
                result := addmod(mulmod(mload(0x23e0), mload(0x200), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2400), mload(0x220), f_q), result, f_q)
                result := addmod(mulmod(mload(0x2420), mload(0x240), f_q), result, f_q)
                mstore(9280, result)
            }
            mstore(0x2460, mulmod(mload(0xbc0), mload(0xb00), f_q))
            mstore(0x2480, mulmod(mload(0xbe0), mload(0xb20), f_q))
            mstore(0x24a0, addmod(mload(0x2460), mload(0x2480), f_q))
            mstore(0x24c0, mulmod(mload(0xc00), mload(0xb40), f_q))
            mstore(0x24e0, addmod(mload(0x24a0), mload(0x24c0), f_q))
            mstore(0x2500, mulmod(mload(0xc20), mload(0xb60), f_q))
            mstore(0x2520, addmod(mload(0x24e0), mload(0x2500), f_q))
            mstore(0x2540, mulmod(mload(0xc40), mload(0xb80), f_q))
            mstore(0x2560, addmod(mload(0x2520), mload(0x2540), f_q))
            mstore(0x2580, mulmod(mload(0xb20), mload(0xb00), f_q))
            mstore(0x25a0, mulmod(mload(0xc80), mload(0x2580), f_q))
            mstore(0x25c0, addmod(mload(0x2560), mload(0x25a0), f_q))
            mstore(0x25e0, mulmod(mload(0xb60), mload(0xb40), f_q))
            mstore(0x2600, mulmod(mload(0xca0), mload(0x25e0), f_q))
            mstore(0x2620, addmod(mload(0x25c0), mload(0x2600), f_q))
            mstore(0x2640, mulmod(mload(0xba0), mload(0xc60), f_q))
            mstore(0x2660, addmod(mload(0x2620), mload(0x2640), f_q))
            mstore(0x2680, addmod(mload(0x2660), mload(0xcc0), f_q))
            mstore(0x26a0, mulmod(mload(0x960), mload(0x2680), f_q))
            mstore(0x26c0, addmod(1, sub(f_q, mload(0xe60)), f_q))
            mstore(0x26e0, mulmod(mload(0x26c0), mload(0x2200), f_q))
            mstore(0x2700, addmod(mload(0x26a0), mload(0x26e0), f_q))
            mstore(0x2720, mulmod(mload(0x960), mload(0x2700), f_q))
            mstore(0x2740, mulmod(mload(0xec0), mload(0xec0), f_q))
            mstore(0x2760, addmod(mload(0x2740), sub(f_q, mload(0xec0)), f_q))
            mstore(0x2780, mulmod(mload(0x2760), mload(0x2140), f_q))
            mstore(0x27a0, addmod(mload(0x2720), mload(0x2780), f_q))
            mstore(0x27c0, mulmod(mload(0x960), mload(0x27a0), f_q))
            mstore(0x27e0, addmod(mload(0xec0), sub(f_q, mload(0xea0)), f_q))
            mstore(0x2800, mulmod(mload(0x27e0), mload(0x2200), f_q))
            mstore(0x2820, addmod(mload(0x27c0), mload(0x2800), f_q))
            mstore(0x2840, mulmod(mload(0x960), mload(0x2820), f_q))
            mstore(0x2860, addmod(1, sub(f_q, mload(0x2140)), f_q))
            mstore(0x2880, addmod(mload(0x2160), mload(0x2180), f_q))
            mstore(0x28a0, addmod(mload(0x2880), mload(0x21a0), f_q))
            mstore(0x28c0, addmod(mload(0x28a0), mload(0x21c0), f_q))
            mstore(0x28e0, addmod(mload(0x28c0), mload(0x21e0), f_q))
            mstore(0x2900, addmod(mload(0x2860), sub(f_q, mload(0x28e0)), f_q))
            mstore(0x2920, mulmod(mload(0xda0), mload(0x6a0), f_q))
            mstore(0x2940, addmod(mload(0xb00), mload(0x2920), f_q))
            mstore(0x2960, addmod(mload(0x2940), mload(0x700), f_q))
            mstore(0x2980, mulmod(mload(0xdc0), mload(0x6a0), f_q))
            mstore(0x29a0, addmod(mload(0xb20), mload(0x2980), f_q))
            mstore(0x29c0, addmod(mload(0x29a0), mload(0x700), f_q))
            mstore(0x29e0, mulmod(mload(0x29c0), mload(0x2960), f_q))
            mstore(0x2a00, mulmod(mload(0xde0), mload(0x6a0), f_q))
            mstore(0x2a20, addmod(mload(0xb40), mload(0x2a00), f_q))
            mstore(0x2a40, addmod(mload(0x2a20), mload(0x700), f_q))
            mstore(0x2a60, mulmod(mload(0x2a40), mload(0x29e0), f_q))
            mstore(0x2a80, mulmod(mload(0x2a60), mload(0xe80), f_q))
            mstore(0x2aa0, mulmod(1, mload(0x6a0), f_q))
            mstore(0x2ac0, mulmod(mload(0xac0), mload(0x2aa0), f_q))
            mstore(0x2ae0, addmod(mload(0xb00), mload(0x2ac0), f_q))
            mstore(0x2b00, addmod(mload(0x2ae0), mload(0x700), f_q))
            mstore(
                0x2b20,
                mulmod(
                    4131629893567559867359510883348571134090853742863529169391034518566172092834,
                    mload(0x6a0),
                    f_q
                )
            )
            mstore(0x2b40, mulmod(mload(0xac0), mload(0x2b20), f_q))
            mstore(0x2b60, addmod(mload(0xb20), mload(0x2b40), f_q))
            mstore(0x2b80, addmod(mload(0x2b60), mload(0x700), f_q))
            mstore(0x2ba0, mulmod(mload(0x2b80), mload(0x2b00), f_q))
            mstore(
                0x2bc0,
                mulmod(
                    8910878055287538404433155982483128285667088683464058436815641868457422632747,
                    mload(0x6a0),
                    f_q
                )
            )
            mstore(0x2be0, mulmod(mload(0xac0), mload(0x2bc0), f_q))
            mstore(0x2c00, addmod(mload(0xb40), mload(0x2be0), f_q))
            mstore(0x2c20, addmod(mload(0x2c00), mload(0x700), f_q))
            mstore(0x2c40, mulmod(mload(0x2c20), mload(0x2ba0), f_q))
            mstore(0x2c60, mulmod(mload(0x2c40), mload(0xe60), f_q))
            mstore(0x2c80, addmod(mload(0x2a80), sub(f_q, mload(0x2c60)), f_q))
            mstore(0x2ca0, mulmod(mload(0x2c80), mload(0x2900), f_q))
            mstore(0x2cc0, addmod(mload(0x2840), mload(0x2ca0), f_q))
            mstore(0x2ce0, mulmod(mload(0x960), mload(0x2cc0), f_q))
            mstore(0x2d00, mulmod(mload(0xe00), mload(0x6a0), f_q))
            mstore(0x2d20, addmod(mload(0xb60), mload(0x2d00), f_q))
            mstore(0x2d40, addmod(mload(0x2d20), mload(0x700), f_q))
            mstore(0x2d60, mulmod(mload(0xe20), mload(0x6a0), f_q))
            mstore(0x2d80, addmod(mload(0xb80), mload(0x2d60), f_q))
            mstore(0x2da0, addmod(mload(0x2d80), mload(0x700), f_q))
            mstore(0x2dc0, mulmod(mload(0x2da0), mload(0x2d40), f_q))
            mstore(0x2de0, mulmod(mload(0xe40), mload(0x6a0), f_q))
            mstore(0x2e00, addmod(mload(0x2440), mload(0x2de0), f_q))
            mstore(0x2e20, addmod(mload(0x2e00), mload(0x700), f_q))
            mstore(0x2e40, mulmod(mload(0x2e20), mload(0x2dc0), f_q))
            mstore(0x2e60, mulmod(mload(0x2e40), mload(0xee0), f_q))
            mstore(
                0x2e80,
                mulmod(
                    11166246659983828508719468090013646171463329086121580628794302409516816350802,
                    mload(0x6a0),
                    f_q
                )
            )
            mstore(0x2ea0, mulmod(mload(0xac0), mload(0x2e80), f_q))
            mstore(0x2ec0, addmod(mload(0xb60), mload(0x2ea0), f_q))
            mstore(0x2ee0, addmod(mload(0x2ec0), mload(0x700), f_q))
            mstore(
                0x2f00,
                mulmod(
                    284840088355319032285349970403338060113257071685626700086398481893096618818,
                    mload(0x6a0),
                    f_q
                )
            )
            mstore(0x2f20, mulmod(mload(0xac0), mload(0x2f00), f_q))
            mstore(0x2f40, addmod(mload(0xb80), mload(0x2f20), f_q))
            mstore(0x2f60, addmod(mload(0x2f40), mload(0x700), f_q))
            mstore(0x2f80, mulmod(mload(0x2f60), mload(0x2ee0), f_q))
            mstore(
                0x2fa0,
                mulmod(
                    21134065618345176623193549882539580312263652408302468683943992798037078993309,
                    mload(0x6a0),
                    f_q
                )
            )
            mstore(0x2fc0, mulmod(mload(0xac0), mload(0x2fa0), f_q))
            mstore(0x2fe0, addmod(mload(0x2440), mload(0x2fc0), f_q))
            mstore(0x3000, addmod(mload(0x2fe0), mload(0x700), f_q))
            mstore(0x3020, mulmod(mload(0x3000), mload(0x2f80), f_q))
            mstore(0x3040, mulmod(mload(0x3020), mload(0xec0), f_q))
            mstore(0x3060, addmod(mload(0x2e60), sub(f_q, mload(0x3040)), f_q))
            mstore(0x3080, mulmod(mload(0x3060), mload(0x2900), f_q))
            mstore(0x30a0, addmod(mload(0x2ce0), mload(0x3080), f_q))
            mstore(0x30c0, mulmod(mload(0x960), mload(0x30a0), f_q))
            mstore(0x30e0, addmod(1, sub(f_q, mload(0xf00)), f_q))
            mstore(0x3100, mulmod(mload(0x30e0), mload(0x2200), f_q))
            mstore(0x3120, addmod(mload(0x30c0), mload(0x3100), f_q))
            mstore(0x3140, mulmod(mload(0x960), mload(0x3120), f_q))
            mstore(0x3160, mulmod(mload(0xf00), mload(0xf00), f_q))
            mstore(0x3180, addmod(mload(0x3160), sub(f_q, mload(0xf00)), f_q))
            mstore(0x31a0, mulmod(mload(0x3180), mload(0x2140), f_q))
            mstore(0x31c0, addmod(mload(0x3140), mload(0x31a0), f_q))
            mstore(0x31e0, mulmod(mload(0x960), mload(0x31c0), f_q))
            mstore(0x3200, addmod(mload(0xf40), mload(0x6a0), f_q))
            mstore(0x3220, mulmod(mload(0x3200), mload(0xf20), f_q))
            mstore(0x3240, addmod(mload(0xf80), mload(0x700), f_q))
            mstore(0x3260, mulmod(mload(0x3240), mload(0x3220), f_q))
            mstore(0x3280, mulmod(5, mload(0xd40), f_q))
            mstore(0x32a0, mulmod(mload(0x3c0), mload(0x3280), f_q))
            mstore(0x32c0, mulmod(mload(0xb00), mload(0xd40), f_q))
            mstore(0x32e0, addmod(mload(0x32a0), mload(0x32c0), f_q))
            mstore(0x3300, addmod(mload(0x32e0), mload(0x6a0), f_q))
            mstore(0x3320, mulmod(mload(0x3300), mload(0xf00), f_q))
            mstore(0x3340, mulmod(mload(0x3c0), mload(0xce0), f_q))
            mstore(0x3360, addmod(mload(0x3340), mload(0xd00), f_q))
            mstore(0x3380, addmod(mload(0x3360), mload(0x700), f_q))
            mstore(0x33a0, mulmod(mload(0x3380), mload(0x3320), f_q))
            mstore(0x33c0, addmod(mload(0x3260), sub(f_q, mload(0x33a0)), f_q))
            mstore(0x33e0, mulmod(mload(0x33c0), mload(0x2900), f_q))
            mstore(0x3400, addmod(mload(0x31e0), mload(0x33e0), f_q))
            mstore(0x3420, mulmod(mload(0x960), mload(0x3400), f_q))
            mstore(0x3440, addmod(mload(0xf40), sub(f_q, mload(0xf80)), f_q))
            mstore(0x3460, mulmod(mload(0x3440), mload(0x2200), f_q))
            mstore(0x3480, addmod(mload(0x3420), mload(0x3460), f_q))
            mstore(0x34a0, mulmod(mload(0x960), mload(0x3480), f_q))
            mstore(0x34c0, mulmod(mload(0x3440), mload(0x2900), f_q))
            mstore(0x34e0, addmod(mload(0xf40), sub(f_q, mload(0xf60)), f_q))
            mstore(0x3500, mulmod(mload(0x34e0), mload(0x34c0), f_q))
            mstore(0x3520, addmod(mload(0x34a0), mload(0x3500), f_q))
            mstore(0x3540, mulmod(mload(0x960), mload(0x3520), f_q))
            mstore(0x3560, addmod(1, sub(f_q, mload(0xfa0)), f_q))
            mstore(0x3580, mulmod(mload(0x3560), mload(0x2200), f_q))
            mstore(0x35a0, addmod(mload(0x3540), mload(0x3580), f_q))
            mstore(0x35c0, mulmod(mload(0x960), mload(0x35a0), f_q))
            mstore(0x35e0, mulmod(mload(0xfa0), mload(0xfa0), f_q))
            mstore(0x3600, addmod(mload(0x35e0), sub(f_q, mload(0xfa0)), f_q))
            mstore(0x3620, mulmod(mload(0x3600), mload(0x2140), f_q))
            mstore(0x3640, addmod(mload(0x35c0), mload(0x3620), f_q))
            mstore(0x3660, mulmod(mload(0x960), mload(0x3640), f_q))
            mstore(0x3680, addmod(mload(0xfe0), mload(0x6a0), f_q))
            mstore(0x36a0, mulmod(mload(0x3680), mload(0xfc0), f_q))
            mstore(0x36c0, addmod(mload(0x1020), mload(0x700), f_q))
            mstore(0x36e0, mulmod(mload(0x36c0), mload(0x36a0), f_q))
            mstore(0x3700, mulmod(mload(0xb20), mload(0xd40), f_q))
            mstore(0x3720, addmod(mload(0x32a0), mload(0x3700), f_q))
            mstore(0x3740, addmod(mload(0x3720), mload(0x6a0), f_q))
            mstore(0x3760, mulmod(mload(0x3740), mload(0xfa0), f_q))
            mstore(0x3780, mulmod(mload(0x3380), mload(0x3760), f_q))
            mstore(0x37a0, addmod(mload(0x36e0), sub(f_q, mload(0x3780)), f_q))
            mstore(0x37c0, mulmod(mload(0x37a0), mload(0x2900), f_q))
            mstore(0x37e0, addmod(mload(0x3660), mload(0x37c0), f_q))
            mstore(0x3800, mulmod(mload(0x960), mload(0x37e0), f_q))
            mstore(0x3820, addmod(mload(0xfe0), sub(f_q, mload(0x1020)), f_q))
            mstore(0x3840, mulmod(mload(0x3820), mload(0x2200), f_q))
            mstore(0x3860, addmod(mload(0x3800), mload(0x3840), f_q))
            mstore(0x3880, mulmod(mload(0x960), mload(0x3860), f_q))
            mstore(0x38a0, mulmod(mload(0x3820), mload(0x2900), f_q))
            mstore(0x38c0, addmod(mload(0xfe0), sub(f_q, mload(0x1000)), f_q))
            mstore(0x38e0, mulmod(mload(0x38c0), mload(0x38a0), f_q))
            mstore(0x3900, addmod(mload(0x3880), mload(0x38e0), f_q))
            mstore(0x3920, mulmod(mload(0x960), mload(0x3900), f_q))
            mstore(0x3940, addmod(1, sub(f_q, mload(0x1040)), f_q))
            mstore(0x3960, mulmod(mload(0x3940), mload(0x2200), f_q))
            mstore(0x3980, addmod(mload(0x3920), mload(0x3960), f_q))
            mstore(0x39a0, mulmod(mload(0x960), mload(0x3980), f_q))
            mstore(0x39c0, mulmod(mload(0x1040), mload(0x1040), f_q))
            mstore(0x39e0, addmod(mload(0x39c0), sub(f_q, mload(0x1040)), f_q))
            mstore(0x3a00, mulmod(mload(0x39e0), mload(0x2140), f_q))
            mstore(0x3a20, addmod(mload(0x39a0), mload(0x3a00), f_q))
            mstore(0x3a40, mulmod(mload(0x960), mload(0x3a20), f_q))
            mstore(0x3a60, addmod(mload(0x1080), mload(0x6a0), f_q))
            mstore(0x3a80, mulmod(mload(0x3a60), mload(0x1060), f_q))
            mstore(0x3aa0, addmod(mload(0x10c0), mload(0x700), f_q))
            mstore(0x3ac0, mulmod(mload(0x3aa0), mload(0x3a80), f_q))
            mstore(0x3ae0, mulmod(mload(0xb40), mload(0xd40), f_q))
            mstore(0x3b00, addmod(mload(0x32a0), mload(0x3ae0), f_q))
            mstore(0x3b20, addmod(mload(0x3b00), mload(0x6a0), f_q))
            mstore(0x3b40, mulmod(mload(0x3b20), mload(0x1040), f_q))
            mstore(0x3b60, mulmod(mload(0x3380), mload(0x3b40), f_q))
            mstore(0x3b80, addmod(mload(0x3ac0), sub(f_q, mload(0x3b60)), f_q))
            mstore(0x3ba0, mulmod(mload(0x3b80), mload(0x2900), f_q))
            mstore(0x3bc0, addmod(mload(0x3a40), mload(0x3ba0), f_q))
            mstore(0x3be0, mulmod(mload(0x960), mload(0x3bc0), f_q))
            mstore(0x3c00, addmod(mload(0x1080), sub(f_q, mload(0x10c0)), f_q))
            mstore(0x3c20, mulmod(mload(0x3c00), mload(0x2200), f_q))
            mstore(0x3c40, addmod(mload(0x3be0), mload(0x3c20), f_q))
            mstore(0x3c60, mulmod(mload(0x960), mload(0x3c40), f_q))
            mstore(0x3c80, mulmod(mload(0x3c00), mload(0x2900), f_q))
            mstore(0x3ca0, addmod(mload(0x1080), sub(f_q, mload(0x10a0)), f_q))
            mstore(0x3cc0, mulmod(mload(0x3ca0), mload(0x3c80), f_q))
            mstore(0x3ce0, addmod(mload(0x3c60), mload(0x3cc0), f_q))
            mstore(0x3d00, mulmod(mload(0x960), mload(0x3ce0), f_q))
            mstore(0x3d20, addmod(1, sub(f_q, mload(0x10e0)), f_q))
            mstore(0x3d40, mulmod(mload(0x3d20), mload(0x2200), f_q))
            mstore(0x3d60, addmod(mload(0x3d00), mload(0x3d40), f_q))
            mstore(0x3d80, mulmod(mload(0x960), mload(0x3d60), f_q))
            mstore(0x3da0, mulmod(mload(0x10e0), mload(0x10e0), f_q))
            mstore(0x3dc0, addmod(mload(0x3da0), sub(f_q, mload(0x10e0)), f_q))
            mstore(0x3de0, mulmod(mload(0x3dc0), mload(0x2140), f_q))
            mstore(0x3e00, addmod(mload(0x3d80), mload(0x3de0), f_q))
            mstore(0x3e20, mulmod(mload(0x960), mload(0x3e00), f_q))
            mstore(0x3e40, addmod(mload(0x1120), mload(0x6a0), f_q))
            mstore(0x3e60, mulmod(mload(0x3e40), mload(0x1100), f_q))
            mstore(0x3e80, addmod(mload(0x1160), mload(0x700), f_q))
            mstore(0x3ea0, mulmod(mload(0x3e80), mload(0x3e60), f_q))
            mstore(0x3ec0, mulmod(mload(0xb60), mload(0xd40), f_q))
            mstore(0x3ee0, addmod(mload(0x32a0), mload(0x3ec0), f_q))
            mstore(0x3f00, addmod(mload(0x3ee0), mload(0x6a0), f_q))
            mstore(0x3f20, mulmod(mload(0x3f00), mload(0x10e0), f_q))
            mstore(0x3f40, mulmod(mload(0x3380), mload(0x3f20), f_q))
            mstore(0x3f60, addmod(mload(0x3ea0), sub(f_q, mload(0x3f40)), f_q))
            mstore(0x3f80, mulmod(mload(0x3f60), mload(0x2900), f_q))
            mstore(0x3fa0, addmod(mload(0x3e20), mload(0x3f80), f_q))
            mstore(0x3fc0, mulmod(mload(0x960), mload(0x3fa0), f_q))
            mstore(0x3fe0, addmod(mload(0x1120), sub(f_q, mload(0x1160)), f_q))
            mstore(0x4000, mulmod(mload(0x3fe0), mload(0x2200), f_q))
            mstore(0x4020, addmod(mload(0x3fc0), mload(0x4000), f_q))
            mstore(0x4040, mulmod(mload(0x960), mload(0x4020), f_q))
            mstore(0x4060, mulmod(mload(0x3fe0), mload(0x2900), f_q))
            mstore(0x4080, addmod(mload(0x1120), sub(f_q, mload(0x1140)), f_q))
            mstore(0x40a0, mulmod(mload(0x4080), mload(0x4060), f_q))
            mstore(0x40c0, addmod(mload(0x4040), mload(0x40a0), f_q))
            mstore(0x40e0, mulmod(mload(0x960), mload(0x40c0), f_q))
            mstore(0x4100, addmod(1, sub(f_q, mload(0x1180)), f_q))
            mstore(0x4120, mulmod(mload(0x4100), mload(0x2200), f_q))
            mstore(0x4140, addmod(mload(0x40e0), mload(0x4120), f_q))
            mstore(0x4160, mulmod(mload(0x960), mload(0x4140), f_q))
            mstore(0x4180, mulmod(mload(0x1180), mload(0x1180), f_q))
            mstore(0x41a0, addmod(mload(0x4180), sub(f_q, mload(0x1180)), f_q))
            mstore(0x41c0, mulmod(mload(0x41a0), mload(0x2140), f_q))
            mstore(0x41e0, addmod(mload(0x4160), mload(0x41c0), f_q))
            mstore(0x4200, mulmod(mload(0x960), mload(0x41e0), f_q))
            mstore(0x4220, addmod(mload(0x11c0), mload(0x6a0), f_q))
            mstore(0x4240, mulmod(mload(0x4220), mload(0x11a0), f_q))
            mstore(0x4260, addmod(mload(0x1200), mload(0x700), f_q))
            mstore(0x4280, mulmod(mload(0x4260), mload(0x4240), f_q))
            mstore(0x42a0, mulmod(mload(0x3c0), mload(0xd20), f_q))
            mstore(0x42c0, mulmod(mload(0xb00), mload(0xd60), f_q))
            mstore(0x42e0, addmod(mload(0x42a0), mload(0x42c0), f_q))
            mstore(0x4300, addmod(mload(0x42e0), mload(0x6a0), f_q))
            mstore(0x4320, mulmod(mload(0x4300), mload(0x1180), f_q))
            mstore(0x4340, mulmod(mload(0x3380), mload(0x4320), f_q))
            mstore(0x4360, addmod(mload(0x4280), sub(f_q, mload(0x4340)), f_q))
            mstore(0x4380, mulmod(mload(0x4360), mload(0x2900), f_q))
            mstore(0x43a0, addmod(mload(0x4200), mload(0x4380), f_q))
            mstore(0x43c0, mulmod(mload(0x960), mload(0x43a0), f_q))
            mstore(0x43e0, addmod(mload(0x11c0), sub(f_q, mload(0x1200)), f_q))
            mstore(0x4400, mulmod(mload(0x43e0), mload(0x2200), f_q))
            mstore(0x4420, addmod(mload(0x43c0), mload(0x4400), f_q))
            mstore(0x4440, mulmod(mload(0x960), mload(0x4420), f_q))
            mstore(0x4460, mulmod(mload(0x43e0), mload(0x2900), f_q))
            mstore(0x4480, addmod(mload(0x11c0), sub(f_q, mload(0x11e0)), f_q))
            mstore(0x44a0, mulmod(mload(0x4480), mload(0x4460), f_q))
            mstore(0x44c0, addmod(mload(0x4440), mload(0x44a0), f_q))
            mstore(0x44e0, mulmod(mload(0x1700), mload(0x1700), f_q))
            mstore(0x4500, mulmod(mload(0x44e0), mload(0x1700), f_q))
            mstore(0x4520, mulmod(mload(0x4500), mload(0x1700), f_q))
            mstore(0x4540, mulmod(1, mload(0x1700), f_q))
            mstore(0x4560, mulmod(1, mload(0x44e0), f_q))
            mstore(0x4580, mulmod(1, mload(0x4500), f_q))
            mstore(0x45a0, mulmod(mload(0x44c0), mload(0x1720), f_q))
            mstore(0x45c0, mulmod(mload(0x13a0), mload(0x13a0), f_q))
            mstore(0x45e0, mulmod(mload(0x45c0), mload(0x13a0), f_q))
            mstore(0x4600, mulmod(mload(0x45e0), mload(0x13a0), f_q))
            mstore(0x4620, mulmod(mload(0x1240), mload(0x1240), f_q))
            mstore(0x4640, mulmod(mload(0x4620), mload(0x1240), f_q))
            mstore(0x4660, mulmod(mload(0x4640), mload(0x1240), f_q))
            mstore(0x4680, mulmod(mload(0x4660), mload(0x1240), f_q))
            mstore(0x46a0, mulmod(mload(0x4680), mload(0x1240), f_q))
            mstore(0x46c0, mulmod(mload(0x46a0), mload(0x1240), f_q))
            mstore(0x46e0, mulmod(mload(0x46c0), mload(0x1240), f_q))
            mstore(0x4700, mulmod(mload(0x46e0), mload(0x1240), f_q))
            mstore(0x4720, mulmod(mload(0x4700), mload(0x1240), f_q))
            mstore(0x4740, mulmod(mload(0x4720), mload(0x1240), f_q))
            mstore(0x4760, mulmod(mload(0x4740), mload(0x1240), f_q))
            mstore(0x4780, mulmod(mload(0x4760), mload(0x1240), f_q))
            mstore(0x47a0, mulmod(mload(0x4780), mload(0x1240), f_q))
            mstore(0x47c0, mulmod(mload(0x47a0), mload(0x1240), f_q))
            mstore(0x47e0, mulmod(mload(0x47c0), mload(0x1240), f_q))
            mstore(0x4800, mulmod(mload(0x47e0), mload(0x1240), f_q))
            mstore(0x4820, mulmod(mload(0x4800), mload(0x1240), f_q))
            mstore(0x4840, mulmod(mload(0x4820), mload(0x1240), f_q))
            mstore(0x4860, mulmod(mload(0x4840), mload(0x1240), f_q))
            mstore(0x4880, mulmod(mload(0x4860), mload(0x1240), f_q))
            mstore(0x48a0, mulmod(mload(0x4880), mload(0x1240), f_q))
            mstore(0x48c0, mulmod(mload(0x48a0), mload(0x1240), f_q))
            mstore(0x48e0, mulmod(mload(0x48c0), mload(0x1240), f_q))
            mstore(0x4900, mulmod(mload(0x48e0), mload(0x1240), f_q))
            mstore(0x4920, mulmod(mload(0x4900), mload(0x1240), f_q))
            mstore(0x4940, mulmod(mload(0x4920), mload(0x1240), f_q))
            mstore(0x4960, mulmod(mload(0x4940), mload(0x1240), f_q))
            mstore(0x4980, mulmod(mload(0x4960), mload(0x1240), f_q))
            mstore(0x49a0, mulmod(mload(0x4980), mload(0x1240), f_q))
            mstore(0x49c0, mulmod(mload(0x49a0), mload(0x1240), f_q))
            mstore(0x49e0, mulmod(mload(0x49c0), mload(0x1240), f_q))
            mstore(0x4a00, mulmod(mload(0x49e0), mload(0x1240), f_q))
            mstore(0x4a20, mulmod(mload(0x4a00), mload(0x1240), f_q))
            mstore(0x4a40, mulmod(mload(0x4a20), mload(0x1240), f_q))
            mstore(0x4a60, mulmod(mload(0x4a40), mload(0x1240), f_q))
            mstore(0x4a80, mulmod(mload(0x4a60), mload(0x1240), f_q))
            mstore(0x4aa0, mulmod(mload(0x4a80), mload(0x1240), f_q))
            mstore(0x4ac0, mulmod(mload(0x4aa0), mload(0x1240), f_q))
            mstore(0x4ae0, mulmod(mload(0x4ac0), mload(0x1240), f_q))
            mstore(0x4b00, mulmod(mload(0x4ae0), mload(0x1240), f_q))
            mstore(0x4b20, mulmod(mload(0x4b00), mload(0x1240), f_q))
            mstore(0x4b40, mulmod(mload(0x4b20), mload(0x1240), f_q))
            mstore(0x4b60, mulmod(mload(0x4b40), mload(0x1240), f_q))
            mstore(0x4b80, mulmod(sub(f_q, mload(0xb00)), 1, f_q))
            mstore(0x4ba0, mulmod(sub(f_q, mload(0xb20)), mload(0x1240), f_q))
            mstore(0x4bc0, mulmod(1, mload(0x1240), f_q))
            mstore(0x4be0, addmod(mload(0x4b80), mload(0x4ba0), f_q))
            mstore(0x4c00, mulmod(sub(f_q, mload(0xb40)), mload(0x4620), f_q))
            mstore(0x4c20, mulmod(1, mload(0x4620), f_q))
            mstore(0x4c40, addmod(mload(0x4be0), mload(0x4c00), f_q))
            mstore(0x4c60, mulmod(sub(f_q, mload(0xb60)), mload(0x4640), f_q))
            mstore(0x4c80, mulmod(1, mload(0x4640), f_q))
            mstore(0x4ca0, addmod(mload(0x4c40), mload(0x4c60), f_q))
            mstore(0x4cc0, mulmod(sub(f_q, mload(0xb80)), mload(0x4660), f_q))
            mstore(0x4ce0, mulmod(1, mload(0x4660), f_q))
            mstore(0x4d00, addmod(mload(0x4ca0), mload(0x4cc0), f_q))
            mstore(0x4d20, mulmod(sub(f_q, mload(0xe60)), mload(0x4680), f_q))
            mstore(0x4d40, mulmod(1, mload(0x4680), f_q))
            mstore(0x4d60, addmod(mload(0x4d00), mload(0x4d20), f_q))
            mstore(0x4d80, mulmod(sub(f_q, mload(0xec0)), mload(0x46a0), f_q))
            mstore(0x4da0, mulmod(1, mload(0x46a0), f_q))
            mstore(0x4dc0, addmod(mload(0x4d60), mload(0x4d80), f_q))
            mstore(0x4de0, mulmod(sub(f_q, mload(0xf00)), mload(0x46c0), f_q))
            mstore(0x4e00, mulmod(1, mload(0x46c0), f_q))
            mstore(0x4e20, addmod(mload(0x4dc0), mload(0x4de0), f_q))
            mstore(0x4e40, mulmod(sub(f_q, mload(0xf40)), mload(0x46e0), f_q))
            mstore(0x4e60, mulmod(1, mload(0x46e0), f_q))
            mstore(0x4e80, addmod(mload(0x4e20), mload(0x4e40), f_q))
            mstore(0x4ea0, mulmod(sub(f_q, mload(0xf80)), mload(0x4700), f_q))
            mstore(0x4ec0, mulmod(1, mload(0x4700), f_q))
            mstore(0x4ee0, addmod(mload(0x4e80), mload(0x4ea0), f_q))
            mstore(0x4f00, mulmod(sub(f_q, mload(0xfa0)), mload(0x4720), f_q))
            mstore(0x4f20, mulmod(1, mload(0x4720), f_q))
            mstore(0x4f40, addmod(mload(0x4ee0), mload(0x4f00), f_q))
            mstore(0x4f60, mulmod(sub(f_q, mload(0xfe0)), mload(0x4740), f_q))
            mstore(0x4f80, mulmod(1, mload(0x4740), f_q))
            mstore(0x4fa0, addmod(mload(0x4f40), mload(0x4f60), f_q))
            mstore(0x4fc0, mulmod(sub(f_q, mload(0x1020)), mload(0x4760), f_q))
            mstore(0x4fe0, mulmod(1, mload(0x4760), f_q))
            mstore(0x5000, addmod(mload(0x4fa0), mload(0x4fc0), f_q))
            mstore(0x5020, mulmod(sub(f_q, mload(0x1040)), mload(0x4780), f_q))
            mstore(0x5040, mulmod(1, mload(0x4780), f_q))
            mstore(0x5060, addmod(mload(0x5000), mload(0x5020), f_q))
            mstore(0x5080, mulmod(sub(f_q, mload(0x1080)), mload(0x47a0), f_q))
            mstore(0x50a0, mulmod(1, mload(0x47a0), f_q))
            mstore(0x50c0, addmod(mload(0x5060), mload(0x5080), f_q))
            mstore(0x50e0, mulmod(sub(f_q, mload(0x10c0)), mload(0x47c0), f_q))
            mstore(0x5100, mulmod(1, mload(0x47c0), f_q))
            mstore(0x5120, addmod(mload(0x50c0), mload(0x50e0), f_q))
            mstore(0x5140, mulmod(sub(f_q, mload(0x10e0)), mload(0x47e0), f_q))
            mstore(0x5160, mulmod(1, mload(0x47e0), f_q))
            mstore(0x5180, addmod(mload(0x5120), mload(0x5140), f_q))
            mstore(0x51a0, mulmod(sub(f_q, mload(0x1120)), mload(0x4800), f_q))
            mstore(0x51c0, mulmod(1, mload(0x4800), f_q))
            mstore(0x51e0, addmod(mload(0x5180), mload(0x51a0), f_q))
            mstore(0x5200, mulmod(sub(f_q, mload(0x1160)), mload(0x4820), f_q))
            mstore(0x5220, mulmod(1, mload(0x4820), f_q))
            mstore(0x5240, addmod(mload(0x51e0), mload(0x5200), f_q))
            mstore(0x5260, mulmod(sub(f_q, mload(0x1180)), mload(0x4840), f_q))
            mstore(0x5280, mulmod(1, mload(0x4840), f_q))
            mstore(0x52a0, addmod(mload(0x5240), mload(0x5260), f_q))
            mstore(0x52c0, mulmod(sub(f_q, mload(0x11c0)), mload(0x4860), f_q))
            mstore(0x52e0, mulmod(1, mload(0x4860), f_q))
            mstore(0x5300, addmod(mload(0x52a0), mload(0x52c0), f_q))
            mstore(0x5320, mulmod(sub(f_q, mload(0x1200)), mload(0x4880), f_q))
            mstore(0x5340, mulmod(1, mload(0x4880), f_q))
            mstore(0x5360, addmod(mload(0x5300), mload(0x5320), f_q))
            mstore(0x5380, mulmod(sub(f_q, mload(0xbc0)), mload(0x48a0), f_q))
            mstore(0x53a0, mulmod(1, mload(0x48a0), f_q))
            mstore(0x53c0, addmod(mload(0x5360), mload(0x5380), f_q))
            mstore(0x53e0, mulmod(sub(f_q, mload(0xbe0)), mload(0x48c0), f_q))
            mstore(0x5400, mulmod(1, mload(0x48c0), f_q))
            mstore(0x5420, addmod(mload(0x53c0), mload(0x53e0), f_q))
            mstore(0x5440, mulmod(sub(f_q, mload(0xc00)), mload(0x48e0), f_q))
            mstore(0x5460, mulmod(1, mload(0x48e0), f_q))
            mstore(0x5480, addmod(mload(0x5420), mload(0x5440), f_q))
            mstore(0x54a0, mulmod(sub(f_q, mload(0xc20)), mload(0x4900), f_q))
            mstore(0x54c0, mulmod(1, mload(0x4900), f_q))
            mstore(0x54e0, addmod(mload(0x5480), mload(0x54a0), f_q))
            mstore(0x5500, mulmod(sub(f_q, mload(0xc40)), mload(0x4920), f_q))
            mstore(0x5520, mulmod(1, mload(0x4920), f_q))
            mstore(0x5540, addmod(mload(0x54e0), mload(0x5500), f_q))
            mstore(0x5560, mulmod(sub(f_q, mload(0xc60)), mload(0x4940), f_q))
            mstore(0x5580, mulmod(1, mload(0x4940), f_q))
            mstore(0x55a0, addmod(mload(0x5540), mload(0x5560), f_q))
            mstore(0x55c0, mulmod(sub(f_q, mload(0xc80)), mload(0x4960), f_q))
            mstore(0x55e0, mulmod(1, mload(0x4960), f_q))
            mstore(0x5600, addmod(mload(0x55a0), mload(0x55c0), f_q))
            mstore(0x5620, mulmod(sub(f_q, mload(0xca0)), mload(0x4980), f_q))
            mstore(0x5640, mulmod(1, mload(0x4980), f_q))
            mstore(0x5660, addmod(mload(0x5600), mload(0x5620), f_q))
            mstore(0x5680, mulmod(sub(f_q, mload(0xcc0)), mload(0x49a0), f_q))
            mstore(0x56a0, mulmod(1, mload(0x49a0), f_q))
            mstore(0x56c0, addmod(mload(0x5660), mload(0x5680), f_q))
            mstore(0x56e0, mulmod(sub(f_q, mload(0xce0)), mload(0x49c0), f_q))
            mstore(0x5700, mulmod(1, mload(0x49c0), f_q))
            mstore(0x5720, addmod(mload(0x56c0), mload(0x56e0), f_q))
            mstore(0x5740, mulmod(sub(f_q, mload(0xd00)), mload(0x49e0), f_q))
            mstore(0x5760, mulmod(1, mload(0x49e0), f_q))
            mstore(0x5780, addmod(mload(0x5720), mload(0x5740), f_q))
            mstore(0x57a0, mulmod(sub(f_q, mload(0xd20)), mload(0x4a00), f_q))
            mstore(0x57c0, mulmod(1, mload(0x4a00), f_q))
            mstore(0x57e0, addmod(mload(0x5780), mload(0x57a0), f_q))
            mstore(0x5800, mulmod(sub(f_q, mload(0xd40)), mload(0x4a20), f_q))
            mstore(0x5820, mulmod(1, mload(0x4a20), f_q))
            mstore(0x5840, addmod(mload(0x57e0), mload(0x5800), f_q))
            mstore(0x5860, mulmod(sub(f_q, mload(0xd60)), mload(0x4a40), f_q))
            mstore(0x5880, mulmod(1, mload(0x4a40), f_q))
            mstore(0x58a0, addmod(mload(0x5840), mload(0x5860), f_q))
            mstore(0x58c0, mulmod(sub(f_q, mload(0xda0)), mload(0x4a60), f_q))
            mstore(0x58e0, mulmod(1, mload(0x4a60), f_q))
            mstore(0x5900, addmod(mload(0x58a0), mload(0x58c0), f_q))
            mstore(0x5920, mulmod(sub(f_q, mload(0xdc0)), mload(0x4a80), f_q))
            mstore(0x5940, mulmod(1, mload(0x4a80), f_q))
            mstore(0x5960, addmod(mload(0x5900), mload(0x5920), f_q))
            mstore(0x5980, mulmod(sub(f_q, mload(0xde0)), mload(0x4aa0), f_q))
            mstore(0x59a0, mulmod(1, mload(0x4aa0), f_q))
            mstore(0x59c0, addmod(mload(0x5960), mload(0x5980), f_q))
            mstore(0x59e0, mulmod(sub(f_q, mload(0xe00)), mload(0x4ac0), f_q))
            mstore(0x5a00, mulmod(1, mload(0x4ac0), f_q))
            mstore(0x5a20, addmod(mload(0x59c0), mload(0x59e0), f_q))
            mstore(0x5a40, mulmod(sub(f_q, mload(0xe20)), mload(0x4ae0), f_q))
            mstore(0x5a60, mulmod(1, mload(0x4ae0), f_q))
            mstore(0x5a80, addmod(mload(0x5a20), mload(0x5a40), f_q))
            mstore(0x5aa0, mulmod(sub(f_q, mload(0xe40)), mload(0x4b00), f_q))
            mstore(0x5ac0, mulmod(1, mload(0x4b00), f_q))
            mstore(0x5ae0, addmod(mload(0x5a80), mload(0x5aa0), f_q))
            mstore(0x5b00, mulmod(sub(f_q, mload(0x45a0)), mload(0x4b20), f_q))
            mstore(0x5b20, mulmod(1, mload(0x4b20), f_q))
            mstore(0x5b40, mulmod(mload(0x4540), mload(0x4b20), f_q))
            mstore(0x5b60, mulmod(mload(0x4560), mload(0x4b20), f_q))
            mstore(0x5b80, mulmod(mload(0x4580), mload(0x4b20), f_q))
            mstore(0x5ba0, addmod(mload(0x5ae0), mload(0x5b00), f_q))
            mstore(0x5bc0, mulmod(sub(f_q, mload(0xd80)), mload(0x4b40), f_q))
            mstore(0x5be0, mulmod(1, mload(0x4b40), f_q))
            mstore(0x5c00, addmod(mload(0x5ba0), mload(0x5bc0), f_q))
            mstore(0x5c20, mulmod(mload(0x5c00), 1, f_q))
            mstore(0x5c40, mulmod(mload(0x4bc0), 1, f_q))
            mstore(0x5c60, mulmod(mload(0x4c20), 1, f_q))
            mstore(0x5c80, mulmod(mload(0x4c80), 1, f_q))
            mstore(0x5ca0, mulmod(mload(0x4ce0), 1, f_q))
            mstore(0x5cc0, mulmod(mload(0x4d40), 1, f_q))
            mstore(0x5ce0, mulmod(mload(0x4da0), 1, f_q))
            mstore(0x5d00, mulmod(mload(0x4e00), 1, f_q))
            mstore(0x5d20, mulmod(mload(0x4e60), 1, f_q))
            mstore(0x5d40, mulmod(mload(0x4ec0), 1, f_q))
            mstore(0x5d60, mulmod(mload(0x4f20), 1, f_q))
            mstore(0x5d80, mulmod(mload(0x4f80), 1, f_q))
            mstore(0x5da0, mulmod(mload(0x4fe0), 1, f_q))
            mstore(0x5dc0, mulmod(mload(0x5040), 1, f_q))
            mstore(0x5de0, mulmod(mload(0x50a0), 1, f_q))
            mstore(0x5e00, mulmod(mload(0x5100), 1, f_q))
            mstore(0x5e20, mulmod(mload(0x5160), 1, f_q))
            mstore(0x5e40, mulmod(mload(0x51c0), 1, f_q))
            mstore(0x5e60, mulmod(mload(0x5220), 1, f_q))
            mstore(0x5e80, mulmod(mload(0x5280), 1, f_q))
            mstore(0x5ea0, mulmod(mload(0x52e0), 1, f_q))
            mstore(0x5ec0, mulmod(mload(0x5340), 1, f_q))
            mstore(0x5ee0, mulmod(mload(0x53a0), 1, f_q))
            mstore(0x5f00, mulmod(mload(0x5400), 1, f_q))
            mstore(0x5f20, mulmod(mload(0x5460), 1, f_q))
            mstore(0x5f40, mulmod(mload(0x54c0), 1, f_q))
            mstore(0x5f60, mulmod(mload(0x5520), 1, f_q))
            mstore(0x5f80, mulmod(mload(0x5580), 1, f_q))
            mstore(0x5fa0, mulmod(mload(0x55e0), 1, f_q))
            mstore(0x5fc0, mulmod(mload(0x5640), 1, f_q))
            mstore(0x5fe0, mulmod(mload(0x56a0), 1, f_q))
            mstore(0x6000, mulmod(mload(0x5700), 1, f_q))
            mstore(0x6020, mulmod(mload(0x5760), 1, f_q))
            mstore(0x6040, mulmod(mload(0x57c0), 1, f_q))
            mstore(0x6060, mulmod(mload(0x5820), 1, f_q))
            mstore(0x6080, mulmod(mload(0x5880), 1, f_q))
            mstore(0x60a0, mulmod(mload(0x58e0), 1, f_q))
            mstore(0x60c0, mulmod(mload(0x5940), 1, f_q))
            mstore(0x60e0, mulmod(mload(0x59a0), 1, f_q))
            mstore(0x6100, mulmod(mload(0x5a00), 1, f_q))
            mstore(0x6120, mulmod(mload(0x5a60), 1, f_q))
            mstore(0x6140, mulmod(mload(0x5ac0), 1, f_q))
            mstore(0x6160, mulmod(mload(0x5b20), 1, f_q))
            mstore(0x6180, mulmod(mload(0x5b40), 1, f_q))
            mstore(0x61a0, mulmod(mload(0x5b60), 1, f_q))
            mstore(0x61c0, mulmod(mload(0x5b80), 1, f_q))
            mstore(0x61e0, mulmod(mload(0x5be0), 1, f_q))
            mstore(0x6200, mulmod(sub(f_q, mload(0xba0)), 1, f_q))
            mstore(0x6220, mulmod(sub(f_q, mload(0xe80)), mload(0x1240), f_q))
            mstore(0x6240, addmod(mload(0x6200), mload(0x6220), f_q))
            mstore(0x6260, mulmod(sub(f_q, mload(0xee0)), mload(0x4620), f_q))
            mstore(0x6280, addmod(mload(0x6240), mload(0x6260), f_q))
            mstore(0x62a0, mulmod(sub(f_q, mload(0xf20)), mload(0x4640), f_q))
            mstore(0x62c0, addmod(mload(0x6280), mload(0x62a0), f_q))
            mstore(0x62e0, mulmod(sub(f_q, mload(0xfc0)), mload(0x4660), f_q))
            mstore(0x6300, addmod(mload(0x62c0), mload(0x62e0), f_q))
            mstore(0x6320, mulmod(sub(f_q, mload(0x1060)), mload(0x4680), f_q))
            mstore(0x6340, addmod(mload(0x6300), mload(0x6320), f_q))
            mstore(0x6360, mulmod(sub(f_q, mload(0x1100)), mload(0x46a0), f_q))
            mstore(0x6380, addmod(mload(0x6340), mload(0x6360), f_q))
            mstore(0x63a0, mulmod(sub(f_q, mload(0x11a0)), mload(0x46c0), f_q))
            mstore(0x63c0, addmod(mload(0x6380), mload(0x63a0), f_q))
            mstore(0x63e0, mulmod(mload(0x63c0), mload(0x13a0), f_q))
            mstore(0x6400, mulmod(1, mload(0x13a0), f_q))
            mstore(0x6420, mulmod(mload(0x4bc0), mload(0x13a0), f_q))
            mstore(0x6440, mulmod(mload(0x4c20), mload(0x13a0), f_q))
            mstore(0x6460, mulmod(mload(0x4c80), mload(0x13a0), f_q))
            mstore(0x6480, mulmod(mload(0x4ce0), mload(0x13a0), f_q))
            mstore(0x64a0, mulmod(mload(0x4d40), mload(0x13a0), f_q))
            mstore(0x64c0, mulmod(mload(0x4da0), mload(0x13a0), f_q))
            mstore(0x64e0, mulmod(mload(0x4e00), mload(0x13a0), f_q))
            mstore(0x6500, addmod(mload(0x5c20), mload(0x63e0), f_q))
            mstore(0x6520, addmod(mload(0x5ca0), mload(0x6400), f_q))
            mstore(0x6540, addmod(mload(0x5cc0), mload(0x6420), f_q))
            mstore(0x6560, addmod(mload(0x5ce0), mload(0x6440), f_q))
            mstore(0x6580, addmod(mload(0x5d00), mload(0x6460), f_q))
            mstore(0x65a0, addmod(mload(0x5d60), mload(0x6480), f_q))
            mstore(0x65c0, addmod(mload(0x5dc0), mload(0x64a0), f_q))
            mstore(0x65e0, addmod(mload(0x5e20), mload(0x64c0), f_q))
            mstore(0x6600, addmod(mload(0x5e80), mload(0x64e0), f_q))
            mstore(0x6620, mulmod(sub(f_q, mload(0xea0)), 1, f_q))
            mstore(0x6640, mulmod(mload(0x6620), mload(0x45c0), f_q))
            mstore(0x6660, mulmod(1, mload(0x45c0), f_q))
            mstore(0x6680, addmod(mload(0x6500), mload(0x6640), f_q))
            mstore(0x66a0, addmod(mload(0x6540), mload(0x6660), f_q))
            mstore(0x66c0, mulmod(sub(f_q, mload(0xf60)), 1, f_q))
            mstore(0x66e0, mulmod(sub(f_q, mload(0x1000)), mload(0x1240), f_q))
            mstore(0x6700, addmod(mload(0x66c0), mload(0x66e0), f_q))
            mstore(0x6720, mulmod(sub(f_q, mload(0x10a0)), mload(0x4620), f_q))
            mstore(0x6740, addmod(mload(0x6700), mload(0x6720), f_q))
            mstore(0x6760, mulmod(sub(f_q, mload(0x1140)), mload(0x4640), f_q))
            mstore(0x6780, addmod(mload(0x6740), mload(0x6760), f_q))
            mstore(0x67a0, mulmod(sub(f_q, mload(0x11e0)), mload(0x4660), f_q))
            mstore(0x67c0, addmod(mload(0x6780), mload(0x67a0), f_q))
            mstore(0x67e0, mulmod(mload(0x67c0), mload(0x45e0), f_q))
            mstore(0x6800, mulmod(1, mload(0x45e0), f_q))
            mstore(0x6820, mulmod(mload(0x4bc0), mload(0x45e0), f_q))
            mstore(0x6840, mulmod(mload(0x4c20), mload(0x45e0), f_q))
            mstore(0x6860, mulmod(mload(0x4c80), mload(0x45e0), f_q))
            mstore(0x6880, mulmod(mload(0x4ce0), mload(0x45e0), f_q))
            mstore(0x68a0, addmod(mload(0x6680), mload(0x67e0), f_q))
            mstore(0x68c0, addmod(mload(0x5d20), mload(0x6800), f_q))
            mstore(0x68e0, addmod(mload(0x5d80), mload(0x6820), f_q))
            mstore(0x6900, addmod(mload(0x5de0), mload(0x6840), f_q))
            mstore(0x6920, addmod(mload(0x5e40), mload(0x6860), f_q))
            mstore(0x6940, addmod(mload(0x5ea0), mload(0x6880), f_q))
            mstore(0x6960, mulmod(1, mload(0xac0), f_q))
            mstore(0x6980, mulmod(1, mload(0x6960), f_q))
            mstore(
                0x69a0,
                mulmod(
                    11211301017135681023579411905410872569206244553457844956874280139879520583390,
                    mload(0xac0),
                    f_q
                )
            )
            mstore(0x69c0, mulmod(mload(0x6400), mload(0x69a0), f_q))
            mstore(
                0x69e0,
                mulmod(
                    10939663269433627367777756708678102241564365262857670666700619874077960926249,
                    mload(0xac0),
                    f_q
                )
            )
            mstore(0x6a00, mulmod(mload(0x6660), mload(0x69e0), f_q))
            mstore(
                0x6a20,
                mulmod(
                    8734126352828345679573237859165904705806588461301144420590422589042130041188,
                    mload(0xac0),
                    f_q
                )
            )
            mstore(0x6a40, mulmod(mload(0x6800), mload(0x6a20), f_q))
            mstore(0x6a60, 0x0000000000000000000000000000000000000000000000000000000000000001)
            mstore(0x6a80, 0x0000000000000000000000000000000000000000000000000000000000000002)
            mstore(0x6aa0, mload(0x68a0))
            success := and(eq(staticcall(gas(), 0x7, 0x6a60, 0x60, 0x6a60, 0x40), 1), success)
            mstore(0x6ac0, mload(0x6a60))
            mstore(0x6ae0, mload(0x6a80))
            mstore(0x6b00, mload(0x260))
            mstore(0x6b20, mload(0x280))
            success := and(eq(staticcall(gas(), 0x6, 0x6ac0, 0x80, 0x6ac0, 0x40), 1), success)
            mstore(0x6b40, mload(0x2a0))
            mstore(0x6b60, mload(0x2c0))
            mstore(0x6b80, mload(0x5c40))
            success := and(eq(staticcall(gas(), 0x7, 0x6b40, 0x60, 0x6b40, 0x40), 1), success)
            mstore(0x6ba0, mload(0x6ac0))
            mstore(0x6bc0, mload(0x6ae0))
            mstore(0x6be0, mload(0x6b40))
            mstore(0x6c00, mload(0x6b60))
            success := and(eq(staticcall(gas(), 0x6, 0x6ba0, 0x80, 0x6ba0, 0x40), 1), success)
            mstore(0x6c20, mload(0x2e0))
            mstore(0x6c40, mload(0x300))
            mstore(0x6c60, mload(0x5c60))
            success := and(eq(staticcall(gas(), 0x7, 0x6c20, 0x60, 0x6c20, 0x40), 1), success)
            mstore(0x6c80, mload(0x6ba0))
            mstore(0x6ca0, mload(0x6bc0))
            mstore(0x6cc0, mload(0x6c20))
            mstore(0x6ce0, mload(0x6c40))
            success := and(eq(staticcall(gas(), 0x6, 0x6c80, 0x80, 0x6c80, 0x40), 1), success)
            mstore(0x6d00, mload(0x320))
            mstore(0x6d20, mload(0x340))
            mstore(0x6d40, mload(0x5c80))
            success := and(eq(staticcall(gas(), 0x7, 0x6d00, 0x60, 0x6d00, 0x40), 1), success)
            mstore(0x6d60, mload(0x6c80))
            mstore(0x6d80, mload(0x6ca0))
            mstore(0x6da0, mload(0x6d00))
            mstore(0x6dc0, mload(0x6d20))
            success := and(eq(staticcall(gas(), 0x6, 0x6d60, 0x80, 0x6d60, 0x40), 1), success)
            mstore(0x6de0, mload(0x360))
            mstore(0x6e00, mload(0x380))
            mstore(0x6e20, mload(0x6520))
            success := and(eq(staticcall(gas(), 0x7, 0x6de0, 0x60, 0x6de0, 0x40), 1), success)
            mstore(0x6e40, mload(0x6d60))
            mstore(0x6e60, mload(0x6d80))
            mstore(0x6e80, mload(0x6de0))
            mstore(0x6ea0, mload(0x6e00))
            success := and(eq(staticcall(gas(), 0x6, 0x6e40, 0x80, 0x6e40, 0x40), 1), success)
            mstore(0x6ec0, mload(0x740))
            mstore(0x6ee0, mload(0x760))
            mstore(0x6f00, mload(0x66a0))
            success := and(eq(staticcall(gas(), 0x7, 0x6ec0, 0x60, 0x6ec0, 0x40), 1), success)
            mstore(0x6f20, mload(0x6e40))
            mstore(0x6f40, mload(0x6e60))
            mstore(0x6f60, mload(0x6ec0))
            mstore(0x6f80, mload(0x6ee0))
            success := and(eq(staticcall(gas(), 0x6, 0x6f20, 0x80, 0x6f20, 0x40), 1), success)
            mstore(0x6fa0, mload(0x780))
            mstore(0x6fc0, mload(0x7a0))
            mstore(0x6fe0, mload(0x6560))
            success := and(eq(staticcall(gas(), 0x7, 0x6fa0, 0x60, 0x6fa0, 0x40), 1), success)
            mstore(0x7000, mload(0x6f20))
            mstore(0x7020, mload(0x6f40))
            mstore(0x7040, mload(0x6fa0))
            mstore(0x7060, mload(0x6fc0))
            success := and(eq(staticcall(gas(), 0x6, 0x7000, 0x80, 0x7000, 0x40), 1), success)
            mstore(0x7080, mload(0x7c0))
            mstore(0x70a0, mload(0x7e0))
            mstore(0x70c0, mload(0x6580))
            success := and(eq(staticcall(gas(), 0x7, 0x7080, 0x60, 0x7080, 0x40), 1), success)
            mstore(0x70e0, mload(0x7000))
            mstore(0x7100, mload(0x7020))
            mstore(0x7120, mload(0x7080))
            mstore(0x7140, mload(0x70a0))
            success := and(eq(staticcall(gas(), 0x6, 0x70e0, 0x80, 0x70e0, 0x40), 1), success)
            mstore(0x7160, mload(0x400))
            mstore(0x7180, mload(0x420))
            mstore(0x71a0, mload(0x68c0))
            success := and(eq(staticcall(gas(), 0x7, 0x7160, 0x60, 0x7160, 0x40), 1), success)
            mstore(0x71c0, mload(0x70e0))
            mstore(0x71e0, mload(0x7100))
            mstore(0x7200, mload(0x7160))
            mstore(0x7220, mload(0x7180))
            success := and(eq(staticcall(gas(), 0x6, 0x71c0, 0x80, 0x71c0, 0x40), 1), success)
            mstore(0x7240, mload(0x440))
            mstore(0x7260, mload(0x460))
            mstore(0x7280, mload(0x5d40))
            success := and(eq(staticcall(gas(), 0x7, 0x7240, 0x60, 0x7240, 0x40), 1), success)
            mstore(0x72a0, mload(0x71c0))
            mstore(0x72c0, mload(0x71e0))
            mstore(0x72e0, mload(0x7240))
            mstore(0x7300, mload(0x7260))
            success := and(eq(staticcall(gas(), 0x6, 0x72a0, 0x80, 0x72a0, 0x40), 1), success)
            mstore(0x7320, mload(0x800))
            mstore(0x7340, mload(0x820))
            mstore(0x7360, mload(0x65a0))
            success := and(eq(staticcall(gas(), 0x7, 0x7320, 0x60, 0x7320, 0x40), 1), success)
            mstore(0x7380, mload(0x72a0))
            mstore(0x73a0, mload(0x72c0))
            mstore(0x73c0, mload(0x7320))
            mstore(0x73e0, mload(0x7340))
            success := and(eq(staticcall(gas(), 0x6, 0x7380, 0x80, 0x7380, 0x40), 1), success)
            mstore(0x7400, mload(0x480))
            mstore(0x7420, mload(0x4a0))
            mstore(0x7440, mload(0x68e0))
            success := and(eq(staticcall(gas(), 0x7, 0x7400, 0x60, 0x7400, 0x40), 1), success)
            mstore(0x7460, mload(0x7380))
            mstore(0x7480, mload(0x73a0))
            mstore(0x74a0, mload(0x7400))
            mstore(0x74c0, mload(0x7420))
            success := and(eq(staticcall(gas(), 0x6, 0x7460, 0x80, 0x7460, 0x40), 1), success)
            mstore(0x74e0, mload(0x4c0))
            mstore(0x7500, mload(0x4e0))
            mstore(0x7520, mload(0x5da0))
            success := and(eq(staticcall(gas(), 0x7, 0x74e0, 0x60, 0x74e0, 0x40), 1), success)
            mstore(0x7540, mload(0x7460))
            mstore(0x7560, mload(0x7480))
            mstore(0x7580, mload(0x74e0))
            mstore(0x75a0, mload(0x7500))
            success := and(eq(staticcall(gas(), 0x6, 0x7540, 0x80, 0x7540, 0x40), 1), success)
            mstore(0x75c0, mload(0x840))
            mstore(0x75e0, mload(0x860))
            mstore(0x7600, mload(0x65c0))
            success := and(eq(staticcall(gas(), 0x7, 0x75c0, 0x60, 0x75c0, 0x40), 1), success)
            mstore(0x7620, mload(0x7540))
            mstore(0x7640, mload(0x7560))
            mstore(0x7660, mload(0x75c0))
            mstore(0x7680, mload(0x75e0))
            success := and(eq(staticcall(gas(), 0x6, 0x7620, 0x80, 0x7620, 0x40), 1), success)
            mstore(0x76a0, mload(0x500))
            mstore(0x76c0, mload(0x520))
            mstore(0x76e0, mload(0x6900))
            success := and(eq(staticcall(gas(), 0x7, 0x76a0, 0x60, 0x76a0, 0x40), 1), success)
            mstore(0x7700, mload(0x7620))
            mstore(0x7720, mload(0x7640))
            mstore(0x7740, mload(0x76a0))
            mstore(0x7760, mload(0x76c0))
            success := and(eq(staticcall(gas(), 0x6, 0x7700, 0x80, 0x7700, 0x40), 1), success)
            mstore(0x7780, mload(0x540))
            mstore(0x77a0, mload(0x560))
            mstore(0x77c0, mload(0x5e00))
            success := and(eq(staticcall(gas(), 0x7, 0x7780, 0x60, 0x7780, 0x40), 1), success)
            mstore(0x77e0, mload(0x7700))
            mstore(0x7800, mload(0x7720))
            mstore(0x7820, mload(0x7780))
            mstore(0x7840, mload(0x77a0))
            success := and(eq(staticcall(gas(), 0x6, 0x77e0, 0x80, 0x77e0, 0x40), 1), success)
            mstore(0x7860, mload(0x880))
            mstore(0x7880, mload(0x8a0))
            mstore(0x78a0, mload(0x65e0))
            success := and(eq(staticcall(gas(), 0x7, 0x7860, 0x60, 0x7860, 0x40), 1), success)
            mstore(0x78c0, mload(0x77e0))
            mstore(0x78e0, mload(0x7800))
            mstore(0x7900, mload(0x7860))
            mstore(0x7920, mload(0x7880))
            success := and(eq(staticcall(gas(), 0x6, 0x78c0, 0x80, 0x78c0, 0x40), 1), success)
            mstore(0x7940, mload(0x580))
            mstore(0x7960, mload(0x5a0))
            mstore(0x7980, mload(0x6920))
            success := and(eq(staticcall(gas(), 0x7, 0x7940, 0x60, 0x7940, 0x40), 1), success)
            mstore(0x79a0, mload(0x78c0))
            mstore(0x79c0, mload(0x78e0))
            mstore(0x79e0, mload(0x7940))
            mstore(0x7a00, mload(0x7960))
            success := and(eq(staticcall(gas(), 0x6, 0x79a0, 0x80, 0x79a0, 0x40), 1), success)
            mstore(0x7a20, mload(0x5c0))
            mstore(0x7a40, mload(0x5e0))
            mstore(0x7a60, mload(0x5e60))
            success := and(eq(staticcall(gas(), 0x7, 0x7a20, 0x60, 0x7a20, 0x40), 1), success)
            mstore(0x7a80, mload(0x79a0))
            mstore(0x7aa0, mload(0x79c0))
            mstore(0x7ac0, mload(0x7a20))
            mstore(0x7ae0, mload(0x7a40))
            success := and(eq(staticcall(gas(), 0x6, 0x7a80, 0x80, 0x7a80, 0x40), 1), success)
            mstore(0x7b00, mload(0x8c0))
            mstore(0x7b20, mload(0x8e0))
            mstore(0x7b40, mload(0x6600))
            success := and(eq(staticcall(gas(), 0x7, 0x7b00, 0x60, 0x7b00, 0x40), 1), success)
            mstore(0x7b60, mload(0x7a80))
            mstore(0x7b80, mload(0x7aa0))
            mstore(0x7ba0, mload(0x7b00))
            mstore(0x7bc0, mload(0x7b20))
            success := and(eq(staticcall(gas(), 0x6, 0x7b60, 0x80, 0x7b60, 0x40), 1), success)
            mstore(0x7be0, mload(0x600))
            mstore(0x7c00, mload(0x620))
            mstore(0x7c20, mload(0x6940))
            success := and(eq(staticcall(gas(), 0x7, 0x7be0, 0x60, 0x7be0, 0x40), 1), success)
            mstore(0x7c40, mload(0x7b60))
            mstore(0x7c60, mload(0x7b80))
            mstore(0x7c80, mload(0x7be0))
            mstore(0x7ca0, mload(0x7c00))
            success := and(eq(staticcall(gas(), 0x6, 0x7c40, 0x80, 0x7c40, 0x40), 1), success)
            mstore(0x7cc0, mload(0x640))
            mstore(0x7ce0, mload(0x660))
            mstore(0x7d00, mload(0x5ec0))
            success := and(eq(staticcall(gas(), 0x7, 0x7cc0, 0x60, 0x7cc0, 0x40), 1), success)
            mstore(0x7d20, mload(0x7c40))
            mstore(0x7d40, mload(0x7c60))
            mstore(0x7d60, mload(0x7cc0))
            mstore(0x7d80, mload(0x7ce0))
            success := and(eq(staticcall(gas(), 0x6, 0x7d20, 0x80, 0x7d20, 0x40), 1), success)
            mstore(0x7da0, 0x09aae72ddb3abf1cc3e9ef7b674a9adbbb67eb1bbf5a358f5c55c9430bc58d79)
            mstore(0x7dc0, 0x2c27bb1dcb1d8ecdfc4a2bc3d889f2057be294ea53d90ee361453f4771a1a42d)
            mstore(0x7de0, mload(0x5ee0))
            success := and(eq(staticcall(gas(), 0x7, 0x7da0, 0x60, 0x7da0, 0x40), 1), success)
            mstore(0x7e00, mload(0x7d20))
            mstore(0x7e20, mload(0x7d40))
            mstore(0x7e40, mload(0x7da0))
            mstore(0x7e60, mload(0x7dc0))
            success := and(eq(staticcall(gas(), 0x6, 0x7e00, 0x80, 0x7e00, 0x40), 1), success)
            mstore(0x7e80, 0x1b01e270fe5a0cfe0f317bdf7f44221bf8c2a5f1d1bfbee41bd010dc6afe05d5)
            mstore(0x7ea0, 0x1d26ae8f9a615281b14425ffa92376eef7a5b644ad21e503b70dacffbb7aef59)
            mstore(0x7ec0, mload(0x5f00))
            success := and(eq(staticcall(gas(), 0x7, 0x7e80, 0x60, 0x7e80, 0x40), 1), success)
            mstore(0x7ee0, mload(0x7e00))
            mstore(0x7f00, mload(0x7e20))
            mstore(0x7f20, mload(0x7e80))
            mstore(0x7f40, mload(0x7ea0))
            success := and(eq(staticcall(gas(), 0x6, 0x7ee0, 0x80, 0x7ee0, 0x40), 1), success)
            mstore(0x7f60, 0x10aae91f7f1f67758f213cae81db93036e4be6b2d3b296240001f6281b5cda9c)
            mstore(0x7f80, 0x2f322ad9b5a4c0434bfae25c8a65334aec0858af953d1da1c0f75322fa010a77)
            mstore(0x7fa0, mload(0x5f20))
            success := and(eq(staticcall(gas(), 0x7, 0x7f60, 0x60, 0x7f60, 0x40), 1), success)
            mstore(0x7fc0, mload(0x7ee0))
            mstore(0x7fe0, mload(0x7f00))
            mstore(0x8000, mload(0x7f60))
            mstore(0x8020, mload(0x7f80))
            success := and(eq(staticcall(gas(), 0x6, 0x7fc0, 0x80, 0x7fc0, 0x40), 1), success)
            mstore(0x8040, 0x241559671af30235fb5d607a91a4d81dfc9f628d931158adc852d3f3c90b399d)
            mstore(0x8060, 0x0a0a17c391f9b0e12dccaf1ba91c92ba8fb1c72ab9ec43493c0f5ec8a48ddd63)
            mstore(0x8080, mload(0x5f40))
            success := and(eq(staticcall(gas(), 0x7, 0x8040, 0x60, 0x8040, 0x40), 1), success)
            mstore(0x80a0, mload(0x7fc0))
            mstore(0x80c0, mload(0x7fe0))
            mstore(0x80e0, mload(0x8040))
            mstore(0x8100, mload(0x8060))
            success := and(eq(staticcall(gas(), 0x6, 0x80a0, 0x80, 0x80a0, 0x40), 1), success)
            mstore(0x8120, 0x11a9558e801369763bd97f5e1ed948eca516c0f839c3240b899265b152f8f174)
            mstore(0x8140, 0x10547bfeaffefeeed1dd0d7016ac578336c4dc7f4fecab752a9c69e3498263a7)
            mstore(0x8160, mload(0x5f60))
            success := and(eq(staticcall(gas(), 0x7, 0x8120, 0x60, 0x8120, 0x40), 1), success)
            mstore(0x8180, mload(0x80a0))
            mstore(0x81a0, mload(0x80c0))
            mstore(0x81c0, mload(0x8120))
            mstore(0x81e0, mload(0x8140))
            success := and(eq(staticcall(gas(), 0x6, 0x8180, 0x80, 0x8180, 0x40), 1), success)
            mstore(0x8200, 0x189a79c88f033aaa8c2c2eb657eaf08786191f9389a6f74e0a0b4cc0edbd670c)
            mstore(0x8220, 0x001acd95a409b953c2b6a9321b60ed2c0c3bd3d04c53792e4584a0151d764ecf)
            mstore(0x8240, mload(0x5f80))
            success := and(eq(staticcall(gas(), 0x7, 0x8200, 0x60, 0x8200, 0x40), 1), success)
            mstore(0x8260, mload(0x8180))
            mstore(0x8280, mload(0x81a0))
            mstore(0x82a0, mload(0x8200))
            mstore(0x82c0, mload(0x8220))
            success := and(eq(staticcall(gas(), 0x6, 0x8260, 0x80, 0x8260, 0x40), 1), success)
            mstore(0x82e0, 0x25172847ec84fce79c8878b22884fd9bb871953de6d0b322e143499a37063130)
            mstore(0x8300, 0x16ea1b0a3890e3ec7047ef531a4fadf129fedce46591799ed5f2a62ff9f5d87b)
            mstore(0x8320, mload(0x5fa0))
            success := and(eq(staticcall(gas(), 0x7, 0x82e0, 0x60, 0x82e0, 0x40), 1), success)
            mstore(0x8340, mload(0x8260))
            mstore(0x8360, mload(0x8280))
            mstore(0x8380, mload(0x82e0))
            mstore(0x83a0, mload(0x8300))
            success := and(eq(staticcall(gas(), 0x6, 0x8340, 0x80, 0x8340, 0x40), 1), success)
            mstore(0x83c0, 0x097a7d30cf05f6976283fba11ed37be4e8222672e3d42f4adcfd4c71c5658209)
            mstore(0x83e0, 0x0a0eeb3da3935494e28815af8587900acbf7e6b3318bdea3e2950525f6fef0d8)
            mstore(0x8400, mload(0x5fc0))
            success := and(eq(staticcall(gas(), 0x7, 0x83c0, 0x60, 0x83c0, 0x40), 1), success)
            mstore(0x8420, mload(0x8340))
            mstore(0x8440, mload(0x8360))
            mstore(0x8460, mload(0x83c0))
            mstore(0x8480, mload(0x83e0))
            success := and(eq(staticcall(gas(), 0x6, 0x8420, 0x80, 0x8420, 0x40), 1), success)
            mstore(0x84a0, 0x1e98ea3ad04c2b7135fbf92cf8118d7bd2f84035a8e87d5e39dc5d39a18f5552)
            mstore(0x84c0, 0x1a9d14bd046e37e1b5c9590bf8781122702bfa6fbbe580a0a20d7ce96aaa0d15)
            mstore(0x84e0, mload(0x5fe0))
            success := and(eq(staticcall(gas(), 0x7, 0x84a0, 0x60, 0x84a0, 0x40), 1), success)
            mstore(0x8500, mload(0x8420))
            mstore(0x8520, mload(0x8440))
            mstore(0x8540, mload(0x84a0))
            mstore(0x8560, mload(0x84c0))
            success := and(eq(staticcall(gas(), 0x6, 0x8500, 0x80, 0x8500, 0x40), 1), success)
            mstore(0x8580, 0x27e5032e2a4b0ba767a48a21524e024095878b7785372c6760677e95e1379c1c)
            mstore(0x85a0, 0x1b1bb595c553efda9040bbb6f63f377801f3763d636b839165e660a2d4727337)
            mstore(0x85c0, mload(0x6000))
            success := and(eq(staticcall(gas(), 0x7, 0x8580, 0x60, 0x8580, 0x40), 1), success)
            mstore(0x85e0, mload(0x8500))
            mstore(0x8600, mload(0x8520))
            mstore(0x8620, mload(0x8580))
            mstore(0x8640, mload(0x85a0))
            success := and(eq(staticcall(gas(), 0x6, 0x85e0, 0x80, 0x85e0, 0x40), 1), success)
            mstore(0x8660, 0x2d0f6be46123effcd52b33650d51b24da0c9e33c0f5cdb6a7008f7e5207cb1d3)
            mstore(0x8680, 0x23691ca115f53af63185a388d0aba528c05ed73315c11bf0dead36fd57003579)
            mstore(0x86a0, mload(0x6020))
            success := and(eq(staticcall(gas(), 0x7, 0x8660, 0x60, 0x8660, 0x40), 1), success)
            mstore(0x86c0, mload(0x85e0))
            mstore(0x86e0, mload(0x8600))
            mstore(0x8700, mload(0x8660))
            mstore(0x8720, mload(0x8680))
            success := and(eq(staticcall(gas(), 0x6, 0x86c0, 0x80, 0x86c0, 0x40), 1), success)
            mstore(0x8740, 0x080e675f1fbe3f7a7cdd87244c1d1f7c08e71db02565a906517663ee58426fc5)
            mstore(0x8760, 0x2834ef3c5e97f2db27b06b89138dcd4b8e1b608f5d33bce6a04470dc3deb6637)
            mstore(0x8780, mload(0x6040))
            success := and(eq(staticcall(gas(), 0x7, 0x8740, 0x60, 0x8740, 0x40), 1), success)
            mstore(0x87a0, mload(0x86c0))
            mstore(0x87c0, mload(0x86e0))
            mstore(0x87e0, mload(0x8740))
            mstore(0x8800, mload(0x8760))
            success := and(eq(staticcall(gas(), 0x6, 0x87a0, 0x80, 0x87a0, 0x40), 1), success)
            mstore(0x8820, 0x1b3449db6f7a98194098a591434b13996a3e2397e522b656a10492dba4d58885)
            mstore(0x8840, 0x0b1e8919d0317dcdaf9c6ca50ef1e09adb6991309adb460513e14bcfe22a1189)
            mstore(0x8860, mload(0x6060))
            success := and(eq(staticcall(gas(), 0x7, 0x8820, 0x60, 0x8820, 0x40), 1), success)
            mstore(0x8880, mload(0x87a0))
            mstore(0x88a0, mload(0x87c0))
            mstore(0x88c0, mload(0x8820))
            mstore(0x88e0, mload(0x8840))
            success := and(eq(staticcall(gas(), 0x6, 0x8880, 0x80, 0x8880, 0x40), 1), success)
            mstore(0x8900, 0x01e66a46fe044cb0b4a3c353416a823a68ed89455e8bd84cd87940504327655d)
            mstore(0x8920, 0x05866613337aa5786a03744e86ed2fd31b751de9e291403cc308e43eb30a0891)
            mstore(0x8940, mload(0x6080))
            success := and(eq(staticcall(gas(), 0x7, 0x8900, 0x60, 0x8900, 0x40), 1), success)
            mstore(0x8960, mload(0x8880))
            mstore(0x8980, mload(0x88a0))
            mstore(0x89a0, mload(0x8900))
            mstore(0x89c0, mload(0x8920))
            success := and(eq(staticcall(gas(), 0x6, 0x8960, 0x80, 0x8960, 0x40), 1), success)
            mstore(0x89e0, 0x02461948a0a3d81619aa17e040bac2d8675cf20814edc6d5aeb347d300926cd4)
            mstore(0x8a00, 0x29063295f4690f717917ac9479e932ab57fa59fbcd987ca87890ffad0d1a206b)
            mstore(0x8a20, mload(0x60a0))
            success := and(eq(staticcall(gas(), 0x7, 0x89e0, 0x60, 0x89e0, 0x40), 1), success)
            mstore(0x8a40, mload(0x8960))
            mstore(0x8a60, mload(0x8980))
            mstore(0x8a80, mload(0x89e0))
            mstore(0x8aa0, mload(0x8a00))
            success := and(eq(staticcall(gas(), 0x6, 0x8a40, 0x80, 0x8a40, 0x40), 1), success)
            mstore(0x8ac0, 0x090d666baee85c08f02ddc28f63931ec2e88eb1e602f71223d194ec949c3e4da)
            mstore(0x8ae0, 0x2562b1dc743e74d545700ceb0de7b3bbb0a3299d41b2b60966f33b73b5e511c7)
            mstore(0x8b00, mload(0x60c0))
            success := and(eq(staticcall(gas(), 0x7, 0x8ac0, 0x60, 0x8ac0, 0x40), 1), success)
            mstore(0x8b20, mload(0x8a40))
            mstore(0x8b40, mload(0x8a60))
            mstore(0x8b60, mload(0x8ac0))
            mstore(0x8b80, mload(0x8ae0))
            success := and(eq(staticcall(gas(), 0x6, 0x8b20, 0x80, 0x8b20, 0x40), 1), success)
            mstore(0x8ba0, 0x0f5fa5e2f5ad7fc16f287f810a9d94f50e44d12126636969375c0c36b022548e)
            mstore(0x8bc0, 0x15d49879731bce3e17490194d6138742e391eca4008cb71b714a7ca4355f9e2d)
            mstore(0x8be0, mload(0x60e0))
            success := and(eq(staticcall(gas(), 0x7, 0x8ba0, 0x60, 0x8ba0, 0x40), 1), success)
            mstore(0x8c00, mload(0x8b20))
            mstore(0x8c20, mload(0x8b40))
            mstore(0x8c40, mload(0x8ba0))
            mstore(0x8c60, mload(0x8bc0))
            success := and(eq(staticcall(gas(), 0x6, 0x8c00, 0x80, 0x8c00, 0x40), 1), success)
            mstore(0x8c80, 0x1f44d67af1130b90a880c03a33f81008024991f822bebfe60b08d5df1030ac61)
            mstore(0x8ca0, 0x17412979aacce808f6e6dbe91f0897e8542703ab3da89e846b940e7f030b23b7)
            mstore(0x8cc0, mload(0x6100))
            success := and(eq(staticcall(gas(), 0x7, 0x8c80, 0x60, 0x8c80, 0x40), 1), success)
            mstore(0x8ce0, mload(0x8c00))
            mstore(0x8d00, mload(0x8c20))
            mstore(0x8d20, mload(0x8c80))
            mstore(0x8d40, mload(0x8ca0))
            success := and(eq(staticcall(gas(), 0x6, 0x8ce0, 0x80, 0x8ce0, 0x40), 1), success)
            mstore(0x8d60, 0x26a366f0e8e3d5e7f4d5a2f5c8e9355c3485b96314dcc5bb6bd305852f5c6f26)
            mstore(0x8d80, 0x23a089d8aef48ca96546462d1844fec9781e1b1cbbdd0ee880c33c3f952db422)
            mstore(0x8da0, mload(0x6120))
            success := and(eq(staticcall(gas(), 0x7, 0x8d60, 0x60, 0x8d60, 0x40), 1), success)
            mstore(0x8dc0, mload(0x8ce0))
            mstore(0x8de0, mload(0x8d00))
            mstore(0x8e00, mload(0x8d60))
            mstore(0x8e20, mload(0x8d80))
            success := and(eq(staticcall(gas(), 0x6, 0x8dc0, 0x80, 0x8dc0, 0x40), 1), success)
            mstore(0x8e40, 0x251849edb0c51995fa948a45f1cb13ffea69df96954fb9ab12334f883da7ed10)
            mstore(0x8e60, 0x2809d3801596310ba3333e1ed54efdad98dacc04194df68762ef89361f785790)
            mstore(0x8e80, mload(0x6140))
            success := and(eq(staticcall(gas(), 0x7, 0x8e40, 0x60, 0x8e40, 0x40), 1), success)
            mstore(0x8ea0, mload(0x8dc0))
            mstore(0x8ec0, mload(0x8de0))
            mstore(0x8ee0, mload(0x8e40))
            mstore(0x8f00, mload(0x8e60))
            success := and(eq(staticcall(gas(), 0x6, 0x8ea0, 0x80, 0x8ea0, 0x40), 1), success)
            mstore(0x8f20, mload(0x9a0))
            mstore(0x8f40, mload(0x9c0))
            mstore(0x8f60, mload(0x6160))
            success := and(eq(staticcall(gas(), 0x7, 0x8f20, 0x60, 0x8f20, 0x40), 1), success)
            mstore(0x8f80, mload(0x8ea0))
            mstore(0x8fa0, mload(0x8ec0))
            mstore(0x8fc0, mload(0x8f20))
            mstore(0x8fe0, mload(0x8f40))
            success := and(eq(staticcall(gas(), 0x6, 0x8f80, 0x80, 0x8f80, 0x40), 1), success)
            mstore(0x9000, mload(0x9e0))
            mstore(0x9020, mload(0xa00))
            mstore(0x9040, mload(0x6180))
            success := and(eq(staticcall(gas(), 0x7, 0x9000, 0x60, 0x9000, 0x40), 1), success)
            mstore(0x9060, mload(0x8f80))
            mstore(0x9080, mload(0x8fa0))
            mstore(0x90a0, mload(0x9000))
            mstore(0x90c0, mload(0x9020))
            success := and(eq(staticcall(gas(), 0x6, 0x9060, 0x80, 0x9060, 0x40), 1), success)
            mstore(0x90e0, mload(0xa20))
            mstore(0x9100, mload(0xa40))
            mstore(0x9120, mload(0x61a0))
            success := and(eq(staticcall(gas(), 0x7, 0x90e0, 0x60, 0x90e0, 0x40), 1), success)
            mstore(0x9140, mload(0x9060))
            mstore(0x9160, mload(0x9080))
            mstore(0x9180, mload(0x90e0))
            mstore(0x91a0, mload(0x9100))
            success := and(eq(staticcall(gas(), 0x6, 0x9140, 0x80, 0x9140, 0x40), 1), success)
            mstore(0x91c0, mload(0xa60))
            mstore(0x91e0, mload(0xa80))
            mstore(0x9200, mload(0x61c0))
            success := and(eq(staticcall(gas(), 0x7, 0x91c0, 0x60, 0x91c0, 0x40), 1), success)
            mstore(0x9220, mload(0x9140))
            mstore(0x9240, mload(0x9160))
            mstore(0x9260, mload(0x91c0))
            mstore(0x9280, mload(0x91e0))
            success := and(eq(staticcall(gas(), 0x6, 0x9220, 0x80, 0x9220, 0x40), 1), success)
            mstore(0x92a0, mload(0x900))
            mstore(0x92c0, mload(0x920))
            mstore(0x92e0, mload(0x61e0))
            success := and(eq(staticcall(gas(), 0x7, 0x92a0, 0x60, 0x92a0, 0x40), 1), success)
            mstore(0x9300, mload(0x9220))
            mstore(0x9320, mload(0x9240))
            mstore(0x9340, mload(0x92a0))
            mstore(0x9360, mload(0x92c0))
            success := and(eq(staticcall(gas(), 0x6, 0x9300, 0x80, 0x9300, 0x40), 1), success)
            mstore(0x9380, mload(0x1280))
            mstore(0x93a0, mload(0x12a0))
            mstore(0x93c0, mload(0x6980))
            success := and(eq(staticcall(gas(), 0x7, 0x9380, 0x60, 0x9380, 0x40), 1), success)
            mstore(0x93e0, mload(0x9300))
            mstore(0x9400, mload(0x9320))
            mstore(0x9420, mload(0x9380))
            mstore(0x9440, mload(0x93a0))
            success := and(eq(staticcall(gas(), 0x6, 0x93e0, 0x80, 0x93e0, 0x40), 1), success)
            mstore(0x9460, mload(0x12c0))
            mstore(0x9480, mload(0x12e0))
            mstore(0x94a0, mload(0x69c0))
            success := and(eq(staticcall(gas(), 0x7, 0x9460, 0x60, 0x9460, 0x40), 1), success)
            mstore(0x94c0, mload(0x93e0))
            mstore(0x94e0, mload(0x9400))
            mstore(0x9500, mload(0x9460))
            mstore(0x9520, mload(0x9480))
            success := and(eq(staticcall(gas(), 0x6, 0x94c0, 0x80, 0x94c0, 0x40), 1), success)
            mstore(0x9540, mload(0x1300))
            mstore(0x9560, mload(0x1320))
            mstore(0x9580, mload(0x6a00))
            success := and(eq(staticcall(gas(), 0x7, 0x9540, 0x60, 0x9540, 0x40), 1), success)
            mstore(0x95a0, mload(0x94c0))
            mstore(0x95c0, mload(0x94e0))
            mstore(0x95e0, mload(0x9540))
            mstore(0x9600, mload(0x9560))
            success := and(eq(staticcall(gas(), 0x6, 0x95a0, 0x80, 0x95a0, 0x40), 1), success)
            mstore(0x9620, mload(0x1340))
            mstore(0x9640, mload(0x1360))
            mstore(0x9660, mload(0x6a40))
            success := and(eq(staticcall(gas(), 0x7, 0x9620, 0x60, 0x9620, 0x40), 1), success)
            mstore(0x9680, mload(0x95a0))
            mstore(0x96a0, mload(0x95c0))
            mstore(0x96c0, mload(0x9620))
            mstore(0x96e0, mload(0x9640))
            success := and(eq(staticcall(gas(), 0x6, 0x9680, 0x80, 0x9680, 0x40), 1), success)
            mstore(0x9700, mload(0x12c0))
            mstore(0x9720, mload(0x12e0))
            mstore(0x9740, mload(0x6400))
            success := and(eq(staticcall(gas(), 0x7, 0x9700, 0x60, 0x9700, 0x40), 1), success)
            mstore(0x9760, mload(0x1280))
            mstore(0x9780, mload(0x12a0))
            mstore(0x97a0, mload(0x9700))
            mstore(0x97c0, mload(0x9720))
            success := and(eq(staticcall(gas(), 0x6, 0x9760, 0x80, 0x9760, 0x40), 1), success)
            mstore(0x97e0, mload(0x1300))
            mstore(0x9800, mload(0x1320))
            mstore(0x9820, mload(0x6660))
            success := and(eq(staticcall(gas(), 0x7, 0x97e0, 0x60, 0x97e0, 0x40), 1), success)
            mstore(0x9840, mload(0x9760))
            mstore(0x9860, mload(0x9780))
            mstore(0x9880, mload(0x97e0))
            mstore(0x98a0, mload(0x9800))
            success := and(eq(staticcall(gas(), 0x6, 0x9840, 0x80, 0x9840, 0x40), 1), success)
            mstore(0x98c0, mload(0x1340))
            mstore(0x98e0, mload(0x1360))
            mstore(0x9900, mload(0x6800))
            success := and(eq(staticcall(gas(), 0x7, 0x98c0, 0x60, 0x98c0, 0x40), 1), success)
            mstore(0x9920, mload(0x9840))
            mstore(0x9940, mload(0x9860))
            mstore(0x9960, mload(0x98c0))
            mstore(0x9980, mload(0x98e0))
            success := and(eq(staticcall(gas(), 0x6, 0x9920, 0x80, 0x9920, 0x40), 1), success)
            mstore(0x99a0, mload(0x9680))
            mstore(0x99c0, mload(0x96a0))
            mstore(0x99e0, mload(0x9920))
            mstore(0x9a00, mload(0x9940))
            mstore(0x9a20, mload(0x13e0))
            mstore(0x9a40, mload(0x1400))
            mstore(0x9a60, mload(0x1420))
            mstore(0x9a80, mload(0x1440))
            mstore(0x9aa0, keccak256(0x99a0, 256))
            mstore(39616, mod(mload(39584), f_q))
            mstore(0x9ae0, mulmod(mload(0x9ac0), mload(0x9ac0), f_q))
            mstore(0x9b00, mulmod(1, mload(0x9ac0), f_q))
            mstore(0x9b20, mload(0x9a20))
            mstore(0x9b40, mload(0x9a40))
            mstore(0x9b60, mload(0x9b00))
            success := and(eq(staticcall(gas(), 0x7, 0x9b20, 0x60, 0x9b20, 0x40), 1), success)
            mstore(0x9b80, mload(0x99a0))
            mstore(0x9ba0, mload(0x99c0))
            mstore(0x9bc0, mload(0x9b20))
            mstore(0x9be0, mload(0x9b40))
            success := and(eq(staticcall(gas(), 0x6, 0x9b80, 0x80, 0x9b80, 0x40), 1), success)
            mstore(0x9c00, mload(0x9a60))
            mstore(0x9c20, mload(0x9a80))
            mstore(0x9c40, mload(0x9b00))
            success := and(eq(staticcall(gas(), 0x7, 0x9c00, 0x60, 0x9c00, 0x40), 1), success)
            mstore(0x9c60, mload(0x99e0))
            mstore(0x9c80, mload(0x9a00))
            mstore(0x9ca0, mload(0x9c00))
            mstore(0x9cc0, mload(0x9c20))
            success := and(eq(staticcall(gas(), 0x6, 0x9c60, 0x80, 0x9c60, 0x40), 1), success)
            mstore(0x9ce0, mload(0x9b80))
            mstore(0x9d00, mload(0x9ba0))
            mstore(0x9d20, 0x198e9393920d483a7260bfb731fb5d25f1aa493335a9e71297e485b7aef312c2)
            mstore(0x9d40, 0x1800deef121f1e76426a00665e5c4479674322d4f75edadd46debd5cd992f6ed)
            mstore(0x9d60, 0x090689d0585ff075ec9e99ad690c3395bc4b313370b38ef355acdadcd122975b)
            mstore(0x9d80, 0x12c85ea5db8c6deb4aab71808dcb408fe3d1e7690c43d37b4ce6cc0166fa7daa)
            mstore(0x9da0, mload(0x9c60))
            mstore(0x9dc0, mload(0x9c80))
            mstore(0x9de0, 0x0181624e80f3d6ae28df7e01eaeab1c0e919877a3b8a6b7fbc69a6817d596ea2)
            mstore(0x9e00, 0x1783d30dcb12d259bb89098addf6280fa4b653be7a152542a28f7b926e27e648)
            mstore(0x9e20, 0x00ae44489d41a0d179e2dfdc03bddd883b7109f8b6ae316a59e815c1a6b35304)
            mstore(0x9e40, 0x0b2147ab62a386bd63e6de1522109b8c9588ab466f5aadfde8c41ca3749423ee)
            success := and(eq(staticcall(gas(), 0x8, 0x9ce0, 0x180, 0x9ce0, 0x20), 1), success)
            success := and(eq(mload(0x9ce0), 1), success)

            // Revert if anything fails
            if iszero(success) { revert(0, 0) }

            // Return taiko hash bytes on success
            mstore(0x00, 0x93ac8fdbfc0b0608f9195474a0dd6242f019f5abc3c4e26ad51fefb059cc0177)
            return(0, 32)
        }
    }
}