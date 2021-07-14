Hack Cooperative Multitasking
=============================

Hack does not support pre-emptive multitasking, but it does supports cooperative multitasking by allowing functions, which must be prefixed with  the **async** keyword, to run asynchronously from their caller. Such functions are most often needed to hide I/O latency.


For an excellent explanation of pre-emptive multitasking, see `Pre-emptive Multitasking <https://brennan.io/2020/02/08/sos-preemptive-multitasking/>`_.
