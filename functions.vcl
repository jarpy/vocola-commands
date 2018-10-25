# Universal functions.

meta(keys) := SendKeys({alt+$keys});
alt(keys) := SendKeys({alt+$keys});
ctrl(keys) := SendKeys({ctrl+$keys});
shift(keys) := SendKeys({shift+$keys});

win(keys) := SendSystemKeys({win+$keys});
ctrlAltShift(keys) := SendSystemKeys({ctrl+alt+shift+$keys});

<number_word> := (zero|one|two|three|four|five|six|seven|eight|nine);
