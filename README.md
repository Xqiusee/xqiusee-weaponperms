# Inkflow WeaponsPerms Script
A simple but powerful weapon restriction system for FiveM servers, developed by **Inkflow Studios**.

---

## Discord Support
Join our community for support, updates, and more:  
[https://discord.gg/KTwVA8AEMK](https://discord.gg/KTwVA8AEMK)

---

## Description
This **WeaponsPerms** script allows server administrators to restrict access to specific weapons within their FiveM server. Perfect for enforcing role-based loadouts, server rules, or enhancing realism.

---

## Dependencies
This resource requires [ox_lib](https://github.com/overextended/ox_lib/releases) to function. Make sure it's installed and started before this script.

---

## Usage
To restrict specific weapons, follow these steps:

1. Open `shared/config.lua`.
2. Add weapons you want to restrict using their hash keys.

You can find weapon hash keys here:  
[https://docs.fivem.net/docs/game-references/weapon-models/](https://docs.fivem.net/docs/game-references/weapon-models/)

---

## Configuration Example

```lua
-- shared/config.lua

RestrictedWeapons = {
    [`WEAPON_RPG`] = {
        ace = "weapon.rpg",
        denyMessage = "^1You are not authorized to use the RPG."
    },
    [`WEAPON_MINIGUN`] = {
        ace = "weapon.minigun",
        denyMessage = "^1You are not authorized to use the Minigun."
    },
}
