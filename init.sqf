tf_same_sw_frequencies_for_side = true;
tf_no_auto_long_range_radio = true;

0 fadeRadio 0;
enableRadio false;
enableSentences false;

// Add objects to zeus
if (isServer) then {
    {
        _x addCuratorEditableObjects [allUnits,true];
        _x addCuratorEditableObjects [vehicles,true];
    } forEach allCurators;            
};



waitUntil {time > 0};
enableEnvironment [false, true];

