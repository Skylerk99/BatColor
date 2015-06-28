//Pre IOS 8.3

%hook UIStatusBarNewUIForegroundStyleAttributes

-(id) _batteryColorForCapacity:(double)arg1 lowCapacity:(double)arg2 charging:(bool)arg3 
	{
	return[UIColor purpleColor];
   	}
%end



// IOS 8.3

%hook UIStatusBarForegroundStyleAttributes

-(id) _batteryColorForCapacity:(float)arg1 lowCapacity:(float)arg2 charging:(bool)arg3 
	{
	return[UIColor purpleColor];
   	}
%end
