function onCreate()


	-- Whitback
   	makeAnimatedLuaSprite('stageback','tha_swag_wal', -870, -360)
    	addAnimationByPrefix('stageback','tha_swag_wal','wal style change',24,true);
    	objectPlayAnimation('stageback','tha_swag_wal',false);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);

   	makeAnimatedLuaSprite('stagefront','tha_cool_groun', -600, -350)
    	addAnimationByPrefix('stagefront','tha_cool_groun','flo style change',24,true);
    	objectPlayAnimation('stagefront','tha_cool_groun',false);
	setLuaSpriteScrollFactor('stagefront', 1.0, 1.0);

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	

end