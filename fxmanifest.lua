fx_version 'cerulean'
games { 'rdr3', 'gta5' }

author 'Ziggy'
description 'Example resource'
version '1.0.0'

-- What to run
client_scripts {
    'dice_cl.lua'
}

server_script 'dice_sv.lua'