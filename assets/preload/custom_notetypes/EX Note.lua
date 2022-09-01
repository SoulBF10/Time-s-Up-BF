function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'EX Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'nevada/notes/EX Note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashDisabled', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'EX Note' then
		setProperty('health', -1);
		playSound('ex_death', 0.8);
		setPropertyFromClass('GameOverSubstate', 'characterName', 'bfsigndeath');
		setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'tikygameOver'); --put in mods/music/
		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'tikygameOverEnd'); --put in mods/music/
	end
end