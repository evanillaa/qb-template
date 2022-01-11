fx_version 'cerulean'
game 'gta5'

description 'QB-Template https://github.com/evanillaa'
version '1.0.0'

-- First Template

shared_scripts {
    'config.lua',
    '@qb-core/shared/locale.lua',
    'locales/en.lua' -- Change this to your preferred language
}

server_script 'server/main.lua'
client_script 'client/main.lua'

-- Second Template

shared_script 'config.lua'
server_script 'server/main.lua'
client_script 'client/main.lua'

-- Third Template

shared_scripts {
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua'
}

client_script 'client/*.lua'

ui_page 'html/index.html'

files {
	'html/*.html',
	'html/*.js',
	'html/*.png',
	'html/*.css',
}

lua54 'yes'
