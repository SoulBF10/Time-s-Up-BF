--UPDATE CHECK

curver = 0;
function onCreate()

bit = string.gsub(version,"%.","")
curver = tonumber(bit)
end
function onStartCountdown()

	if curver < 51 then
	debugPrint("YOU PSYCH ENGINE BUILD ("..version..") IS OUTDATED!!!")
	debugPrint("UPDATE TO THE LATEST PSYCH ENGINE BUILD (0.5.1)")
	return Function_Stop;
	end

end