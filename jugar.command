#!/bin/bash
# Mac: doble clic para jugar Map Theft Auto en tu computador. Cierra esta ventana para apagarlo.
cd "$(dirname "$0")"
PORT=8642
echo ""
echo "  MAP THEFT AUTO corriendo en http://localhost:$PORT/"
echo "  Deja esta ventana abierta mientras juegas."
echo ""
(sleep 1; open "http://localhost:$PORT/") &
python3 -m http.server $PORT >/dev/null 2>&1
