.. Logging Errors talk documentation master file, created by
   sphinx-quickstart2 on Tue Oct  2 11:13:27 2012.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

================
 Error handling
================

*Chuck Norris methods don't catch exceptions because no one has the
guts to throw any at them*


Exceptions
==========


Logging module
==============

- Handler
- Formatter
- Logger
- Filter

.. add a graphviz graph

.. digraph:: logging
   
     log -> logger
     logger_handler -> root_logger
     log -> filter
     filter -> root_logger [label="yes"]
     filter -> discarded [label="no"]

