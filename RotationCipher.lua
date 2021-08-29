local RotationCipher = {}



function RotationCipher:Lower(Input)
	return Input:lower() == Input and ("a"):byte() or ("A"):byte()
end

function RotationCipher:Apply(Input, Offset)
	return Input:gsub("%a", function(Letter)
		local Original = RotationCipher:Lower(Letter)
		return string.char((Letter:byte() - Original + Offset) % 26 + Original)
	end)
end



return RotationCipher
