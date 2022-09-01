local angleshit = 1;
local anglevar = 1;
function onCreate()
	makeAnimatedLuaSprite('bg','BallisticWall',-570.15, -285.45)
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	addAnimationByPrefix('bg','BallisticWall','Background Whitty Moving',24,true);
	addLuaSprite('bg',false)
	
	makeAnimatedLuaSprite('bgg','BallisticFloor',-570.15, -285.45)
	setLuaSpriteScrollFactor('bgg', 1, 0.95);
	addAnimationByPrefix('bgg','BallisticFloor','Background Whitty Moving',24,true);
	addLuaSprite('bgg',false)

end
