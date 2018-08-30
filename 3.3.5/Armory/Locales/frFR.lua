--[[

    Please do NOT edit this file but go to http://wow.curseforge.com/addons/armory/localization/ instead.
    
    The contents of this file will be generated automatically.

]]--

local L = LibStub("AceLocale-3.0"):NewLocale("Armory", "frFR");
if ( not L ) then 
    return;
end

L["ARMORY_ALTS"] = "Alts"
L["ARMORY_BANK_CONTAINER_NAME"] = "Banque"
L["ARMORY_BY_DATE"] = "View by date" -- Requires localization
L["ARMORY_BY_GROUP"] = "View by group" -- Requires localization
L["ARMORY_CHECK_MAIL_DISABLED"] = "La vérification de l'expiration du courrier est désactivée."
L["ARMORY_CHECK_MAIL_MESSAGE"] = "La boîte aux lettres de %1$s (%2$s) contient l'objet '%3$s' qui expirera dans %4$s !"
L["ARMORY_CHECK_MAIL_NONE"] = "Aucun courrier prêt à expiré n'a été trouvé."
L["ARMORY_CHECK_MAIL_POPUP"] = "Il y a du courrier prêt à expirer. Utilisez '/ar check' pour plus de détails."
L["ARMORY_CMD_CHECK"] = "check"
L["ARMORY_CMD_CHECK_INVALID"] = "Précisez le nombre de jours pour vérifier ou pas par défaut."
L["ARMORY_CMD_CHECK_MENUTEXT"] = "Vérifier l'expiration des objets"
L["ARMORY_CMD_CHECK_TEXT"] = "Vérifier l'expiration des objets de la boîte aux lettres"
L["ARMORY_CMD_CONFIG"] = "config"
L["ARMORY_CMD_CONFIG_TEXT"] = "Ouvrir le panneau de configuration"
L["ARMORY_CMD_DELETE"] = "delete"
L["ARMORY_CMD_DELETE_ALL"] = "all"
L["ARMORY_CMD_DELETE_ALL_MSG"] = "La base de données d'Armory a été nettoyée."
L["ARMORY_CMD_DELETE_ALL_TEXT"] = "Supprimer la base de données entière"
L["ARMORY_CMD_DELETE_CHAR"] = "char"
L["ARMORY_CMD_DELETE_CHAR_MSG"] = "L'enregistrement de \"%1$s\" sur le royaume \"%2$s\" a été supprimé d'Armory."
L["ARMORY_CMD_DELETE_CHAR_NOT_FOUND"] = "L'entrée d'Armory pour '%1$s' sur le royaume '%2$s' n'a pas été trouvée!"
L["ARMORY_CMD_DELETE_CHAR_PARAMS_TEXT"] = "[nom] [royaume]"
L["ARMORY_CMD_DELETE_CHAR_TEXT"] = "Supprimer un personnage"
L["ARMORY_CMD_DELETE_REALM"] = "realm"
L["ARMORY_CMD_DELETE_REALM_MSG"] = "Le royaume '%s' d'Armory a été nettoyé."
L["ARMORY_CMD_DELETE_REALM_NOT_FOUND"] = "Royaume \"%s\" introuvable dans Armory !"
L["ARMORY_CMD_DELETE_REALM_PARAMS_TEXT"] = "[nom]"
L["ARMORY_CMD_DELETE_REALM_TEXT"] = "Effacer les données de tous les royaumes"
L["ARMORY_CMD_DOWNLOAD"] = "download"
L["ARMORY_CMD_DOWNLOAD_TEXT"] = "Télécharger les recettes des membres de la guilde"
L["ARMORY_CMD_FIND"] = "find"
L["ARMORY_CMD_FIND_ACHIEVEMENT"] = "achievement" -- Requires localization
L["ARMORY_CMD_FIND_ALL"] = "Tout"
L["ARMORY_CMD_FIND_FOUND"] = "Nombre d'occurrences total : %d"
L["ARMORY_CMD_FIND_INVENTORY"] = "Inventaire"
L["ARMORY_CMD_FIND_ITEM"] = "item"
L["ARMORY_CMD_FIND_MENUTEXT"] = "Rechercher dans la base de données"
L["ARMORY_CMD_FIND_NOT_FOUND"] = "Introuvable"
L["ARMORY_CMD_FIND_PARAMS_TEXT"] = "[partie_de_nom]"
L["ARMORY_CMD_FIND_QUEST"] = "Quête"
L["ARMORY_CMD_FIND_QUEST_REWARD"] = "Récompense de quête"
L["ARMORY_CMD_FIND_SKILL"] = "skill"
L["ARMORY_CMD_FIND_SPELL"] = "spell"
L["ARMORY_CMD_FIND_TEXT"] = "Trouver l'information dans la base de données locale"
L["ARMORY_CMD_HELP"] = "help"
L["ARMORY_CMD_HELP_TEXT"] = "Affiche cette liste de commandes"
L["ARMORY_CMD_LOOKUP"] = "lookup"
L["ARMORY_CMD_LOOKUP_MENUTEXT"] = "Recherche d'information"
L["ARMORY_CMD_LOOKUP_TEXT"] = "Examiner les données d'autres joueurs"
L["ARMORY_CMD_RESET"] = "reset"
L["ARMORY_CMD_RESET_FRAME"] = "frames"
L["ARMORY_CMD_RESET_FRAME_MENUTEXT"] = "Réinitialiser les positions à l'écran"
L["ARMORY_CMD_RESET_FRAME_SUCCESS"] = "Fenêtres réinitialisées"
L["ARMORY_CMD_RESET_FRAME_TEXT"] = "configurer les positions à l'écran dans leur état d'origine"
L["ARMORY_CMD_RESET_SETTINGS"] = "settings"
L["ARMORY_CMD_RESET_SETTINGS_SUCCESS"] = "Paramètres réinitialisés"
L["ARMORY_CMD_RESET_SETTINGS_TEXT"] = "Réinitialiser tous les paramètres"
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_MENUTEXT"] = "Check available cooldowns" -- Requires localization
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_TEXT"] = "check available cooldowns on startup" -- Requires localization
L["ARMORY_CMD_SET_CHECKCOOLDOWNS_TOOLTIP"] = "If enabled, tradeskill cooldowns that became available while you were offline will be displayed when you log in." -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_MENUTEXT"] = "Include tradeskill cooldowns" -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_TEXT"] = "include tradeskill cooldowns in event list" -- Requires localization
L["ARMORY_CMD_SET_COOLDOWNEVENTS_TOOLTIP"] = "If enabled, tradeskill cooldowns will be included in Armory's event list." -- Requires localization
L["ARMORY_CMD_SET_COUNTALL_MENUTEXT"] = "Prendre en compte tous les royaumes"
L["ARMORY_CMD_SET_COUNTALL_TEXT"] = "Totalise les objets sur tous les royaumes"
L["ARMORY_CMD_SET_COUNTALL_TOOLTIP"] = "Si activé, les totaux sont affichés pour tous les royaumes, sinon seulement pour le royaume courant."
L["ARMORY_CMD_SET_COUNTXFACTION_MENUTEXT"] = "Include all factions in counts" -- Requires localization
L["ARMORY_CMD_SET_COUNTXFACTION_TEXT"] = "include item counts for all factions" -- Requires localization
L["ARMORY_CMD_SET_COUNTXFACTION_TOOLTIP"] = "If enabled, totals are shown for all factions; otherwise only for the current faction." -- Requires localization
L["ARMORY_CMD_SET_DEFAULTSEARCH_MENUTEXT"] = "Étendue de recherche par défaut"
L["ARMORY_CMD_SET_DEFAULTSEARCH_TEXT"] = "Étendue par défaut"
L["ARMORY_CMD_SET_DEFAULTSEARCH_TOOLTIP"] = "Étendue à utiliser pour la recherche lorsque rien n'est spécifié."
L["ARMORY_CMD_SET_EVENTLOCALTIME_MENUTEXT"] = "Use local time for events" -- Requires localization
L["ARMORY_CMD_SET_EVENTLOCALTIME_TEXT"] = "use local time in event list" -- Requires localization
L["ARMORY_CMD_SET_EVENTLOCALTIME_TOOLTIP"] = "If enabled, local time is used in the event list; otherwise the realm time." -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_MENUTEXT"] = "Event notifications" -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_TEXT"] = "enable event notifications" -- Requires localization
L["ARMORY_CMD_SET_EVENTWARNINGS_TOOLTIP"] = "If enabled, you will be warned about confirmed events of your characters that are about to become due." -- Requires localization
L["ARMORY_CMD_SET_EXPDAYS_INVALID"] = "%1$s devrait être entre 0 (pas d'alarme) et %2$d jours!"
L["ARMORY_CMD_SET_EXPDAYS_PARAMS_TEXT"] = "nombre_de_jours"
L["ARMORY_CMD_SET_EXPDAYS_TEXT"] = "Niveau de l'alerte pour l'expiration des courriers"
L["ARMORY_CMD_SET_EXPDAYS_TOOLTIP"] = "Vérifie dans la boîte à lettres les courriers qui expireront dans l'intervalle de jours donné (0 désactive cette alarme)."
L["ARMORY_CMD_SET_EXTENDEDSEARCH_MENUTEXT"] = "Recherche étendue"
L["ARMORY_CMD_SET_EXTENDEDSEARCH_TEXT"] = "Examiner le texte des infobulles pour les recherches"
L["ARMORY_CMD_SET_EXTENDEDSEARCH_TOOLTIP"] = "Si activé, la commande de recherche examinera le texte des infobulles pour y trouver des occurences ; autrement seul le nom est analysé."
L["ARMORY_CMD_SET_EXTENDEDTRADE_MENUTEXT"] = "Activer les filtres des métiers"
L["ARMORY_CMD_SET_EXTENDEDTRADE_TEXT"] = "Active les filtres de sous-catégorie et d'emplacement"
L["ARMORY_CMD_SET_EXTENDEDTRADE_TOOLTIP"] = [=[Si activé, les professions peuvent être filtrées par sous-classe et/ou emplacement.
Si vous rencontrez des interférences avec d'autres add-ons vous pouvez désactiver cette fonction pour n'avoir qu'une simple liste ne déclenchant aucune action (une liste catégorisée est disponible en Maj.-cliquant le bouton).]=]
L["ARMORY_CMD_SET_FILTERALL_MENUTEXT"] = "Filtrer tous les messages"
L["ARMORY_CMD_SET_FILTERALL_TEXT"] = "Filtrer toutes les sorties d'Armory"
L["ARMORY_CMD_SET_FILTERALL_TOOLTIP"] = "Si activé, toute sortie sera envoyée à la même fenêtre de discussion (seulement utile si vous utilisez une fenêtre de discussion particulière pour les messages d'Armory)."
L["ARMORY_CMD_SET_GLOBALSEARCH_MENUTEXT"] = "Recherche globale"
L["ARMORY_CMD_SET_GLOBALSEARCH_TEXT"] = "Examine tous les royaumes avec la commande Rechercher"
L["ARMORY_CMD_SET_GLOBALSEARCH_TOOLTIP"] = "Si activé, la fonction de recherche explore toute la base de données, sinon seul le royaume courant est examiné."
L["ARMORY_CMD_SET_HIDELOGON_MENUTEXT"] = "Hide warning when logging in" -- Requires localization
L["ARMORY_CMD_SET_HIDELOGON_TEXT"] = "don't show a warning when logging in" -- Requires localization
L["ARMORY_CMD_SET_HIDELOGON_TOOLTIP"] = "If enabled, the warning will not be displayed when you log in." -- Requires localization
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_MENUTEXT"] = "Cacher le bouton de la minimap avec les barres d'outils"
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_TEXT"] = "Cacher le bouton de la mini-carte lorsque Titan/FuBar est chargé"
L["ARMORY_CMD_SET_HIDEMMTOOLBAR_TOOLTIP"] = "Si activé, le bouton de la mini-carte sera automatiquement caché lorsque Titan ou FuBar seront chargés."
L["ARMORY_CMD_SET_IGNOREALTS_MENUTEXT"] = "Ignorer le courrier des Alts"
L["ARMORY_CMD_SET_IGNOREALTS_TEXT"] = "Ignorer les alertes pour les courriers envoyés par les alts"
L["ARMORY_CMD_SET_IGNOREALTS_TOOLTIP"] = "Si activé, la fenêtre d'alerte ne sera pas affichée pour les courriers expirants envoyés (pas renvoyés) par l'un de vos autres personnages. Notez que ces personnages doivent être connus par Armory pour que cela fonctionne."
L["ARMORY_CMD_SET_LASTVIEWED_MENUTEXT"] = "Enregistrer la sélection"
L["ARMORY_CMD_SET_LASTVIEWED_TEXT"] = "Enregistre quel a été le dernier personnage affiché"
L["ARMORY_CMD_SET_LASTVIEWED_TOOLTIP"] = "Si activé, le dernier personnage affiché sera enregistré d'une session à l'autre."
L["ARMORY_CMD_SET_LDBLABEL_MENUTEXT"] = "Activer les étiquettes LDB"
L["ARMORY_CMD_SET_LDBLABEL_TEXT"] = "Activer l'affichage des étiquettes LibDataBroker"
L["ARMORY_CMD_SET_LDBLABEL_TOOLTIP"] = "Si activé, une étiquette textuelle est affichée dans les add-ons utilisant LibDataBroker."
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
L["ARMORY_CMD_SET_MMB_ANGLE_TEXT"] = "Position du bouton autour de la mini-carte"
L["ARMORY_CMD_SET_MMB_RADIUS_TEXT"] = "Éloignement du bouton à la mini-carte"
L["ARMORY_CMD_SET_NOVALUE"] = "Réglage courant : %s"
L["ARMORY_CMD_SET_NOVALUE_TEXT"] = "Affiche le réglage courant"
L["ARMORY_CMD_SET_OFF"] = "off"
L["ARMORY_CMD_SET_ON"] = "On"
L["ARMORY_CMD_SET_PAUSEINCOMBAT_MENUTEXT"] = "Suspendre lors des combats"
L["ARMORY_CMD_SET_PAUSEINCOMBAT_TEXT"] = "Ne pas analyser pendant les combats"
L["ARMORY_CMD_SET_PAUSEINCOMBAT_TOOLTIP"] = "Si activé, Armory suspend son analyse quand vous entrez en combat et reprend ensuite."
L["ARMORY_CMD_SET_PAUSEININSTANCE_MENUTEXT"] = "Remain paused in instance" -- Requires localization
L["ARMORY_CMD_SET_PAUSEININSTANCE_TEXT"] = "do not resume when in an instance" -- Requires localization
L["ARMORY_CMD_SET_PAUSEININSTANCE_TOOLTIP"] = "If enabled, getting out of combat in an instance will not process any postponed updates. Be aware that in this case item counts in tooltips will not be updated either." -- Requires localization
L["ARMORY_CMD_SET_PERCHARACTER_MENUTEXT"] = "Enregistrer pour chaque personnage"
L["ARMORY_CMD_SET_PERCHARACTER_TEXT"] = "Enregistre les réglages pour chaque personnage individuellement"
L["ARMORY_CMD_SET_PERCHARACTER_TOOLTIP"] = "Si activé, les valeurs \"Tous les personnages\" et \"Dernier personnage\" seront enregistrées séparément pour chaque personnage."
L["ARMORY_CMD_SET_SEARCHALL_MENUTEXT"] = "Enregistre \"Tous les personnages\""
L["ARMORY_CMD_SET_SEARCHALL_TEXT"] = "Enregistre le réglage \"Tous les personnages\" de l'inventaire"
L["ARMORY_CMD_SET_SEARCHALL_TOOLTIP"] = "Si activé, le réglage \"Tous les personnages\" de la liste d'inventaire sera enregistré d'une session à l'autre."
L["ARMORY_CMD_SET_SHAREALL_MENUTEXT"] = "Partager tous les personnages"
L["ARMORY_CMD_SET_SHAREALL_TEXT"] = "Partager les données de tous vos personnages"
L["ARMORY_CMD_SET_SHAREALL_TOOLTIP"] = "Si activé, les informations de tous vos personnages sont partagées ; autrement seulement celles de votre personnage courant le sont."
L["ARMORY_CMD_SET_SHAREALT_MENUTEXT"] = "Montrer les relations"
L["ARMORY_CMD_SET_SHAREALT_TEXT"] = "Montre les relations avec les autres personnages"
L["ARMORY_CMD_SET_SHAREALT_TOOLTIP"] = "Si activé, les relations entre le personnage courant et vos autres personnages seront visible (c. à d. indiqué comme Alt). Désactivé fait apparaître le personnage comme \"solitaire\"."
L["ARMORY_CMD_SET_SHARECHANNEL_MENUTEXT"] = "enable lookup channel" -- Requires localization
L["ARMORY_CMD_SET_SHARECHANNEL_TEXT"] = "Enable custom channel" -- Requires localization
L["ARMORY_CMD_SET_SHARECHANNEL_TOOLTIP"] = "If enabled, lookup requests can be sent through the provided channel which you can share with a specific group of players." -- Requires localization
L["ARMORY_CMD_SET_SHARECHARACTER_MENUTEXT"] = "Partager ce personnage"
L["ARMORY_CMD_SET_SHARECHARACTER_TEXT"] = "Partage les informations de votre personnage"
L["ARMORY_CMD_SET_SHARECHARACTER_TOOLTIP"] = "Si activé, les autres utilisateurs d'Armory peuvent examiner votre équipement et vos talents."
L["ARMORY_CMD_SET_SHAREGUILD_MENUTEXT"] = "Partager les personnages de la guilde"
L["ARMORY_CMD_SET_SHAREGUILD_TEXT"] = "Partager les données des personnages de la même guilde"
L["ARMORY_CMD_SET_SHAREGUILD_TOOLTIP"] = "Si activé, les informations des personnages membre de la même guilde sont partagées"
L["ARMORY_CMD_SET_SHAREINCOMBAT_MENUTEXT"] = "Partager en combat"
L["ARMORY_CMD_SET_SHAREINCOMBAT_TEXT"] = "Partage les informations même pendant les combats"
L["ARMORY_CMD_SET_SHAREINCOMBAT_TOOLTIP"] = "Si activé, vous répondrez au requêtes même pendant les combats. Désactivé cette option peut éventuellement améliorer les performances."
L["ARMORY_CMD_SET_SHAREININSTANCE_MENUTEXT"] = "Partager en instance"
L["ARMORY_CMD_SET_SHAREININSTANCE_TEXT"] = "Partage les informations même en instance"
L["ARMORY_CMD_SET_SHAREININSTANCE_TOOLTIP"] = "Si activé, accepte les requêtes de partage d'information lorsque vous êtes en instance. Désactiver cette option peut peut-être améliorer les performances."
L["ARMORY_CMD_SET_SHAREQUESTS_MENUTEXT"] = "Partager les quêtes"
L["ARMORY_CMD_SET_SHAREQUESTS_TEXT"] = "Partager vos quêtes"
L["ARMORY_CMD_SET_SHAREQUESTS_TOOLTIP"] = "Si activé, les autres utilisateurs d'Armory peuvent voir vos quêtes en cours."
L["ARMORY_CMD_SET_SHARESKILLS_MENUTEXT"] = "Partager les métiers"
L["ARMORY_CMD_SET_SHARESKILLS_TEXT"] = "Partage les recettes de vos métiers"
L["ARMORY_CMD_SET_SHARESKILLS_TOOLTIP"] = "Si activé, les autres utilisateurs d'Armory peuvent voir les recettes que vous connaissez."
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_MENUTEXT"] = "Afficher les hauts faits dans les liens."
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_TEXT"] = "Afficher les personnages avec les liens de hauts faits"
L["ARMORY_CMD_SET_SHOWACHIEVEMENTS_TOOLTIP"] = "Si activé, les personnages qui ont achevé ou qui ont entamé le haut fait sont ajoutés à l'infobulle de celui-ci."
L["ARMORY_CMD_SET_SHOWALTEQUIP_MENUTEXT"] = "Afficher l'équipement alternatif"
L["ARMORY_CMD_SET_SHOWALTEQUIP_TEXT"] = "Afficher les équipements alternatifs "
L["ARMORY_CMD_SET_SHOWALTEQUIP_TOOLTIP"] = "Si activé, la cabine d'essayage affichera les autres objets de votre inventaire qui peuvent être équipées dans les différents emplacements."
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_MENUTEXT"] = "Afficher le total des objets"
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_TEXT"] = "Inclure le décompte total des objets"
L["ARMORY_CMD_SET_SHOWCOUNTTOTAL_TOOLTIP"] = "Si activé, un total général est ajouté au décompte des objets."
L["ARMORY_CMD_SET_SHOWCRAFTERS_MENUTEXT"] = "Show crafters in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWCRAFTERS_TEXT"] = "show crafters in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWCRAFTERS_TOOLTIP"] = "If enabled, item tooltips will show which character can craft that item." -- Requires localization
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_MENUTEXT"] = "Afficher les infobulles comparatives"
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_TEXT"] = "Afficher les infobulles comparatives des objets"
L["ARMORY_CMD_SET_SHOWEQCTOOLTIPS_TOOLTIP"] = "Si activé, une infobulle de comparaison apparaît lorsque la touche Alt est enfoncée alors que l'infobulle d'un objet est affichée."
L["ARMORY_CMD_SET_SHOWGEARSETS_MENUTEXT"] = "Afficher les ensembles d'armures dans l'infobulle"
L["ARMORY_CMD_SET_SHOWGEARSETS_TEXT"] = "Afficher les noms des ensembles d'armure des objets dans l'infobulle"
L["ARMORY_CMD_SET_SHOWGEARSETS_TOOLTIP"] = "Si activé et que l'objet fait partie d'un ensemble d'armures, le nom de l'ensemble est affiché dans l'infobulle."
L["ARMORY_CMD_SET_SHOWGEMS_MENUTEXT"] = "Show gemming details" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEMS_TEXT"] = "show socket gemming details in tooltips" -- Requires localization
L["ARMORY_CMD_SET_SHOWGEMS_TOOLTIP"] = "If enabled, the color of the socket and the name of the gem will be added to the item tooltip." -- Requires localization
L["ARMORY_CMD_SET_SHOWITEMCOUNT_MENUTEXT"] = "Afficher le total des objets dans l'infobulle"
L["ARMORY_CMD_SET_SHOWITEMCOUNT_TEXT"] = "Affiche le décompte des objets dans les infobulles"
L["ARMORY_CMD_SET_SHOWITEMCOUNT_TOOLTIP"] = "Si activé, l'infobulle des objets affiche les totaux pour chaque personnage."
L["ARMORY_CMD_SET_SHOWMINIMAP_MENUTEXT"] = "Afficher le bouton de la mini-carte"
L["ARMORY_CMD_SET_SHOWMINIMAP_TEXT"] = "Affiche le bouton de la mini-carte"
L["ARMORY_CMD_SET_SHOWMINIMAP_TOOLTIP"] = "Si activé, un bouton d'accès est accroché à la mini-carte."
L["ARMORY_CMD_SET_SHOWMMGLOBAL_MENUTEXT"] = "Bouton de la mini-carte pour tous"
L["ARMORY_CMD_SET_SHOWMMGLOBAL_TEXT"] = "Afficher le bouton de la mini-carte pour tous les personnages"
L["ARMORY_CMD_SET_SHOWMMGLOBAL_TOOLTIP"] = "Si activé, un bouton est attaché à la mini-carte pour tous les personnages. Sinon vous devez activer ledit bouton individuellement pour chaque personnage."
L["ARMORY_CMD_SET_SHOWQUESTALTS_MENUTEXT"] = "Afficher les Alts dans les liens de quête"
L["ARMORY_CMD_SET_SHOWQUESTALTS_TEXT"] = "Affiche les personnages dans les liens de quête"
L["ARMORY_CMD_SET_SHOWQUESTALTS_TOOLTIP"] = "Si activé, les noms des personnages qui ont la quête affichée dans la fenêtre de discussion sont ajoutés à son infobulle."
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_MENUTEXT"] = "Ajouter dans les infobulles si les recettes sont connues"
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_TEXT"] = "Modifier l'infobulle des recettes connues"
L["ARMORY_CMD_SET_SHOWRECIPEKNOWN_TOOLTIP"] = "Si activé, l'infobulle des recettes affiche quels personnages les connaissent déjà."
L["ARMORY_CMD_SET_SHOWSHAREMSG_MENUTEXT"] = "Afficher les messages de partage"
L["ARMORY_CMD_SET_SHOWSHAREMSG_TEXT"] = "Afficher les messages de partage de données"
L["ARMORY_CMD_SET_SHOWSHAREMSG_TOOLTIP"] = "Si activé, les messages d'échange de données sont affichés dans la fenêtre de discussion."
L["ARMORY_CMD_SET_SHOWSUMMARY_MENUTEXT"] = "Page récapitulative"
L["ARMORY_CMD_SET_SHOWSUMMARY_TEXT"] = "Afficher la feuille récapitulative"
L["ARMORY_CMD_SET_SHOWSUMMARY_TOOLTIP"] = "Si activé, une feuille récapitulative des personnages est affichée lorsque la souris passe sur le bouton de mini-carte ou sur le bouton de LDB."
L["ARMORY_CMD_SET_SHOWUNEQUIP_MENUTEXT"] = "Afficher les alternatives \"non-équipables\""
L["ARMORY_CMD_SET_SHOWUNEQUIP_TEXT"] = "Affiche les alternatives \"non-équipables\""
L["ARMORY_CMD_SET_SHOWUNEQUIP_TOOLTIP"] = "Si activé, tous les objets de l'inventaire qui correspondent à l'emplacement seront affichés sans tenir compte des pré-requis."
L["ARMORY_CMD_SET_SUCCESS"] = "%1$s réglé sur %2$s"
L["ARMORY_CMD_SET_SUMMARYDELAY_TEXT"] = "Délai d'affichage du popup"
L["ARMORY_CMD_SET_SUMMARYDELAY_TOOLTIP"] = "Ajuste la longueur du délai après lequel le récapitulatif est affiché."
L["ARMORY_CMD_SET_USEENCODING_MENUTEXT"] = "Favoriser la mémoire aux dépens du processeur"
L["ARMORY_CMD_SET_USEENCODING_TEXT"] = "Favorise l'emploi de la mémoire sur la vitesse de traitement"
L["ARMORY_CMD_SET_USEENCODING_TOOLTIP"] = "Si activé, les données sont enregistrées dans un format codé utilisant moins de mémoire mais davantage le processeur pour l'enregistrement et la lecture."
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_MENUTEXT"] = "Use different color for 'in progress'" -- Requires localization
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_TEXT"] = "colorize 'in progress' differently" -- Requires localization
L["ARMORY_CMD_SET_USEINPROGRESSCOLOR_TOOLTIP"] = "If enabled, a different color will be used for achievements still in progress by a character." -- Requires localization
L["ARMORY_CMD_SET_WINDOWSEARCH_MENUTEXT"] = "Afficher les résultats de la recherche dans une fenêtre"
L["ARMORY_CMD_SET_WINDOWSEARCH_TEXT"] = "Afficher les résultats de la recherche dans une fenêtre propre"
L["ARMORY_CMD_SET_WINDOWSEARCH_TOOLTIP"] = "Si activé, les résultats de la recherche sont affichés dans une fenêtre séparée ; autrement ils apparaissent dans la fenêtre de discussion."
L["ARMORY_CMD_TOGGLE"] = "Active ou désactive Armory"
L["ARMORY_CMD_USAGE"] = "Utilisation :"
L["ARMORY_COOLDOWN_AVAILABLE"] = "Cooldown of '%1$s' is available again for %2$s (%3$s)." -- Requires localization
L["ARMORY_COOLDOWN_WARNING"] = "%s in %d |4minute:minutes;" -- Requires localization
L["ARMORY_CRAFTABLE_BY"] = "Craftable by" -- Requires localization
L["ARMORY_DB_INCOMPATIBLE"] = [=[La base de données n'est pas compatible avec cette version d'Armory et va être effacée.
Vous devez vous connecter avec chacun de vos personnages pour reconstituer la base de données.]=]
L["ARMORY_DELETE_UNIT"] = "Voulez-vous supprimer %s de la base de données ?"
L["ARMORY_DELETE_UNIT_HINT"] = "Clic-droit pour effacer." -- Needs review
L["ARMORY_EQUIPMENT"] = "Équipement"
L["ARMORY_EQUIPPED"] = "Equipped" -- Requires localization
L["ARMORY_ERROR"] = "ERREUR"
L["ARMORY_EVENT_WARNING"] = "%s starts in %d |4minute:minutes;" -- Requires localization
L["ARMORY_EXPIRATION_LABEL"] = "Expiration"
L["ARMORY_EXPIRATION_SUBTEXT"] = "Ces options permettent de modifier le fonctionnement du contrôle de l'expiration des courriers."
L["ARMORY_EXPIRATION_TITLE"] = "Expiration des courriers"
L["ARMORY_EXTENDED"] = "Étendu"
L["ARMORY_FILTER_ALL"] = "Tout sélectionner"
L["ARMORY_FILTER_CLEAR"] = "Effacer la sélection"
L["ARMORY_FILTER_DISABLE"] = "Désactiver les filtres"
L["ARMORY_FILTER_ENABLE"] = "Activer les filtres"
L["ARMORY_FILTER_LABEL"] = "Filtres : %s"
L["ARMORY_FILTER_TOOLTIP"] = "Cliquer pour accéder aux filtres généraux des objets."
L["ARMORY_FIND_BUTTON"] = "Recherche"
L["ARMORY_FIND_LABEL"] = "Recherche"
L["ARMORY_FIND_SUBTEXT"] = "Ces options permettent de modifier le fonctionnement des recherches."
L["ARMORY_FIND_TITLE"] = "Chercher dans le base de données"
L["ARMORY_FONT_COLOR"] = "Couleur du texte"
L["ARMORY_FULLY_RESTED"] = "Reposé en: %s" -- Needs review
L["ARMORY_GLOBAL"] = "Global"
L["ARMORY_IGNORE_REASON_COMBAT"] = "Partage désactivé en combat"
L["ARMORY_IGNORE_REASON_INSTANCE"] = "Partage désactivé en instance"
L["ARMORY_IGNORE_REASON_SHARING"] = "Partage désactivé"
L["ARMORY_IGNORE_REASON_VERSION"] = "Version du protocole non supportée"
L["ARMORY_INFO"] = "INFO" -- Requires localization
L["ARMORY_INVENTORY_BAGLAYOUT"] = "Sacs \"tels quels\""
L["ARMORY_INVENTORY_BAGLAYOUT_TOOLTIP"] = "Affiche les sacs tels qu'ils sont effectivement."
L["ARMORY_INVENTORY_ICONVIEW"] = "Icônes"
L["ARMORY_INVENTORY_ICONVIEW_TOOLTIP"] = "Affichage standard"
L["ARMORY_INVENTORY_LISTVIEW"] = "Liste"
L["ARMORY_INVENTORY_LISTVIEW_TOOLTIP"] = "Affichage avancé"
L["ARMORY_INVENTORY_SEARCH_ALL"] = "Tous les personnages"
L["ARMORY_INVENTORY_SEARCH_ALL_TOOLTIP"] = "Sélectionne tous les objets de tous les personnages de la base de données."
L["ARMORY_INVENTORY_SEARCH_TEXT_TOOLTIP"] = [=[Entrez un critère de filtrage.

Note : vous pouvez filtrer sur la qualité en entrant "=" suivi de %s, %s, %s, %s, %s, %s, %s ou %s ou leur identifiant numérique respectif de 0 à 7 (p. ex. "=4" pour les objets épiques). ]=]
L["ARMORY_KNOWN_BY"] = "Connu par"
L["ARMORY_LINK_HINT"] = "Maj.-clic pour créer un lien"
L["ARMORY_LINK_TRADESKILL_TOOLTIP"] = "Maj.-clic affiche votre métier."
L["ARMORY_LOOKUP_BUTTON"] = "Chercher"
L["ARMORY_LOOKUP_CHARACTER"] = "Chercher un personnage"
L["ARMORY_LOOKUP_CHARACTER_SEARCH_TOOLTIP"] = [=[Entrez un critère de filtrage.

Note : ceci peut également être le nom du personnage d'un autre joueur.]=]
L["ARMORY_LOOKUP_DETAIL"] = "Cliquez pour afficher les détails"
L["ARMORY_LOOKUP_DISABLED"] = "Le partage de données est désactivé."
L["ARMORY_LOOKUP_IGNORED"] = "Requête ignorée (raison : %s)"
L["ARMORY_LOOKUP_NODETAIL"] = "Aucun détail disponible"
L["ARMORY_LOOKUP_PLAYER_HINT"] = [=[Shift-click for player info
Right-click to whisper]=] -- Requires localization
L["ARMORY_LOOKUP_QUEST"] = "Chercher dans les quêtes"
L["ARMORY_LOOKUP_QUEST_AREA"] = "Zone de la quête"
L["ARMORY_LOOKUP_QUEST_NAME"] = "Titre de la quête"
L["ARMORY_LOOKUP_QUEST_SEARCH_TOOLTIP"] = [=[Entrez un critère de filtrage.

Note : vous pouvez également rechercher les personnages ayant des quêtes dans une certaine zone en sélectionnant l'option correspondante dans le menu déroulant.]=]
L["ARMORY_LOOKUP_REALM_ALIAS"] = "Recherché"
L["ARMORY_LOOKUP_REQUEST_DETAIL"] = "Données demandées : %s"
L["ARMORY_LOOKUP_REQUEST_RECEIVED"] = "Demande de partage de données reçue de %s"
L["ARMORY_LOOKUP_REQUEST_SENT"] = "Demande envoyée à %s"
L["ARMORY_LOOKUP_RESPONSE_RECEIVED"] = "Données reçues de %s"
L["ARMORY_LOOKUP_RESPONSE_SENT"] = "Réponse envoyée à %s"
L["ARMORY_LOOKUP_SEARCH_EXACT"] = "Correspondance exacte"
L["ARMORY_LOOKUP_SKILL"] = "Examen des recettes"
L["ARMORY_LOOKUP_SKILL_SEARCH_TOOLTIP"] = [=[Entrez un critère de filtrage.

Les noms de personnages obtenus en réponse peuvent être sélectionnés pour ouvrir leur fenêtre de caractéristiques.
Notez que vous pouvez demander une liste complète des recettes en entrant un astérisque seul ( * ).]=]
L["ARMORY_MAIL_COUNT_WARNING1"] = "The inbox still contains %d |4mail:mails; that couldn't be scanned." -- Requires localization
L["ARMORY_MAIL_COUNT_WARNING2"] = "%1$s (%2$s) has %d |4mail:mails; that couldn't be scanned." -- Requires localization
L["ARMORY_MAIL_ITEM_COUNT"] = "Number of items:" -- Requires localization
L["ARMORY_MAIL_LAST_VISIT"] = "Last visit:" -- Requires localization
L["ARMORY_MAIL_REMAINING"] = "Mail remaining:" -- Requires localization
L["ARMORY_MAIL_VISIT_WARNING"] = "%1$s (%2$s) hasn't visited the mailbox for %3$s. Please log in to check your inbox." -- Requires localization
L["ARMORY_MESSAGE_FILTER"] = "Filtre de message"
L["ARMORY_MINIMAP_LABEL"] = "Mini-carte"
L["ARMORY_MINIMAP_SUBTEXT"] = "Ces options contrôlent l'affichage du bouton sur la mini-carte."
L["ARMORY_MINIMAP_TITLE"] = "Bouton de la mini-carte pour Armory"
L["ARMORY_MISC_LABEL"] = "Divers"
L["ARMORY_MISC_SUBTEXT"] = "Ces options vous permettent d'effectuer divers réglages."
L["ARMORY_MISC_TITLE"] = "Options diverses"
L["ARMORY_MODULES_LABEL"] = "Modules"
L["ARMORY_MODULES_SUBTEXT"] = "Ces options vous permettent de choisir quels modules doivent être activés."
L["ARMORY_MODULES_TITLE"] = "Modules d'Armory"
L["ARMORY_MONEY_TOTAL"] = "%1$s %2$s total :"
L["ARMORY_OPEN_HINT"] = "Clic pour ouvrir"
L["ARMORY_QUEST_TOOLTIP_LABEL"] = "Alts ayant cette quête :"
L["ARMORY_REPUTATION_SUMMARY"] = "%1$s - %2$s (%3$d/%4$d, %5$d restant)"
L["ARMORY_SEARCHING"] = "Recherche..."
L["ARMORY_SELECT_UNIT_HINT"] = "Clic-gauche pour sélectionner ce personnage."
L["ARMORY_SHARE_DOWNLOAD_LOADERROR"] = "Impossible de charger %1$s; cause : %2$s"
L["ARMORY_SHARE_LABEL"] = "Partage"
L["ARMORY_SHARE_SUBTEXT1"] = "Ces options déterminent la façon dont vous partagez vos données avec les autre utilisateurs d'Armory. Notez que ces paramètres sont enregistrés pour chaque personnage individuellement."
L["ARMORY_SHARE_SUBTEXT2"] = "Les options suivantes sont fixées au niveau général."
L["ARMORY_SHARE_TITLE"] = "Partage de données"
L["ARMORY_SHORTDATE_FORMAT"] = "ARMORY_SHORTDATE_FORMAT"
L["ARMORY_SLASH_ALTERNATIVES"] = "/armory"
L["ARMORY_SOCIAL_ADD_TOOLTIP"] = "Maj.-clic pour ajouter à votre liste courante."
L["ARMORY_SUBTEXT"] = "Ces options permettent de modifier le fonctionnement d'Armory."
L["ARMORY_SUMMARY_LABEL"] = "Récapitulatif"
L["ARMORY_SUMMARY_SUBTEXT1"] = "Ces options permettent de modifier la page récapitulative de votre personnage."
L["ARMORY_SUMMARY_SUBTEXT2"] = "Choisir les informations à afficher :"
L["ARMORY_SUMMARY_TITLE"] = "Options du récapitulatif"
L["ARMORY_TALENTS"] = "SPÉCIALISATION DES TALENTS :"
L["ARMORY_TOOLTIP1"] = "Personnage :"
L["ARMORY_TOOLTIP2"] = "Royaume :"
L["ARMORY_TOOLTIP_HINT1"] = "Clic-gauche affiche Armory"
L["ARMORY_TOOLTIP_HINT2"] = "Clic-droit pour les options"
L["ARMORY_TOOLTIP_LABEL"] = "Infobulle"
L["ARMORY_TOOLTIP_SUBTEXT"] = "Ces options permettent d'ajouter des informations aux infobulles."
L["ARMORY_TOOLTIP_TITLE"] = "Infobulles améliorées"
L["ARMORY_TOTAL"] = "Total : %d"
L["ARMORY_TRADE_ALCHEMY"] = "Alchimie"
L["ARMORY_TRADE_BLACKSMITHING"] = "Forge"
L["ARMORY_TRADE_COOKING"] = "Cuisine"
L["ARMORY_TRADE_ENCHANTING"] = "Enchantement"
L["ARMORY_TRADE_ENGINEERING"] = "Ingénierie"
L["ARMORY_TRADE_FIRST_AID"] = "Secourisme"
L["ARMORY_TRADE_FISHING"] = "Pêche"
L["ARMORY_TRADE_HERBALISM"] = "Herboristerie"
L["ARMORY_TRADE_INSCRIPTION"] = "Calligraphie"
L["ARMORY_TRADE_JEWELCRAFTING"] = "Joaillerie"
L["ARMORY_TRADE_LEATHERWORKING"] = "Travail du cuir"
L["ARMORY_TRADE_MINING"] = "Minage"
L["ARMORY_TRADE_POISONS"] = "Poisons"
L["ARMORY_TRADE_SKILLS"] = "PROFESSIONS PRINCIPALES :"
L["ARMORY_TRADESKILL_SEARCH_TEXT_TOOLTIP"] = [=[Entrez un critère de filtrage.

Note : vous pouvez utiliser notamment "10", "~10" ou "10-20" pour filtrer les recettes en fonction de leur niveau.]=]
L["ARMORY_TRADE_SKINNING"] = "Dépeçage"
L["ARMORY_TRADE_TAILORING"] = "Couture"
L["ARMORY_TRADE_UPDATE_WARNING"] = "Données des métiers non sauvegardées. Utilisez le bouton de fermeture pour effectuer une mise à jour."
L["ARMORY_UPDATE_SUSPENDED"] = "suspended" -- Requires localization
L["ARMORY_WARNING"] = "AVERTISSEMENT"
L["ARMORY_WHAT"] = "Quoi"
L["ARMORY_WHERE"] = "Où"
L["ARMORY_WHO"] = "Qui"
L["ARMORY_XP_SUMMARY"] = "Level %1$d (%2$s) %3$d XP to go, %4$s rested" -- Requires localization
L["BINDING_NAME_ARMORY_TOGGLE"] = "Interrupteur Armory"
L["BINDING_NAME_CURRENT_CHARACTER"] = "Personnage courant"
L["BINDING_NAME_FIND"] = "Recherche dans la BD"
L["BINDING_NAME_LOOKUP"] = "Recherche"
L["BINDING_NAME_NEXT_CHARACTER"] = "Personnage suivant"
L["BINDING_NAME_PREVIOUS_CHARACTER"] = "Personnage précédent"

