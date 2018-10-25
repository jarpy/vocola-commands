# Voice commands for slack

switchToAllUnreads() := SendKeys({ctrl+shift+a});

Leave channel = /leave{enter}{enter};
Mark (channel) read = {esc} switchToAllUnreads();
Mark all read = {shift+esc} switchToAllUnreads();
(show) all unreads = switchToAllUnreads() {enter};
