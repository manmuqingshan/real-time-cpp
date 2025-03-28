///////////////////////////////////////////////////////////////////////////////
//  Copyright Christopher Kormanyos 2007 - 2025.
//  Distributed under the Boost Software License,
//  Version 1.0. (See accompanying file LICENSE_1_0.txt
//  or copy at http://www.boost.org/LICENSE_1_0.txt)
//

#ifndef MCAL_WDG_2025_02_22_H
  #define MCAL_WDG_2025_02_22_H

  extern "C" void __my_startup() __attribute__((section(".startup"), used, noinline));

  namespace sys { namespace idle { void task_func(); } }

  namespace mcal
  {
    namespace wdg
    {
      typedef void config_type;

      void init(const config_type*);

      class secure final
      {
        static void trigger();

        friend void ::sys::idle::task_func();
        friend void ::__my_startup();
      };
    }
  }

#endif // MCAL_WDG_2025_02_22_H
