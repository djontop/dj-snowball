# Christmas Snowball Script for FiveM

This is a fun and simple script for FiveM that allows players to receive snowballs during the Christmas season. It adds a playful touch to your server, enabling players to throw snowballs when the weather is Christmas-themed. The script supports both **OX Inventory** and **QB Inventory**, making it compatible with most server setups.

## Features
- **Snowball Pickup**: Players can pick up snowballs when the weather is Christmas-themed (`XMAS`).
- **Animations**: Includes a snowball pickup animation for added realism.
- **Supports Both Inventories**: Compatible with **OX Inventory** and **QB Inventory**.
- **Customizable Messages**: Provides humorous messages if the weather isn't snowy, with language support for **English** and **Hindi**.
  
## Installation

1. **Download the script** from this repository.
2. Add the folder to your `resources/[qb]` folder on your FiveM server.
3. Ensure that the script is started in your `server.cfg` by adding the following line:
   ```plaintext
   start [dj-snowball]
   ```

## Configuration

- **Language**: You can set the language for troll messages in the `Config.lua` file by changing the `Language` variable. Options available are:
  - `"English"`
  - `"Hindi"`

- **Number of Snowballs**: The number of snowballs a player gets when they pick one up can be configured in the `Config.lua` file:
  - Modify `Snowballs` to change the quantity (default is 2).

## Usage

1. Once installed and configured, players can use the `/snowball` command to check if the weather is Christmas-themed.
2. If the weather is `XMAS`, players will receive snowballs.
3. If the weather is not snowy, a fun troll message will appear in the chosen language.

## Commands

- `/snowball`: Players can use this command to pick up a snowball during the Christmas season.

## Compatibility

- **OX Inventory** and **QB Inventory** are both supported for item management.

## Requirements

- **FiveM** server running `QBCore` framework.
- **OX Inventory** or **QB Inventory** (depending on your server setup).


### Example Troll Messages:

**English**:
- "Where's the snow? Bring snow first! ❄️😂"
- "No snow and you want a snowball? Dream big! ☃️🤣"

**Hindi**:
- "Bhai, snow kaha hai? Pehle snow leke aao! ❄️😂"
- "Snow hai nahi aur snowball chahiye? Dream big! ☃️🤣"

