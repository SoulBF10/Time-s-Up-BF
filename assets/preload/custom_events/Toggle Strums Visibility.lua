
function onEvent(n,v1,v2)

	if n == 'Toggle Strums Visibility' then
		strum = tonumber(v1)
		strumset = 'opponentStrums'

		if strum > 3 then
			strumset = 'playerStrums'
		end
		
		strum = tonumber(v1) % 4

		setPropertyFromGroup(strumset,strum,'visible',v2 == '1')
	end

end


function split (inputstr, sep)
        if sep == nil then
                sep = "%s"
        end
        local t={}
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
                table.insert(t, str)
        end
        return t
end
