fx_version 'cerulean'
game 'gta5'
lua54 'yes'

author 'Sentex Studios / plugfivem'
description 'Weapon Permission System with ACE Permissions'
version '1.0.0'

shared_script {
    '@ox_lib/init.lua',
    'shared/config.lua'
}

client_script {
    'client/client.lua'
}

server_script {
    'server/server.lua'
}

dependencies {
    "ox_lib"
}

escrow_ignore {
    'shared/config.lua',
    'README.md'
}
