Hack Cooperative Multitasking
=============================

Instead of pre-emptive multitasking, Hack supports cooperative multitasking, allowing functions to execute asynchronously from their caller. Such functions can are most often needed, for example, to hide I/O latency.

.. todo:: Provide an practical example showing the syntax of async functions

These functions must be prefixed with  the **async** keyword.

Articles on Multitasking:

* `Pre-emptive Multitasking <https://brennan.io/2020/02/08/sos-preemptive-multitasking/>`_.
* `Async - Cooperative Multitasking for Hack <https://hhvm.com/blog/7091/async-cooperative-multitasking-for-hack>`_.
