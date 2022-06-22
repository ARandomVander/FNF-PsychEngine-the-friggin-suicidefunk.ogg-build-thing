function onCreate()
	makeAnimatedLuaSprite('shader','shader',0,0)addAnimationByPrefix('shader','dance','shader please help me',24,true)
	setLuaSpriteScrollFactor('shader',160,10)
	addLuaSprite('shader',true)
	setObjectCamera('shader','hud')
	objectPlayAnimation('shader','dance',false)
	setScrollFactor('shader', 0.9, 0.9);
	scaleObject('shader', 1, 1);

	makeLuaSprite('sadstreetback', 'sadstreetback', -600, -692);
	setScrollFactor('sadstreetback', 0.1, 0.1);
	makeLuaSprite('sadstreetfront', 'sadstreetfront', -580, -300);
	setScrollFactor('backgroundsadmousefront', 0.6, 0.6);

	addLuaSprite('sadstreetback', false);
	addLuaSprite('sadstreetfront', false);
	close(true);
end