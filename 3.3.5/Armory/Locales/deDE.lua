--[[

    Please do NOT edit this file but go to http://wow.curseforge.com/addons/armory/localization/ instead.
    
    The contents of this file will be generated automatically.
    
]]--

local L = LibStub("AceLocale-3.0"):NewLocale("Armory", "deDE");
if ( not L ) then 
    return;
end

L["ARMORY_ALTS"] = "Alts" -- Requires localization
L["ARMORY_BANK_CONTAINER_NAME"] = "Bank"
L["ARMORY_BY_DATE"] = "View by date" -- Requires localization
L["ARMORY_BY_GROUP"] = "View by group" -- Requires localization
L["ARMORY_CHECK_MAIL_DISABLED"] = "Prüfe nicht auf bald ablaufende Gegenstände."
L["ARMORY_CHECK_MAIL_MESSAGE"] = "Der Posteingang von %1$s (%2$s) enthält Gegenstand '%3$s' der in %4$s ablaufen wird!"
L["ARMORY_CHECK_MAIL_NONE"] = "Es wurden keine Gegenstände im Posteingang gefunden, die bald ablaufen werden."
L["ARMORY_CHECK_MAIL_POPUP"] = [=[In Deinem Briefkasten befinden sich Gegenstände, die bald ablaufen werden. 
Gib "/ar check" ein, um weitere Details zu sehen.]=]
L["ARMORY_CMD_CHECK"] = "check" -- Requires localization
L["ARMORY_CMD_CHECK_INVALID"] = "Specify the number of days to check or none for default." -- Requires localization
L["ARMORY_CMD_CHECK_MENUTEXT"] = "Prüfe auf bald ablaufende Gegenstände"
L["ARMORY_CMD_CHECK_TEXT"] = "check inventory mailbox items for expiration" -- Requires localization
L["ARMORY_CMD_CONFIG"] = "config" -- Requires localization
L["ARMORY_CMD_CONFIG_TEXT"] = "Configurationspanel öffnen"
L["ARMORY_CMD_DELETE"] = "delete" -- Requires localization
L["ARMORY_CMD_DELETE_ALL"] = "all" -- Requires localization
L["ARMORY_CMD_DELETE_ALL_MSG"] = "Armorydatenbank wurde bereinigt."
L["ARMORY_CMD_DELETE_ALL_TEXT"] = "delete entire database" -- Requires localization
L["ARMORY_CMD_DELETE_CHAR"] = "char" -- Requires localization
L["ARMORY_CMD_DELETE_CHAR_MSG"] = "Armory-Eintrag für '%1$s' auf Realm '%2$s' wurde gelöscht."
L["ARMORY_CMD_DELETE_CHAR_NOT_FOUND"] = "Armoryeintrag für '%1$s' auf Realm '%2$s' nicht gefunden!"
L["ARMORY_CMD_DELETE_CHAR_PARAMS_TEXT"] = "[name] [realm]" -- Requires localization
L["ARMORY_CMD_DELETE_CHAR_TEXT"] = "Lösche einen Charakter"
L["ARMORY_CMD_DELETE_REALM"] = "realm" -- Requires localization
L["ARMORY_CMD_DELETE_REALM_MSG"] = "Armory Realm '%s' wurde bereinigt."
L["ARMORY_CMD_DELETE_REALM_NOT_FOUND"] = "Armory Realm '%s' nicht gefunden."
L["ARMORY_CMD_DELETE_REALM_PARAMS_TEXT"] = "[name]"
L["ARMORY_CMD_DELETE_REALM_TEXT"] = "delete all realm data" -- Requires localization
L["ARMORY_CMD_DOWNLOAD"] = "download" -- Requires localization
L["ARMORY_CMD_DOWNLOAD_TEXT"] = "Downloade Rezepte von Gildenmitgliedern"
L["ARMORY_CMD_FIND"] = "find" -- Requires localization
L["ARMORY_CMD_FIND_ACHIEVEMENT"] = "achievement" -- Requires localization
L["ARMORY_CMD_FIND_ALL"] = "alle"
L["ARMORY_CMD_FIND_FOUND"] = "Total number of occurrences: %d" -- Requires localization
L["ARMORY_CMD_FIND_INVENTORY"] = "Inventar"
L["ARMORY_CMD_FIND_ITEM"] = "item" -- Requires localization
L["ARMORY_CMD_FIND_MENUTEXT"] = "Durchsuche Datenbank"
L["ARMORY_CMD_FIND_NOT_FOUND"] = "Not found" -- Requires localization
L["ARMORY_CMD_FIND_PARAMS_TEXT"] = "[namepart]"
L["ARMORY_CMD_FIND_QUEST"] = "Quest"
L["ARMORY_CMD_FIND_QUEST_REWARD"] = "Quest Reward" -- Requires localization
L["ARMORY_CMD_FIND_SKILL"] = "skill" -- Requires localization
L["ARMORY_CMD_FIND_SPELL"] = "spell" -- Requires localization
L["ARMORY_CMD_FIND_TEXT"] = "Finde Information in der lokalen Datenbank"
L["ARMORY_CMD_HELP"] = "help" -- Requires localization
L["ARMORY_CMD_HELP_TEXT"] = "show this usage list" -- Requires localization
L["ARMORY_CMD_LOOKUP"] = "lookup" -- Requires localization
L["ARMORY_CMD_LOOKUP_MENUTEXT"] = "Lookup information" -- Requires localization
L["ARMORY_CMD_LOOKUP_TEXT"] = "Hole Informationen von anderen Spielern"
L["ARMORY_CMD_RESET"] = "reset" -- Requires localization
L["ARMORY_CMD_RESET_FRAME"] = "frames" -- Requires localization
L["ARMORY_CMD_RESET_FRAME_MENUTEXT"] = "Bildschirmpositionen zurücksetzen"
L["ARMORY_CMD_RESET_FRAME_SUCCESS"] = "frames reset" -- Requires localization
L["ARMORY_CMD_RESET_FRAME_TEXT"] = "Setze die Bildschirmposition auf die ursprüngliche zurück"
L["ARMORY_CMD_RESET_SETTINGS"] = "settings" -- Requires localization
L["ARMORY_CMD_RESET_SETTINGS_SUCCESS"] = "settings reset" -- Requires localization
L["ARMORY_CMD_RESET_SETTINGS_TEXT"] = "set all settings back to their defaults" -- Requires localization
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_MENUTEXT"] = "Check available cooldowns" -- Requires localization
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_TEXT"] = "check available cooldowns on startup" -- Requires localization
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_TOOLTIP"] = "If enabled, tradeskill cooldowns that became available while you were offline will be displayed when you log in." -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_MENUTEXT"] = "Include tradeskill cooldowns" -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_TEXT"] = "include tradeskill cooldowns in event list" -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_TOOLTIP"] = "If enabled, tradeskill cooldowns will be included in Armory's event list." -- Requires localization
L["ARMORY_CMD_SET_COUNTALL_MENUTEXT"] = "Alle Realms in Zählungen einbeziehen"
L["ARMORY_CMD_SET_COUNTALL_TEXT"] = "include item counts for all realms" -- Requires localization
L["ARMORY_CMD_SET_COUNTALL_TOOLTIP"] = "If enabled, totals are shown for all realms; otherwise only for the current realm." -- Requires localization
L["ARMORY_CMD_SET_COUNTXFACTION_MENUTEXT"] = "Include all factions in counts" -- Requires localization
L["ARMORY_CMD_SET_COUNTXFACTION_TEXT"] = "include item counts for all factions" -- Requires localization
L["ARMORY_CMD_SET_COUNTXFACTION_TOOLTIP"] = "If enabled, totals are shown for all factions; otherwise only for the current faction." -- Requires localization
L["ARMORY_CMD_SET_DEFAULTSEARCH_MENUTEXT"] = "Default search domain" -- Requires localization
L["ARMORY_CMD_SET_DEFAULTSEARCH_TEXT"] = "default domain" -- Requires localization
L["ARMORY_CMD_SET_DEFAULTSEARCH_TOOLTIP"] = "The search domain to use when none is specified." -- Requires localization
L["ARMORY_CMD_SET_EVENTLOCALTIME_MENUTEXT"] = "Use local time for events" -- Requires localization
L["ARMORY_CMD_SET_EVENTLOCALTIME_TEXT"] = "use local time in event list" -- Requires localization
L["ARMORY_CMD_SET_EVENTLOCALTIME_TOOLTIP"] = "If enabled, local time is used in the event list; otherwise the realm time." -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_MENUTEXT"] = "Event notifications" -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_TEXT"] = "enable event notifications" -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_TOOLTIP"] = "If enabled, you will be warned about confirmed events of your characters that are about to become due." -- Requires localization
L["ARMORY_CMD_SET_EXPDAYS_INVALID"] = "%1$s muss zwischen 0 (keine Warnung) und %2$d Tagen liegen!"
L["ARMORY_CMD_SET_EXPDAYS_PARAMS_TEXT"] = "numdays"
L["ARMORY_CMD_SET_EXPDAYS_TEXT"] = "warning level for inbox item expiration" -- Requires localization
L["ARMORY_CMD_SET_EXPDAYS_TOOLTIP"] = "Der Briefkasten wird auf Gegenstände geprüft, die nach x Tagen ablaufen (0 verhindert die Warnung)"
L["ARMORY_CMD_SET_EXTENDEDSEARCH_MENUTEXT"] = "Extended find" -- Requires localization
L["ARMORY_CMD_SET_EXTENDEDSEARCH_TEXT"] = "look in tooltip text for matches when using find" -- Requires localization
L["ARMORY_CMD_SET_EXTENDEDSEARCH_TOOLTIP"] = "If enabled, the find command will look in the tooltip text for matches; otherwise only the name is checked." -- Requires localization
L["ARMORY_CMD_SET_EXTENDEDTRADE_MENUTEXT"] = "Aktiviere Beruffilter"
L["ARMORY_CMD_SET_EXTENDEDTRADE_TEXT"] = "Enable subclass and slot filters" -- Requires localization
L["ARMORY_CMD_SET_EXTENDEDTRADE_TOOLTIP"] = [=[If enabled, the professions can be filtered on subclass and/or item slots.
If you experience problems with other add-ons you can disable this feature to get a simple list that doesn't trigger any events (a categorized list will be available by shift-clicking the link button).]=] -- Requires localization
L["ARMORY_CMD_SET_FILTERALL_MENUTEXT"] = "Alle Nachrichten filtern"
L["ARMORY_CMD_SET_FILTERALL_TEXT"] = "filter all Armory output" -- Requires localization
L["ARMORY_CMD_SET_FILTERALL_TOOLTIP"] = "If enabled, all output will be sent to the same chat frame (only meaningful if you use a separate chat window for Armory messages)." -- Requires localization
L["ARMORY_CMD_SET_GLOBALSEARCH_MENUTEXT"] = "Globale Suche"
L["ARMORY_CMD_SET_GLOBALSEARCH_TEXT"] = "search all realms when using the find command" -- Requires localization
L["ARMORY_CMD_SET_GLOBALSEARCH_TOOLTIP"] = "If enabled, the find command will go through the entire database; otherwise only the current realm will be searched." -- Requires localization
L["ARMORY_CMD_SET_HIDELOGON_MENUTEXT"] = "Hide warning when logging in" -- Requires localization
L["ARMORY_CMD_SET_HIDELOGON_TEXT"] = "don't show a warning when logging in" -- Requires localization
L["ARMORY_CMD_SET_HIDELOGON_TOOLTIP"] = "If enabled, the warning will not be displayed when you log in." -- Requires localization
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_MENUTEXT"] = "Hide minimap button with toolbars" -- Requires localization
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_TEXT"] = "Verstecke den Minimap-Button, wenn Titan oder FuBar gestartet ist."
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_TOOLTIP"] = "Falls aktiviert, wird der Minimap-Button automatisch versteckt wenn Titan oder FuBar geladen ist."
L["ARMORY_CMD_SET_IGNOREALTS_MENUTEXT"] = "Ignore mail from alts" -- Requires localization
L["ARMORY_CMD_SET_IGNOREALTS_TEXT"] = "Ignoriere Warnungen für Post von Twinks"
L["ARMORY_CMD_SET_IGNOREALTS_TOOLTIP"] = "Wird diese Funktion aktiviert, erscheint das Warnungsfenster nicht für ablaufende Post, die von einem eigenen Twink abgeschickt wurde (gilt nicht für zurückgesendete Post). Achtung - die Charakter müssen dem Addon bereits bekannt sein."
L["ARMORY_CMD_SET_LASTVIEWED_MENUTEXT"] = "Merke die Auswahl"
L["ARMORY_CMD_SET_LASTVIEWED_TEXT"] = "Merke den zuletzt angezeigten Charakter."
L["ARMORY_CMD_SET_LASTVIEWED_TOOLTIP"] = "Wenn aktiviert, wird der zuletzt gezeigte Charakter auch nach Abmelden aus WOW gespeichert."
L["ARMORY_CMD_SET_LDBLABEL_MENUTEXT"] = "LDB-Anzeige aktivieren"
L["ARMORY_CMD_SET_LDBLABEL_TEXT"] = "enable LibDataBroker label display" -- Requires localization
L["ARMORY_CMD_SET_LDBLABEL_TOOLTIP"] = "If enabled, a text label is shown in LibDataBroker display add-ons." -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKCOUNT_MENUTEXT"] = "Check for remaining mail" -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKCOUNT_TEXT"] = "check for remaining mail in the inbox" -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKCOUNT_TOOLTIP"] = "If enabled, a warning will be shown when not all mails were scanned because the inbox display limit has been exceeded." -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKVISIT_MENUTEXT"] = "Warn for unnoticed mail" -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKVISIT_TEXT"] = "include the last mailbox visit when checking for mail" -- Requires localization
L["ARMORY_CMD_SET_MAILCHECKVISIT_TOOLTIP"] = "If enabled, a warning will be shown when a character's mailbox hasn't been opened for at least 30 minus expiration threshold number of days and therefore may contain mail without being noticed." -- Requires localization
L["ARMORY_CMD_SET_MAILEXCLUDEVISIT_MENUTEXT"] = "Exclude this character's mailbox visit" -- Requires localization
L["ARMORY_CMD_SET_MAILEXCLUDEVISIT_TEXT"] = "don't check this character's mailbox visit" -- Requires localization
L["ARMORY_CMD_SET_MAILEXCLUDEVISIT_TOOLTIP"] = "If enabled, the current character's mailbox visit will be excluded from the check." -- Requires localization
L["ARMORY_CMD_SET_MAILHIDECOUNT_MENUTEXT"] = "Hide remaining mail scan warning" -- Requires localization
L["ARMORY_CMD_SET_MAILHIDECOUNT_TEXT"] = "don't show a warning when the mailbox is closed" -- Requires localization
L["ARMORY_CMD_SET_MAILHIDECOUNT_TOOLTIP"] = "If enabled, the warning for remaining mail will not be shown when you close the mailbox." -- Requires localization
L["ARMORY_CMD_SET_MMB_ANGLE_TEXT"] = "minimap button angle" -- Requires localization
L["ARMORY_CMD_SET_MMB_RADIUS_TEXT"] = "minimap button radius" -- Requires localization
L["ARMORY_CMD_SET_NOVALUE"] = "momentane Einstellung: %s"
L["ARMORY_CMD_SET_NOVALUE_TEXT"] = "momentane Einstellung anzeigen"
L["ARMORY_CMD_SET_OFF"] = "aus"
L["ARMORY_CMD_SET_ON"] = "on" -- Requires localization
L["ARMORY_CMD_SET_PAUSEINCOMBAT_MENUTEXT"] = "Pause in combat" -- Requires localization
L["ARMORY_CMD_SET_PAUSEINCOMBAT_TEXT"] = "do not scan when in combat" -- Requires localization
L["ARMORY_CMD_SET_PAUSEINCOMBAT_TOOLTIP"] = "If enabled Armory pauses scanning when you get into combat and resumes afterwards." -- Requires localization
L["ARMORY_CMD_SET_PAUSEININSTANCE_MENUTEXT"] = "Remain paused in instance" -- Requires localization
L["ARMORY_CMD_SET_PAUSEININSTANCE_TEXT"] = "do not resume when in an instance" -- Requires localization
L["ARMORY_CMD_SET_PAUSEININSTANCE_TOOLTIP"] = "If enabled, getting out of combat in an instance will not process any postponed updates. Be aware that in this case item counts in tooltips will not be updated either." -- Requires localization
L["ARMORY_CMD_SET_PERCHARACTER_MENUTEXT"] = "Merke pro Charakter"
L["ARMORY_CMD_SET_PERCHARACTER_TEXT"] = "remember individual settings" -- Requires localization
L["ARMORY_CMD_SET_PERCHARACTER_TOOLTIP"] = "If enabled, the 'all characters' and 'last character' values will be stored on a per-character basis." -- Requires localization
L["ARMORY_CMD_SET_SEARCHALL_MENUTEXT"] = "Remember 'all characters'" -- Requires localization
L["ARMORY_CMD_SET_SEARCHALL_TEXT"] = "remember the inventory 'all characters' setting" -- Requires localization
L["ARMORY_CMD_SET_SEARCHALL_TOOLTIP"] = "If enabled, the 'all characters' setting on the inventory list view will be stored between sessions." -- Requires localization
L["ARMORY_CMD_SET_SHAREALL_MENUTEXT"] = "Share all characters" -- Requires localization
L["ARMORY_CMD_SET_SHAREALL_TEXT"] = "share information of all your characters" -- Requires localization
L["ARMORY_CMD_SET_SHAREALL_TOOLTIP"] = "If enabled, information of all your characters is being shared; otherwise only your current character's information." -- Requires localization
L["ARMORY_CMD_SET_SHAREALT_MENUTEXT"] = "Reveal relationships" -- Requires localization
L["ARMORY_CMD_SET_SHAREALT_TEXT"] = "Reveal relationship with other characters" -- Requires localization
L["ARMORY_CMD_SET_SHAREALT_TOOLTIP"] = "If enabled, the relationship between the current character and your other characters will be visible (e.g. shown as alt). Disabling makes it a 'stand-alone' character." -- Requires localization
L["ARMORY_CMD_SET_SHARECHANNEL_MENUTEXT"] = "enable lookup channel" -- Requires localization
L["ARMORY_CMD_SET_SHARECHANNEL_TEXT"] = "Enable custom channel" -- Requires localization
L["ARMORY_CMD_SET_SHARECHANNEL_TOOLTIP"] = "If enabled, lookup requests can be sent through the provided channel which you can share with a specific group of players." -- Requires localization
L["ARMORY_CMD_SET_SHARECHARACTER_MENUTEXT"] = "Share character info" -- Requires localization
L["ARMORY_CMD_SET_SHARECHARACTER_TEXT"] = "share your character info" -- Requires localization
L["ARMORY_CMD_SET_SHARECHARACTER_TOOLTIP"] = "If enabled, other Armory users can inspect your equipment and talents." -- Requires localization
L["ARMORY_CMD_SET_SHAREGUILD_MENUTEXT"] = "Share guild characters" -- Requires localization
L["ARMORY_CMD_SET_SHAREGUILD_TEXT"] = "share information of guild characters" -- Requires localization
L["ARMORY_CMD_SET_SHAREGUILD_TOOLTIP"] = "If enabled, information of characters within the same guild is being shared." -- Requires localization
L["ARMORY_CMD_SET_SHAREINCOMBAT_MENUTEXT"] = "Share in combat" -- Requires localization
L["ARMORY_CMD_SET_SHAREINCOMBAT_TEXT"] = "share while in combat" -- Requires localization
L["ARMORY_CMD_SET_SHAREINCOMBAT_TOOLTIP"] = "If enabled, you will repond to queries while you are in combat. Disabling may improve performance." -- Requires localization
L["ARMORY_CMD_SET_SHAREININSTANCE_MENUTEXT"] = "Share in instance" -- Requires localization
L["ARMORY_CMD_SET_SHAREININSTANCE_TEXT"] = "share while in instance" -- Requires localization
L["ARMORY_CMD_SET_SHAREININSTANCE_TOOLTIP"] = "If enabled, you will repond to queries while you are in an instance. Disabling may improve performance." -- Requires localization
L["ARMORY_CMD_SET_SHAREQUESTS_MENUTEXT"] = "Share quests" -- Requires localization
L["ARMORY_CMD_SET_SHAREQUESTS_TEXT"] = "share your quests" -- Requires localization
L["ARMORY_CMD_SET_SHAREQUESTS_TOOLTIP"] = "If enabled, other Armory users can search your quests." -- Requires localization
L["ARMORY_CMD_SET_SHARESKILLS_MENUTEXT"] = "Share professions" -- Requires localization
L["ARMORY_CMD_SET_SHARESKILLS_TEXT"] = "share your profession recipes" -- Requires localization
L["ARMORY_CMD_SET_SHARESKILLS_TOOLTIP"] = "If enabled, other Armory users can search your recipes." -- Requires localization
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_MENUTEXT"] = "Show achievements in links" -- Requires localization
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_TEXT"] = "show characters in linked achievements" -- Requires localization
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_TOOLTIP"] = "If enabled, characters that earned or are in progress with the achievement linked in the chat frame are added to its tooltip." -- Requires localization
L["ARMORY_CMD_SET_SHOWALTEQUIP_MENUTEXT"] = "Show alternative equipment" -- Requires localization
L["ARMORY_CMD_SET_SHOWALTEQUIP_TEXT"] = "show alternative equipment slots" -- Requires localization
L["ARMORY_CMD_SET_SHOWALTEQUIP_TOOLTIP"] = "If enabled, the paperdoll will show other inventory items that may fit the equipment slot." -- Requires localization
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_MENUTEXT"] = "Show item count totals" -- Requires localization
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_TEXT"] = "include item count totals" -- Requires localization
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_TOOLTIP"] = "If enabled a gand total will be added to the item counts." -- Requires localization
L["ARMORY_CMD_SET_SHOWCRAFTERS_MENUTEXT"] = "Show crafters in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWCRAFTERS_TEXT"] = "show crafters in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWCRAFTERS_TOOLTIP"] = "If enabled, item tooltips will show which character can craft that item." -- Requires localization
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_MENUTEXT"] = "Show comparison tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_TEXT"] = "show equipment comparison tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_TOOLTIP"] = "If enabled, comparison toolips will be shown when the Alt key is pressed while an equipment game tooltip is visible." -- Requires localization
L["ARMORY_CMD_SET_SHOWGEARSETS_MENUTEXT"] = "Show gear sets in tooltip" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEARSETS_TEXT"] = "show equipment set names in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEARSETS_TOOLTIP"] = "If enabled and equipment belongs to a gear set, the name of the set will be shown in its tooltip." -- Requires localization
L["ARMORY_CMD_SET_SHOWGEMS_MENUTEXT"] = "Show gemming details" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEMS_TEXT"] = "show socket gemming details in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEMS_TOOLTIP"] = "If enabled, the color of the socket and the name of the gem will be added to the item tooltip." -- Requires localization
L["ARMORY_CMD_SET_SHOWITEMCOUNT_MENUTEXT"] = "Show tooltip item counts" -- Requires localization
L["ARMORY_CMD_SET_SHOWITEMCOUNT_TEXT"] = "show item counts in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWITEMCOUNT_TOOLTIP"] = "If enabled, item tooltips will show owned totals per character." -- Requires localization
L["ARMORY_CMD_SET_SHOWMINIMAP_MENUTEXT"] = "Show minimap button" -- Requires localization
L["ARMORY_CMD_SET_SHOWMINIMAP_TEXT"] = "show minimap button" -- Requires localization
L["ARMORY_CMD_SET_SHOWMINIMAP_TOOLTIP"] = "If enabled, an easy access button is attached to the minimap." -- Requires localization
L["ARMORY_CMD_SET_SHOWMMGLOBAL_MENUTEXT"] = "minimap button for all" -- Requires localization
L["ARMORY_CMD_SET_SHOWMMGLOBAL_TEXT"] = "Show minimap button for all characters" -- Requires localization
L["ARMORY_CMD_SET_SHOWMMGLOBAL_TOOLTIP"] = "If enabled a minimap button will be shown for all characters. If not, you'll have to enable the minimap button for each character individually." -- Requires localization
L["ARMORY_CMD_SET_SHOWQUESTALTS_MENUTEXT"] = "Show alts in linked quests" -- Requires localization
L["ARMORY_CMD_SET_SHOWQUESTALTS_TEXT"] = "show characters in linked quests" -- Requires localization
L["ARMORY_CMD_SET_SHOWQUESTALTS_TOOLTIP"] = "If enabled, characters that are on the quest linked in the chat frame are added to its tooltip." -- Requires localization
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_MENUTEXT"] = "Show known recipes in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_TEXT"] = "show known recipes in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_TOOLTIP"] = "If enabled, recipe tooltips will show which character already knows the recipe." -- Requires localization
L["ARMORY_CMD_SET_SHOWSHAREMSG_MENUTEXT"] = "Show share messages" -- Requires localization
L["ARMORY_CMD_SET_SHOWSHAREMSG_TEXT"] = "show data sharing messages" -- Requires localization
L["ARMORY_CMD_SET_SHOWSHAREMSG_TOOLTIP"] = "If enabled, messages will be written to the chat frame that provide information about data sharing events." -- Requires localization
L["ARMORY_CMD_SET_SHOWSUMMARY_MENUTEXT"] = "Summary sheet" -- Requires localization
L["ARMORY_CMD_SET_SHOWSUMMARY_TEXT"] = "show summary sheet" -- Requires localization
L["ARMORY_CMD_SET_SHOWSUMMARY_TOOLTIP"] = "If enabled a character summary sheet will be show when hovering over the minimap or LDB button." -- Requires localization
L["ARMORY_CMD_SET_SHOWUNEQUIP_MENUTEXT"] = "Show unequippable alternatives" -- Requires localization
L["ARMORY_CMD_SET_SHOWUNEQUIP_TEXT"] = "show unequippable alternatives" -- Requires localization
L["ARMORY_CMD_SET_SHOWUNEQUIP_TOOLTIP"] = "If enabled, all inventory items that will fit the slot will be shown regardless of prerequisites." -- Requires localization
L["ARMORY_CMD_SET_SUCCESS"] = "%1$s set to %2$s" -- Requires localization
L["ARMORY_CMD_SET_SUMMARYDELAY_TEXT"] = "Popup Delay" -- Requires localization
L["ARMORY_CMD_SET_SUMMARYDELAY_TOOLTIP"] = "Adjust the delay at which the summary will be shown." -- Requires localization
L["ARMORY_CMD_SET_USEENCODING_MENUTEXT"] = "Prefer memory over CPU" -- Requires localization
L["ARMORY_CMD_SET_USEENCODING_TEXT"] = "prefer memory usage over processing speed" -- Requires localization
L["ARMORY_CMD_SET_USEENCODING_TOOLTIP"] = "If enabled, data will will stored in a binary encoded format taking up less memory but using more CPU for storage and retrieval." -- Requires localization
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_MENUTEXT"] = "Use different color for 'in progress'" -- Requires localization
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_TEXT"] = "colorize 'in progress' differently" -- Requires localization
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_TOOLTIP"] = "If enabled, a different color will be used for achievements still in progress by a character." -- Requires localization
L["ARMORY_CMD_SET_WINDOWSEARCH_MENUTEXT"] = "Show find results in window" -- Requires localization
L["ARMORY_CMD_SET_WINDOWSEARCH_TEXT"] = "show find command results in a dedicated window" -- Requires localization
L["ARMORY_CMD_SET_WINDOWSEARCH_TOOLTIP"] = "If enabled, the results of the find command will be presented in a separate window; otherwise the results are shown in the chat window." -- Requires localization
L["ARMORY_CMD_TOGGLE"] = "toggle Armory on or off" -- Requires localization
L["ARMORY_CMD_USAGE"] = "Usage:" -- Requires localization
L["ARMORY_COOLDOWN_AVAILABLE"] = "Cooldown of '%1$s' is available again for %2$s (%3$s)." -- Requires localization
L["ARMORY_COOLDOWN_WARNING"] = "%s in %d |4minute:minutes;" -- Requires localization
L["ARMORY_CRAFTABLE_BY"] = "Craftable by" -- Requires localization
L["ARMORY_DB_INCOMPATIBLE"] = [=[The database is not compatible with this version of Armory and will be cleared.
You need to enter the world with every character to rebuild the database.]=] -- Requires localization
L["ARMORY_DELETE_UNIT"] = "Do you want to remove %s from the database?" -- Requires localization
L["ARMORY_DELETE_UNIT_HINT"] = "Right-click to delete." -- Requires localization
L["ARMORY_EQUIPMENT"] = "Equipment" -- Requires localization
L["ARMORY_EQUIPPED"] = "Equipped" -- Requires localization
L["ARMORY_ERROR"] = "ERROR" -- Requires localization
L["ARMORY_EVENT_WARNING"] = "%s starts in %d |4minute:minutes;" -- Requires localization
L["ARMORY_EXPIRATION_LABEL"] = "Expiration" -- Requires localization
L["ARMORY_EXPIRATION_SUBTEXT"] = "These options allow you to change the behavior of the mail expiration check." -- Requires localization
L["ARMORY_EXPIRATION_TITLE"] = "Mail Expiration" -- Requires localization
L["ARMORY_EXTENDED"] = "Extended" -- Requires localization
L["ARMORY_FILTER_ALL"] = "Select all" -- Requires localization
L["ARMORY_FILTER_CLEAR"] = "Clear selection" -- Requires localization
L["ARMORY_FILTER_DISABLE"] = "Disable filters" -- Requires localization
L["ARMORY_FILTER_ENABLE"] = "Enable filters" -- Requires localization
L["ARMORY_FILTER_LABEL"] = "Filters: %s" -- Requires localization
L["ARMORY_FILTER_TOOLTIP"] = "Click to access the global item filters." -- Requires localization
L["ARMORY_FIND_BUTTON"] = "Find" -- Requires localization
L["ARMORY_FIND_LABEL"] = "Find" -- Requires localization
L["ARMORY_FIND_SUBTEXT"] = "These options allow you to change the behavior of the find command." -- Requires localization
L["ARMORY_FIND_TITLE"] = "Search Database" -- Requires localization
L["ARMORY_FONT_COLOR"] = "Font color" -- Requires localization
L["ARMORY_FULLY_RESTED"] = "Fully rested in: %s" -- Requires localization
L["ARMORY_GLOBAL"] = "Global" -- Requires localization
L["ARMORY_IGNORE_REASON_COMBAT"] = "sharing disabled while in combat" -- Requires localization
L["ARMORY_IGNORE_REASON_INSTANCE"] = "sharing disabled while in instance" -- Requires localization
L["ARMORY_IGNORE_REASON_SHARING"] = "sharing disabled" -- Requires localization
L["ARMORY_IGNORE_REASON_VERSION"] = "unsupported protocol version" -- Requires localization
L["ARMORY_INFO"] = "INFO" -- Requires localization
L["ARMORY_INVENTORY_BAGLAYOUT"] = "Use bag layout" -- Requires localization
L["ARMORY_INVENTORY_BAGLAYOUT_TOOLTIP"] = "Show containers in accordance with the actual layout." -- Requires localization
L["ARMORY_INVENTORY_ICONVIEW"] = "Icon view" -- Requires localization
L["ARMORY_INVENTORY_ICONVIEW_TOOLTIP"] = "Standard view" -- Requires localization
L["ARMORY_INVENTORY_LISTVIEW"] = "List view" -- Requires localization
L["ARMORY_INVENTORY_LISTVIEW_TOOLTIP"] = "Advanced view" -- Requires localization
L["ARMORY_INVENTORY_SEARCH_ALL"] = "All characters" -- Requires localization
L["ARMORY_INVENTORY_SEARCH_ALL_TOOLTIP"] = "Select all inventory items of all characters in the database." -- Requires localization
L["ARMORY_INVENTORY_SEARCH_TEXT_TOOLTIP"] = [=[Enter your filter criterion.

Note that you can filter on quality by entering '=' followed by %s, %s, %s, %s, %s, %s, %s or %s or their respective numeric identifier 0-7 (e.g. '=4' for epic items).]=] -- Requires localization
L["ARMORY_KNOWN_BY"] = "Known by" -- Requires localization
L["ARMORY_LINK_HINT"] = "Shift-Klick zum verlinken"
L["ARMORY_LINK_TRADESKILL_TOOLTIP"] = "Shift-click opens your profession." -- Requires localization
L["ARMORY_LOOKUP_BUTTON"] = "Lookup" -- Requires localization
L["ARMORY_LOOKUP_CHARACTER"] = "Lookup character" -- Requires localization
L["ARMORY_LOOKUP_CHARACTER_SEARCH_TOOLTIP"] = [=[Enter your filter criterion.

Note that this can also be the name of someone's alt.]=] -- Requires localization
L["ARMORY_LOOKUP_DETAIL"] = "Click for details" -- Requires localization
L["ARMORY_LOOKUP_DISABLED"] = "Data sharing is disabled." -- Requires localization
L["ARMORY_LOOKUP_IGNORED"] = "Request ignored (reason: %s)" -- Requires localization
L["ARMORY_LOOKUP_NODETAIL"] = "No details available" -- Requires localization
L["ARMORY_LOOKUP_PLAYER_HINT"] = [=[Shift-click for player info
Right-click to whisper]=] -- Requires localization
L["ARMORY_LOOKUP_QUEST"] = "Lookup quests" -- Requires localization
L["ARMORY_LOOKUP_QUEST_AREA"] = "Quest area" -- Requires localization
L["ARMORY_LOOKUP_QUEST_NAME"] = "Quest name" -- Requires localization
L["ARMORY_LOOKUP_QUEST_SEARCH_TOOLTIP"] = [=[Enter your filter criterion.

Note that you also request for characters having quests in a certain area by selecting the corresponding option in the dropdown.]=] -- Requires localization
L["ARMORY_LOOKUP_REALM_ALIAS"] = "Looked up" -- Requires localization
L["ARMORY_LOOKUP_REQUEST_DETAIL"] = "Requested data: %s" -- Requires localization
L["ARMORY_LOOKUP_REQUEST_RECEIVED"] = "Data sharing request received from %s" -- Requires localization
L["ARMORY_LOOKUP_REQUEST_SENT"] = "Request sent to %s" -- Requires localization
L["ARMORY_LOOKUP_RESPONSE_RECEIVED"] = "Data received from %s" -- Requires localization
L["ARMORY_LOOKUP_RESPONSE_SENT"] = "Response sent to %s" -- Requires localization
L["ARMORY_LOOKUP_SEARCH_EXACT"] = "Exact match" -- Requires localization
L["ARMORY_LOOKUP_SKILL"] = "Lookup recipes" -- Requires localization
L["ARMORY_LOOKUP_SKILL_SEARCH_TOOLTIP"] = [=[Enter your filter criterion.

Character names returned can be clicked to access their skill window.
Note that you can request a full recipe list by entering just an asterisk (*).]=] -- Requires localization
L["ARMORY_MAIL_COUNT_WARNING1"] = "The inbox still contains %d |4mail:mails; that couldn't be scanned." -- Requires localization
L["ARMORY_MAIL_COUNT_WARNING2"] = "%1$s (%2$s) has %d |4mail:mails; that couldn't be scanned." -- Requires localization
L["ARMORY_MAIL_ITEM_COUNT"] = "Number of items:" -- Requires localization
L["ARMORY_MAIL_LAST_VISIT"] = "Last visit:" -- Requires localization
L["ARMORY_MAIL_REMAINING"] = "Mail remaining:" -- Requires localization
L["ARMORY_MAIL_VISIT_WARNING"] = "%1$s (%2$s) hasn't visited the mailbox for %3$s. Please log in to check your inbox." -- Requires localization
L["ARMORY_MESSAGE_FILTER"] = "Message Filter" -- Requires localization
L["ARMORY_MINIMAP_LABEL"] = "Minimap" -- Requires localization
L["ARMORY_MINIMAP_SUBTEXT"] = "These options control the display of the minimap button." -- Requires localization
L["ARMORY_MINIMAP_TITLE"] = "Armory Minimap Button" -- Requires localization
L["ARMORY_MISC_LABEL"] = "Miscellaneous" -- Requires localization
L["ARMORY_MISC_SUBTEXT"] = "These options allow you to change various settings." -- Requires localization
L["ARMORY_MISC_TITLE"] = "Miscellaneous Options" -- Requires localization
L["ARMORY_MODULES_LABEL"] = "Modules" -- Requires localization
L["ARMORY_MODULES_SUBTEXT"] = "These options allow you to select which modules should be active." -- Requires localization
L["ARMORY_MODULES_TITLE"] = "Armory Modules" -- Requires localization
L["ARMORY_MONEY_TOTAL"] = "%1$s %2$s total:" -- Requires localization
L["ARMORY_OPEN_HINT"] = "Klick zum öffnen"
L["ARMORY_QUEST_TOOLTIP_LABEL"] = "Alts on this quest:" -- Requires localization
L["ARMORY_REPUTATION_SUMMARY"] = "%1$s - %2$s (%3$d/%4$d, %5$d left)" -- Requires localization
L["ARMORY_SEARCHING"] = "Searching..." -- Requires localization
L["ARMORY_SELECT_UNIT_HINT"] = "Links-Klick um diesen Charakter auszuwählen."
L["ARMORY_SHARE_DOWNLOAD_LOADERROR"] = "Could not load %1$s; reason: %2$s" -- Requires localization
L["ARMORY_SHARE_LABEL"] = "Sharing" -- Requires localization
L["ARMORY_SHARE_SUBTEXT1"] = "These options define how you share your data with other Armory users. Note that these settings are on a per-character basis." -- Requires localization
L["ARMORY_SHARE_SUBTEXT2"] = "The following options are set at a global level." -- Requires localization
L["ARMORY_SHARE_TITLE"] = "Data Sharing" -- Requires localization
L["ARMORY_SHORTDATE_FORMAT"] = "ARMORY_SHORTDATE_FORMAT"
L["ARMORY_SLASH_ALTERNATIVES"] = "/ar"
L["ARMORY_SOCIAL_ADD_TOOLTIP"] = "Shift-Klick um deine aktuelle Liste hinzuzufügen."
L["ARMORY_SUBTEXT"] = "These options allow you to modify Armory's behavior." -- Requires localization
L["ARMORY_SUMMARY_LABEL"] = "Summary" -- Requires localization
L["ARMORY_SUMMARY_SUBTEXT1"] = "These options allow you to change Armory's character summary sheet." -- Requires localization
L["ARMORY_SUMMARY_SUBTEXT2"] = "Select the information to show." -- Requires localization
L["ARMORY_SUMMARY_TITLE"] = "Summary Options" -- Requires localization
L["ARMORY_TALENTS"] = "TALENT SPECIALIZATION:" -- Requires localization
L["ARMORY_TOOLTIP1"] = "Character:" -- Requires localization
L["ARMORY_TOOLTIP2"] = "Realm:" -- Requires localization
L["ARMORY_TOOLTIP_HINT1"] = "Left-click toggles Armory" -- Requires localization
L["ARMORY_TOOLTIP_HINT2"] = "Right-click for options" -- Requires localization
L["ARMORY_TOOLTIP_LABEL"] = "Tooltip" -- Requires localization
L["ARMORY_TOOLTIP_SUBTEXT"] = "These options allow you to add information to tooltips." -- Requires localization
L["ARMORY_TOOLTIP_TITLE"] = "Tooltip Enhancement" -- Requires localization
L["ARMORY_TOTAL"] = "Total: %d" -- Requires localization
L["ARMORY_TRADE_ALCHEMY"] = "Alchemy" -- Requires localization
L["ARMORY_TRADE_BLACKSMITHING"] = "Blacksmithing" -- Requires localization
L["ARMORY_TRADE_COOKING"] = "Cooking" -- Requires localization
L["ARMORY_TRADE_ENCHANTING"] = "Enchanting" -- Requires localization
L["ARMORY_TRADE_ENGINEERING"] = "Engineering" -- Requires localization
L["ARMORY_TRADE_FIRST_AID"] = "First Aid" -- Requires localization
L["ARMORY_TRADE_FISHING"] = "Fishing" -- Requires localization
L["ARMORY_TRADE_HERBALISM"] = "Herbalism" -- Requires localization
L["ARMORY_TRADE_INSCRIPTION"] = "Inscription" -- Requires localization
L["ARMORY_TRADE_JEWELCRAFTING"] = "Jewelcrafting" -- Requires localization
L["ARMORY_TRADE_LEATHERWORKING"] = "Leatherworking" -- Requires localization
L["ARMORY_TRADE_MINING"] = "Mining" -- Requires localization
L["ARMORY_TRADE_POISONS"] = "Poisons" -- Requires localization
L["ARMORY_TRADE_SKILLS"] = "PRIMARY PROFESSIONS:" -- Requires localization
L["ARMORY_TRADESKILL_SEARCH_TEXT_TOOLTIP"] = [=[Enter your filter criterion.

Note that you can also enter for example '10', '~10' or '10-20' to filter on recipe level.]=] -- Requires localization
L["ARMORY_TRADE_SKINNING"] = "Skinning" -- Requires localization
L["ARMORY_TRADE_TAILORING"] = "Tailoring" -- Requires localization
L["ARMORY_TRADE_UPDATE_WARNING"] = "Profession data not saved. Please use the close button to trigger an update." -- Requires localization
L["ARMORY_UPDATE_SUSPENDED"] = "suspended" -- Requires localization
L["ARMORY_WARNING"] = "WARNING" -- Requires localization
L["ARMORY_WHAT"] = "What" -- Requires localization
L["ARMORY_WHERE"] = "Where" -- Requires localization
L["ARMORY_WHO"] = "Who" -- Requires localization
L["ARMORY_XP_SUMMARY"] = "Level %1$d (%2$s) %3$d XP to go, %4$s rested" -- Requires localization
L["BINDING_NAME_ARMORY_TOGGLE"] = "Toggle Armory" -- Requires localization
L["BINDING_NAME_CURRENT_CHARACTER"] = "Select current character" -- Requires localization
L["BINDING_NAME_FIND"] = "Toggle database search" -- Requires localization
L["BINDING_NAME_LOOKUP"] = "Toggle lookup" -- Requires localization
L["BINDING_NAME_NEXT_CHARACTER"] = "Select next character" -- Requires localization
L["BINDING_NAME_PREVIOUS_CHARACTER"] = "Select previous character" -- Requires localization

