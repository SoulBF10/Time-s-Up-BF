-- Makes the Health Bar Act like the one used in Genocide from the VS Tabi Mod.
-- Made by ExtendedCentral (v9)

-------------------------------------------------------------------------------

local tabiHealthBar = true -- Whether you want to have Tabi Health Bar.

local drainHealth = true -- Whether you want health to drain when the opponet hits a note

local moveBar = true -- DON'T TOUCH

function onCreate()

    if tabiHealthBar then
        --Sets Boyfriends HP to 100 
        health = getProperty('health')
        setProperty('health', health+ 100);
    end

end


function onUpdate()
    if tabiHealthBar then

        --If the health bar x position is less than 343.5 we increase the x position
        --by 0.5 every frame
        if getProperty('healthBar.x') < 343.5 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0.5)
            health = getProperty('healthhealth')
            setProperty('health', health+ 100);
            tabiBarMove = false
        end

        --If the HP bar is not at the far left of the screen, we make it possible
        --to move the health bar.
        if getProperty('healthBar.x') > 50.5 then
            moveBar = true
        end

    end

    --debugPrint(getProperty('healthBar.x')) -- 343.5

end

function goodNoteHit(id, direction, noteType, isSustainNote)
    if tabiHealthBar then

        --We add a x2 to byfriends current note hit health
        health = getProperty('health')
        setProperty('health', health+ 0.026);


        -- If Boyfriends health is above 1.950 we add - 20 to the health bars x position.
        if health > 1.950 and moveBar == true then
            --debugPrint('Health Higher Than 2')
            setProperty('healthBar.x', getProperty('healthBar.x')-15)
        end

        --If the health bar ever so happens to be less than 50.5 we add 0 so it don't go
        --off screen lol
        if getProperty('healthBar.x') < 50.5 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0)
            moveBar = false
        end
		
		if getProperty('healthBar.x') > 50.5 then
            setProperty('healthBar.x', getProperty('healthBar.x')+0)
            moveBar = true
        end

    end
    
end

function noteMiss(id, direction, noteType, isSustainNote)

end


function opponentNoteHit(id, direction, noteType, isSustainNote)
    if tabiHealthBar then
		--if the health bar isnt it the original position we allow tabi to push back the heath bar
		if getProperty('healthBar.x') < 343.5 then
			--debugPrint('Health Higher Than 2')
			setProperty('healthBar.x', getProperty('healthBar.x')+15)
		end
    end
	
	if drainHealth == true and getProperty('healthBar.x') > 343.2 then
		health = getProperty('health')
		if getProperty('health') > 0.05 then
			setProperty('health', health- 0.04);
		end
	end
    
end