///////////////////////////////////////////////////////////////////////////////
//  Copyright Christopher Kormanyos 2007 - 2024.
//  Distributed under the Boost Software License,
//  Version 1.0. (See accompanying file LICENSE_1_0.txt
//  or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#ifndef UTIL_TWO_PART_DATA_MANIPULATION_2010_06_13_H
  #define UTIL_TWO_PART_DATA_MANIPULATION_2010_06_13_H

  #include <util/utility/util_utype_helper.h>

  #include <limits>

  namespace util
  {
    template<typename unsigned_short_type,
             typename unsigned_long_type = typename util::utype_helper<static_cast<unsigned>(std::numeric_limits<unsigned_short_type>::digits * 2)>::exact_type>
    inline constexpr auto make_long(unsigned_short_type lo, unsigned_short_type hi) -> unsigned_long_type
    {
      // Ensure that the unsigned_short_type is an integer type.
      static_assert(std::numeric_limits<unsigned_short_type>::is_integer,
                    "the unsigned_short_type of the make_long template must be an integer type");

      // Ensure that the unsigned_long_type is an integer type.
      static_assert(std::numeric_limits<unsigned_long_type>::is_integer,
                    "the unsigned_long_type of the make_long template must be an integer type.");

      // Ensure that the unsigned_long_type has exactly twice the digits as the unsigned_short_type.
      static_assert((std::numeric_limits<unsigned_short_type>::digits * 2) == std::numeric_limits<unsigned_long_type>::digits,
                    "the unsigned_long_type of the make_long template must be twice as wide as the unsigned_short_type");

      // Ensure that the unsigned_short_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_short_type>::is_signed),
                    "the unsigned_short_type of the make_long template must be unsigned");

      // Ensure that the unsigned_long_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_long_type>::is_signed),
                    "the unsigned_long_type of the make_long template must be unsigned.");

      return static_cast<unsigned_long_type>(static_cast<unsigned_long_type>(static_cast<unsigned_long_type>(hi) << std::numeric_limits<unsigned_short_type>::digits) | lo);
    }

    template<typename unsigned_short_type,
             typename unsigned_long_type = typename util::utype_helper<static_cast<unsigned>(std::numeric_limits<unsigned_short_type>::digits * 2)>::exact_type>
    inline constexpr auto lo_part(unsigned_long_type val) -> unsigned_short_type
    {
      // Ensure that the unsigned_short_type is an integer type.
      static_assert(std::numeric_limits<unsigned_short_type>::is_integer,
                    "the unsigned_short_type of the make_long template must be an integer type");

      // Ensure that the unsigned_long_type is an integer type.
      static_assert(std::numeric_limits<unsigned_long_type>::is_integer,
                    "the unsigned_long_type of the make_long template must be an integer type.");

      // Ensure that the unsigned_long_type has exactly twice the digits as the unsigned_short_type.
      static_assert((std::numeric_limits<unsigned_short_type>::digits * 2) == std::numeric_limits<unsigned_long_type>::digits,
                    "the unsigned_long_type of the lo_part template must be twice as wide as the unsigned_short_type");

      // Ensure that the unsigned_short_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_short_type>::is_signed),
                    "the unsigned_short_type of the lo_part template must be unsigned");

      // Ensure that the unsigned_long_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_long_type>::is_signed),
                    "the long type of the lo_part template must be unsigned");

      return static_cast<unsigned_short_type>(val);
    }

    template<typename unsigned_short_type,
             typename unsigned_long_type = typename util::utype_helper<static_cast<unsigned>(std::numeric_limits<unsigned_short_type>::digits * 2)>::exact_type>
    inline constexpr auto hi_part(unsigned_long_type val) -> unsigned_short_type
    {
      // Ensure that the unsigned_short_type is an integer type.
      static_assert(std::numeric_limits<unsigned_short_type>::is_integer,
                    "the unsigned_short_type of the make_long template must be an integer type");

      // Ensure that the unsigned_long_type is an integer type.
      static_assert(std::numeric_limits<unsigned_long_type>::is_integer,
                    "the unsigned_long_type of the make_long template must be an integer type.");

      // Ensure that the unsigned_long_type has exactly twice the digits as the unsigned_short_type.
      static_assert((std::numeric_limits<unsigned_short_type>::digits * 2) == std::numeric_limits<unsigned_long_type>::digits,
                    "the unsigned_long_type of the hi_part template must be twice as wide as the unsigned_short_type");

      // Ensure that the unsigned_short_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_short_type>::is_signed),
                    "the unsigned_short_type of the hi_part template must be unsigned");

      // Ensure that the unsigned_long_type is unsigned.
      static_assert((!std::numeric_limits<unsigned_long_type>::is_signed),
                    "the unsigned_long_type of the hi_part template must be unsigned");

      return static_cast<unsigned_short_type>(val >> std::numeric_limits<unsigned_short_type>::digits);
    }
  }

#endif // UTIL_TWO_PART_DATA_MANIPULATION_2010_06_13_H
