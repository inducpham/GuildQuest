----------------------------------------------------------------------
-- this file hold the state engine, which hold the current engine
-- and pass on the game loop
----------------------------------------------------------------------

state = {};

function state.setCurrentState ( currentState )
    state.lastState = state.currentState;
    state.currentState = currentState;
end

function state.update( dt )
    state.currentState.update( dt );
end

function state.draw()
    state.currentState.draw()
end
