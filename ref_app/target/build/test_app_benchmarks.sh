#!/usr/bin/env bash
#
#  Copyright Christopher Kormanyos 2020 - 2025.
#  Distributed under the Boost Software License,
#  Version 1.0. (See accompanying file LICENSE_1_0.txt
#  or copy at http://www.boost.org/LICENSE_1_0.txt)
#

if [[ "$1" != "" ]]; then
    GCC="$1"
else
    GCC=g++
fi

if [[ "$2" != "" ]]; then
    STD="$2"
else
    STD=c++14
fi

mkdir -p bin

rm -f ./bin/*.*

echo run benchmarks with $GCC and language standard $STD
echo

$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_COMPLEX                    -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_complex.cpp                    -o ./bin/app_benchmark_complex.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_CRC                        -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_crc.cpp                        -o ./bin/app_benchmark_crc.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_FAST_MATH                  -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_fast_math.cpp                  -o ./bin/app_benchmark_fast_math.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_FILTER                     -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_filter.cpp                     -o ./bin/app_benchmark_filter.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_FIXED_POINT                -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_fixed_point.cpp                -o ./bin/app_benchmark_fixed_point.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_FLOAT                      -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_float.cpp                      -o ./bin/app_benchmark_float.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_HASH                       -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_hash.cpp                       -o ./bin/app_benchmark_hash.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_NONE                       -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_none.cpp                       -o ./bin/app_benchmark_none.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_PI_AGM                     -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_pi_agm.cpp                     -o ./bin/app_benchmark_pi_agm.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_PI_SPIGOT                  -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_pi_spigot.cpp                  -o ./bin/app_benchmark_pi_spigot.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_PI_SPIGOT_SINGLE           -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_pi_spigot_single.cpp           -o ./bin/app_benchmark_pi_spigot_single.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_SOFT_DOUBLE_H2F1           -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_soft_double_h2f1.cpp           -o ./bin/app_benchmark_soft_double_h2f1.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_WIDE_DECIMAL               -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_wide_decimal.cpp               -o ./bin/app_benchmark_wide_decimal.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_WIDE_INTEGER               -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_wide_integer.cpp               -o ./bin/app_benchmark_wide_integer.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_TRAPEZOID_INTEGRAL         -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_trapezoid_integral.cpp         -o ./bin/app_benchmark_trapezoid_integral.exe
$GCC -std=$STD -Wall         -O2 -m64 -I./src/mcal/host -I./src                                          -I../../boost-root -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_BOOST_MATH_CBRT_TGAMMA     -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_boost_math_cbrt_tgamma.cpp     -o ./bin/app_benchmark_boost_math_cbrt_tgamma.exe
$GCC -std=$STD -Wall         -O2 -m64 -I./src/mcal/host -I./src                                          -I../../boost-root -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_BOOST_MATH_CYL_BESSEL_J    -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_boost_math_cyl_bessel_j.cpp    -o ./bin/app_benchmark_boost_math_cyl_bessel_j.exe
$GCC -std=$STD -Wall         -O2 -m64 -I./src/mcal/host -I./src                                          -I../../boost-root -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_BOOST_MULTIPRECISION_CBRT  -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_boost_multiprecision_cbrt.cpp  -o ./bin/app_benchmark_boost_multiprecision_cbrt.exe
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_HASH_SHA256                -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_hash_sha256.cpp                -o ./bin/app_benchmark_hash_sha256.exe
if [[ "$GCC" == "g++" ]]; then
$GCC -std=$STD -Wall -Werror -O2 -m64 -I./src/mcal/host -I./src                                                             -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_ECC_GENERIC_ECC            -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_ecc_generic_ecc.cpp            -o ./bin/app_benchmark_ecc_generic_ecc.exe
fi
$GCC -std=$STD -Wall         -O2 -m64 -I./src/mcal/host -I./src -I../../cppalliance-decimal-root/include -I../../boost-root -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_NON_STD_DECIMAL            -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_non_std_decimal.cpp            -o ./bin/app_benchmark_non_std_decimal.exe
$GCC -std=$STD -Wall         -O2 -m64 -I./src/mcal/host -I./src -I../../cppalliance-crypt-root/include   -I../../boost-root -DAPP_BENCHMARK_TYPE=APP_BENCHMARK_TYPE_BOOST_CRYPT_HASHER         -DAPP_BENCHMARK_STANDALONE_MAIN ./src/app/benchmark/app_benchmark_boost_crypt_hasher.cpp         -o ./bin/app_benchmark_boost_crypt_hasher.exe

echo check existences of exe-files
echo

./bin/app_benchmark_complex.exe
result_var_complex=$?

./bin/app_benchmark_crc.exe
result_var_crc=$?

./bin/app_benchmark_fast_math.exe
result_var_fast_math=$?

./bin/app_benchmark_filter.exe
result_var_filter=$?

./bin/app_benchmark_fixed_point.exe
result_var_fixed_point=$?

./bin/app_benchmark_float.exe
result_var_float=$?

./bin/app_benchmark_hash.exe
result_var_hash=$?

./bin/app_benchmark_none.exe
result_var_none=$?

./bin/app_benchmark_pi_agm.exe
result_var_pi_agm=$?

./bin/app_benchmark_pi_spigot.exe
result_var_pi_spigot=$?

./bin/app_benchmark_pi_spigot_single.exe
result_var_pi_spigot_single=$?

./bin/app_benchmark_soft_double_h2f1.exe
result_var_soft_double_h2f1=$?

./bin/app_benchmark_trapezoid_integral.exe
result_var_trapezoid_integral=$?

./bin/app_benchmark_wide_decimal.exe
result_var_wide_decimal=$?

./bin/app_benchmark_wide_integer.exe
result_var_wide_integer=$?

./bin/app_benchmark_boost_math_cbrt_tgamma.exe
result_var_boost_math_cbrt_tgamma=$?

./bin/app_benchmark_boost_math_cyl_bessel_j.exe
result_var_boost_math_cyl_bessel_j=$?

./bin/app_benchmark_boost_multiprecision_cbrt.exe
result_var_boost_multiprecision_cbrt=$?

./bin/app_benchmark_hash_sha256.exe
result_var_hash_sha256=$?

if [[ "$GCC" == "g++" ]]; then
./bin/app_benchmark_ecc_generic_ecc.exe
result_var_ecc_generic_ecc=$?
fi

./bin/app_benchmark_non_std_decimal.exe
result_var_non_std_decimal=$?

./bin/app_benchmark_boost_crypt_hasher.exe
result_var_boost_crypt_hasher=$?

echo "result_var_complex                  : "  "$result_var_complex"
echo "result_var_crc                      : "  "$result_var_crc"
echo "result_var_fast_math                : "  "$result_var_fast_math"
echo "result_var_filter                   : "  "$result_var_filter"
echo "result_var_fixed_point              : "  "$result_var_fixed_point"
echo "result_var_float                    : "  "$result_var_float"
echo "result_var_hash                     : "  "$result_var_hash"
echo "result_var_none                     : "  "$result_var_none"
echo "result_var_pi_agm                   : "  "$result_var_pi_agm"
echo "result_var_pi_spigot                : "  "$result_var_pi_spigot"
echo "result_var_pi_spigot_single         : "  "$result_var_pi_spigot_single"
echo "result_var_soft_double_h2f1         : "  "$result_var_soft_double_h2f1"
echo "result_var_trapezoid_integral       : "  "$result_var_trapezoid_integral"
echo "result_var_wide_decimal             : "  "$result_var_wide_decimal"
echo "result_var_wide_integer             : "  "$result_var_wide_integer"
echo "result_var_boost_math_cbrt_tgamma   : "  "$result_var_boost_math_cbrt_tgamma"
echo "result_var_boost_math_cyl_bessel_j  : "  "$result_var_boost_math_cyl_bessel_j"
echo "result_var_boost_multiprecision_cbrt: "  "$result_var_boost_multiprecision_cbrt"
echo "result_var_hash_sha256              : "  "$result_var_hash_sha256"
if [[ "$GCC" == "g++" ]]; then
echo "result_var_ecc_generic_ecc          : "  "$result_var_ecc_generic_ecc"
fi
echo "result_var_non_std_decimal          : "  "$result_var_non_std_decimal"
echo "result_var_boost_crypt_hasher       : "  "$result_var_boost_crypt_hasher"

echo verify result_total
echo

if [[ "$GCC" == "g++" ]]; then
result_total=$((result_var_complex+result_var_crc+result_var_fast_math+result_var_filter+result_var_fixed_point+result_var_float+result_var_hash+result_var_none+result_var_pi_agm+result_var_pi_spigot+result_var_pi_spigot_single+$result_var_soft_double_h2f1+result_var_trapezoid_integral+result_var_wide_decimal+result_var_wide_integer+result_var_boost_math_cbrt_tgamma+result_var_boost_math_cyl_bessel_j+result_var_boost_multiprecision_cbrt+result_var_hash_sha256+result_var_ecc_generic_ecc+result_var_non_std_decimal+result_ls_boost_crypt_hasher))
else
result_total=$((result_var_complex+result_var_crc+result_var_fast_math+result_var_filter+result_var_fixed_point+result_var_float+result_var_hash+result_var_none+result_var_pi_agm+result_var_pi_spigot+result_var_pi_spigot_single+$result_var_soft_double_h2f1+result_var_trapezoid_integral+result_var_wide_decimal+result_var_wide_integer+result_var_boost_math_cbrt_tgamma+result_var_boost_math_cyl_bessel_j+result_var_boost_multiprecision_cbrt+result_var_hash_sha256+result_var_non_std_decimal+result_ls_boost_crypt_hasher))
fi

echo "result_total                        : "  "$result_total"

exit $result_total
