============
Haiku Cursor
============

A port of of haiku cursor as a xcursor theme, using haiku-icons repo

--------
Building
--------

You will need ``ImageMagick`` and ``xcursorgen``. Just run:

.. code-block:: sh

   ./build.sh

This will build the cursor theme into the ``dist/`` directory, from which you can
run the following to install it in ``$HOME/.local/share/icons``:

.. code-block:: sh

   cp -r dist/ $HOME/.local/share/icons/Haiku_Cursor

The name for the cursor theme should be ``Haiku_Cursor``.
