Hack Cooperative Multitasking
=============================

Instead of pre-emptive multitasking, Hack supports cooperative multitasking, allowing functions to execute asynchronously from their caller. Such functions can are most often needed, for example, to hide I/O latency.

.. todo:: Provide an practical example showing the syntax of async functions

These functions must be prefixed with  the **async** keyword.


For an excellent explanation of pre-emptive multitasking, see `Pre-emptive Multitasking <https://brennan.io/2020/02/08/sos-preemptive-multitasking/>`_.
