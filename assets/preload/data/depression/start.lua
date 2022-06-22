local allowCountdown = false

function onStartCountdown()
	if  not allowCountdown then
		runTimer('startText', 0.9);
		allowCountdown = true;
		startCountdown();
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startText' then
		makeLuaSprite('backgroundLtR', 'backgroundLtR', 0, 0);
		setObjectCamera('backgroundLtR', 'hud');
		addLuaSprite('backgroundLtR', true);
		makeLuaSprite('text', 'TextDepression', -1100, 0);
		setObjectCamera('text', 'hud');
		addLuaSprite('text', true);
		runTimer('appear', 0.6, 1);
		runTimer('fadeout', 1.9, 1);
	elseif tag == 'appear' then
		doTweenX('texttween', 'text', 0, 0.5, 'linear');
	elseif tag == 'fadeout' then
		doTweenAlpha('textfade', 'text', 0, 1, 'linear');
		doTweenAlpha('blackfade', 'backgroundLtR', 0, 1, 'linear');
	end
end