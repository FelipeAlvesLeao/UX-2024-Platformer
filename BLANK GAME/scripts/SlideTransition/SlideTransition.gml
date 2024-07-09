///@arg Mode 
function slide_transition(_mode,_target)
{
          with(TransitionObject)
          {
                    mode = _mode;
					if(argument_count > 1) _target = argument[1];
                    target = _target;
          }
}