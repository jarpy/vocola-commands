# Universal functions.

meta(keys) := SendKeys({alt+$keys});
alt(keys) := SendKeys({alt+$keys});
ctrl(keys) := SendKeys({ctrl+$keys});

win(keys) := SendSystemKeys({win+$keys});
ctrlAltShift(keys) := SendSystemKeys({ctrl+alt+shift+$keys});
