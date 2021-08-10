Hack Cooperative Multitasking
=============================

.. todo:: Introduction multitasking--both pre-emptive and cooperative

Free Articles:

* GeekforGeeks **Operating Systems** articles series:
   * `Difference between Multiprogramming, Multitasking, Multithreading and Multiprocessing <https://www.geeksforgeeks.org/difference-between-multitasking-multithreading-and-multiprocessing/>`_
   * `Process Management Section <https://www.geeksforgeeks.org/introduction-of-process-management/>`_.
* Krivalar Tutorials: **Operating System - Kernel, Scheduling and More**:
   * `https://www.krivalar.com/OS-CPU-scheduling <https://www.krivalar.com/OS-CPU-scheduling>`_.

   Memory Model-Related: 

   * `.text .data .bss heap stack and Where in memory are stored variables of C program <https://ggirjau.com/text-data-bss-heap-stack-and-where-in-memory-are-stored-variables-of-c-program/>`_
   * `Memory Management: Stack and Heap <https://icarus.cs.weber.edu/~dab/cs1410/textbook/4.Pointers/memory.html>`_
* `Process Threads and Sychronization <http://www.zrzahid.com/process-threads-and-synchronization/>`_.
* `Operating System Concepts [900 page PDF] <https://docs.google.com/viewer?a=v&pid=sites&srcid=ZGVmYXVsdGRvbWFpbnxtYWhhcmFzaW00MnxneDo1NzIwYmJjYWQzMDRlMTI2>`_
* `Operating System [Succinct; from  Online Study of Computer Science Eng.] <http://onlinecse.com/operating-system-context-switch/>`_.
* `Operatering System Processes <https://cps.cse.uconn.edu/wp-content/uploads/sites/2687/2019/09/ch3.pdf>`_.
* `Process Scheduling (in context of OSes) <https://www.baeldung.com/cs/process-scheduling>`_.

Instead of pre-emptive multitasking, Hack supports cooperative multitasking, allowing functions to execute asynchronously freeing the main calling code to do other things. When you call, for example, 

.. code-block:: php

    $zuck = file_get_contents("https://graph.facebook.com/4");

execution is paused while network packets cross the internet, query a database for an answer, and come back. Database queries can cause simliar I/O latency.  

.. todo:: Provide an practical example showing the syntax of async functions

These functions must be prefixed with  the **async** keyword.

Articles on Multitasking:

* `Async - Cooperative Multitasking for Hack <https://hhvm.com/blog/7091/async-cooperative-multitasking-for-hack>`_.
