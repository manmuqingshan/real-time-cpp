///////////////////////////////////////////////////////////////////////////////
//  Copyright Christopher Kormanyos 2007 - 2025.
//  Distributed under the Boost Software License,
//  Version 1.0. (See accompanying file LICENSE_1_0.txt
//  or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#ifndef MCAL_IRQ_2025_02_22_H
  #define MCAL_IRQ_2025_02_22_H

  namespace mcal
  {
    namespace irq
    {
      typedef void config_type;
      void init(const config_type*);

      inline void enable_all () { }
      inline void disable_all() { }
    }
  }

#endif // MCAL_IRQ_2025_02_22_H
