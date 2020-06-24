Welcome to Sphinx Docs
======================

This cookie cutter repo can be used to create an easy to host flat-file
documentation. Add your docs to the `docs` folder and update `index.rst`
accordingly.

On this landing page you can reference other pages like this
`Introduction <docs/001-Introduction.html>`_.

A sub title
-----------

Add some ancillary information here maybe.


A sub-sub title 1
^^^^^^^^^^^^^^^^^

Add some more ancillary information here maybe.


A sub-sub title 2
^^^^^^^^^^^^^^^^^

Add some more ancillary information here maybe.


Getting updates
^^^^^^^^^^^^^^^

For more information scooch over to the `GitHub repository`_.

.. _GitHub repository: https://github.com/davecharles/sphinxdocs

.. toctree::
   :maxdepth: 1
   :caption: Introduction

   docs/001-Introduction.md
   docs/002-The-Meat-and-Two-Veg.md
   docs/003-The-Juicy-Final-Act.md
   docs/004-The-Finale.md

.. _section_1:
   
.. toctree::
   :maxdepth: 2
   :caption: Section 1 Part 1

   docs/011-Section-1-intro.md
   docs/012-Section-1-middle.md
   docs/013-Section-1-end.md


.. toctree::
   :maxdepth: 2
   :caption:  Section 1 Part 2

   docs/014-Section-1-1-intro.md
   docs/015-Section-1-1-middle.md
   docs/016-Section-1-1-end.md

.. _section_2:

.. toctree::
   :maxdepth: 2
   :caption: Section 2

   docs/021-Section-2-intro.md
   docs/022-Section-2-middle.md
   docs/023-Section-2-end.md

.. _section_3:

.. toctree::
   :maxdepth: 2
   :caption: Section 3

   docs/031-Section-3-intro.md
   docs/032-Section-3-middle.md
   docs/033-Section-3-end.md

.. _appendices:

.. toctree::
   :maxdepth: 2
   :caption: Appendices

   docs/appendices/Appendix-A-Some-Code.md
   docs/appendices/Appendix-B-Some-Infra-Diags.md
   docs/appendices/Glossary.md
