FontFunctions = {}
local CurrentFont = "ChatFont"

function FontFunctions.SetActiveFont(font)
	CurrentFont = font
end

function FontFunctions.GetWide(text, font)
	CurrentFont = font or CurrentFont
	surface.SetFont(CurrentFont)

	return (surface.GetTextSize(text))
end

function FontFunctions.GetTall(text, font)
	CurrentFont = font or CurrentFont
	surface.SetFont(CurrentFont)
	local _, h = surface.GetTextSize(text)

	return h
end

function FontFunctions.GetSize(text, font)
	CurrentFont = font or CurrentFont
	surface.SetFont(CurrentFont)
	return surface.GetTextSize(text)
end

function FontFunctions.GetDesiredHeight(text, width, font)
	CurrentFont = font or CurrentFont

	return width * FontFunctions.GetTall(text) / FontFunctions.GetWide(text)
end