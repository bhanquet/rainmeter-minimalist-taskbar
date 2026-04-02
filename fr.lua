function Initialize()
end

function Update()
    local dayName   = SKIN:GetMeasure('MeasureRawDay'):GetStringValue()
    local dayNum    = SKIN:GetMeasure('MeasureRawDate'):GetStringValue()
    local monthName = SKIN:GetMeasure('MeasureRawMonth'):GetStringValue()
    local year      = SKIN:GetMeasure('MeasureRawYear'):GetStringValue()

    local days = {
        ["Monday"]    = "lundi",
        ["Tuesday"]   = "mardi",
        ["Wednesday"] = "mercredi",
        ["Thursday"]  = "jeudi",
        ["Friday"]    = "vendredi",
        ["Saturday"]  = "samedi",
        ["Sunday"]    = "dimanche"
    }

    local months = {
        ["January"]   = "janvier",
        ["February"]  = "février",
        ["March"]     = "mars",
        ["April"]     = "avril",
        ["May"]       = "mai",
        ["June"]      = "juin",
        ["July"]      = "juillet",
        ["August"]    = "août",
        ["September"] = "septembre",
        ["October"]   = "octobre",
        ["November"]  = "novembre",
        ["December"]  = "décembre"
    }

    local frDay   = days[dayName] or dayName
    local frMonth = months[monthName] or monthName

    SKIN:Bang('!SetVariable', 'DateFR', frDay .. ' ' .. dayNum .. ' ' .. frMonth .. ' ' .. year)
end
