# My RRF Settings for the E3D ToolChanger
* Uses macros to perform repeated tasks like parking the head
* Uses the RRF Filament management system to simplify slicing
* Most settings handled by RRF, so your slicer just needs M0 in the Stop gcode, nothing in start, etc.
* Toolchange assumes the slicer will send a `G10` then `T#` then a `G11` afterwards.