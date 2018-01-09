# ([C++](Cpp.md)) ![Qt](PicQt.png) [Qt class design](CppQtClassDesign.md)

[Qt class design](CppQtClassDesign.md) is the correct design of [Qt classes](CppQtClass.md).

[Qt class design](CppQtClassDesign.md) should follow [general class design](CppClassDesign.md).


 * Derive from QWidget [1]
 * If you need custom Signal Slots, add Q_OBJECT [1]
 * Check if the widget already exists [2]
 * Pick the right base class [2]
 * Decide on composite or draw [3]
 * Decide which signals to emit [3]
 * Decide carefully on types of signal parameters [3]
 * Decide on publishing internal states [4]
 * Decide which setter methods should be slots [4]
 * Decide on allowing subclassing [4]
 * Decide on parameters at construction time [5]
 * Keep the Qt convention [5]

## [References](CppReferences.md)

 * [1] Qt Training: Widgets (part 3/3): Guidelines for Custom Widgets: Torsten Rahn, by basysKom [YouTube](https://youtu.be/bGTJ63w_Csc?t=51s)
 * [2] Qt Training: Widgets (part 3/3): Guidelines for Custom Widgets: Torsten Rahn, by basysKom [YouTube](https://youtu.be/bGTJ63w_Csc?t=1m59s)
 * [3] Qt Training: Widgets (part 3/3): Guidelines for Custom Widgets: Torsten Rahn, by basysKom [YouTube](https://youtu.be/bGTJ63w_Csc?t=2m55s)
 * [4] Qt Training: Widgets (part 3/3): Guidelines for Custom Widgets: Torsten Rahn, by basysKom [YouTube](https://youtu.be/bGTJ63w_Csc?t=4m23s)
 * [5] Qt Training: Widgets (part 3/3): Guidelines for Custom Widgets: Torsten Rahn, by basysKom [YouTube](https://youtu.be/bGTJ63w_Csc?t=5m14s)



