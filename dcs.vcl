# Voice commands for dcs

press(keys) := SendSystemKeys($keys);

(landing gear|gear up|gear down|wheels up|wheels down) = press(l);

(cockpit|pilot|forward) view = press({F1});
(outside|external) view = press({F2});
press space = press({space});

eject eject eject = press({ctrl+e}) Wait(200) press({ctrl+e}) Wait(200) press({ctrl+e});

map view = SendSystemKeys({F10});

abort takeoff = press({F3});

(open|start) (comms|communications|radio) = press(\);
(cancel|abort) (comms|communications|radio) = press({F12});
