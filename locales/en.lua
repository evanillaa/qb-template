local Translations = {
    error = {
        ["errormsg"] = "Template 1",
    },
    success = {
		["successmsg"] = "Template 2",
	},
    info = {
		["infomsg"] = "Template 3",
	},
    general = {
		["generalmsg"] = "Template 4",
    }
    warning = {
		["warningmsg"] = "Template 5",
	},
    menu = {
        ["menumsg"] = "Template 6",
    }
}

Lang = Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
