--[[
    Armory Addon for World of Warcraft(tm).
    Revision: 310 2010-08-20T17:28:21Z
    URL: http://www.wow-neighbours.com

    License:
        This program is free software; you can redistribute it and/or
        modify it under the terms of the GNU General Public License
        as published by the Free Software Foundation; either version 2
        of the License, or (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program(see GPL.txt); if not, write to the Free Software
        Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

    Note:
        This AddOn's source code is specifically designed to work with
        World of Warcraft's interpreted AddOn system.
        You have an implicit licence to use this AddOn with these facilities
        since that is it's designated purpose as per:
        http://www.fsf.org/licensing/licenses/gpl-faq.html#InterpreterIncompat
--]] 

local Armory = Armory;

ARMORY_QUESTS_DISPLAYED = 6;
ARMORY_QUESTLOG_QUEST_HEIGHT = 16;
ARMORY_MAX_OBJECTIVES = 10;
ARMORY_MAX_REPUTATIONS = 10;
ARMORY_MAX_NUM_ITEMS = 10;

function ArmoryQuestLogTitleButton_OnClick(self, button)
    local questName = self:GetText();
    local questIndex = self:GetID() + FauxScrollFrame_GetOffset(ArmoryQuestLogListScrollFrame);
    if ( IsModifiedClick() ) then
        -- If header then return
        if ( self.isHeader ) then
            return;
        end
        -- Otherwise put it into chat
        if ( IsModifiedClick("CHATLINK") and ChatEdit_GetActiveWindow() ) then
            local questLink = Armory:GetQuestLink(questIndex);
            if ( questLink ) then
                ChatEdit_InsertLink(questLink);
            end
        end
    end
    ArmoryQuestLog_SetSelection(questIndex);
    ArmoryQuestLog_Update();
end

function ArmoryQuestLogTitleButton_OnEnter(self)
    -- Set highlight
    self.tag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
end

function ArmoryQuestLogTitleButton_OnLeave(self)
    if ( ArmoryQuestLogFrame.selectedButtonID and (self:GetID() ~= (ArmoryQuestLogFrame.selectedButtonID - FauxScrollFrame_GetOffset(ArmoryQuestLogListScrollFrame))) ) then
        self.tag:SetTextColor(self.r, self.g, self.b);
    end
    GameTooltip:Hide();
end

function ArmoryQuestLogFrame_OnLoad(self)
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    self:RegisterEvent("QUEST_LOG_UPDATE");
    self:RegisterEvent("UPDATE_FACTION");
    self:RegisterEvent("UNIT_QUEST_LOG_CHANGED");
end

function ArmoryQuestLogFrame_OnEvent(self, event, ...)
    local arg1 = ...;
    if ( not Armory:CanHandleEvents() ) then
        return;
    elseif ( event == "PLAYER_ENTERING_WORLD") then
        self:UnregisterEvent("PLAYER_ENTERING_WORLD");
    elseif ( event == "UNIT_QUEST_LOG_CHANGED" and arg1 ~= "player" ) then
        return;
    end
    Armory:Execute(ArmoryQuestLogFrame_UpdateQuests);
end

function ArmoryQuestLogFrame_UpdateQuests()
    Armory:UpdateQuests();
    ArmoryQuestLog_Update();
    if ( ArmoryQuestLogDetailScrollFrame:IsVisible() ) then
        ArmoryQuestLog_UpdateQuestDetails(false);
    end
end

function ArmoryQuestLogFrame_OnShow(self)
    Armory:SelectQuestLogEntry(0);
    ArmoryQuestLog_SetSelection(Armory:GetQuestLogSelection());
    ArmoryQuestLog_Update();
end

function ArmoryQuestInfoTimerFrame_OnUpdate(self, elapsed)
    if ( self.timeLeft ) then
        self.timeLeft = max(self.timeLeft - elapsed, 0);
        ArmoryQuestInfoTimerText:SetText(TIME_REMAINING.." "..SecondsToTime(self.timeLeft));
    end
end

function ArmoryQuestLogCollapseAllButton_OnClick(self)
    if (self.collapsed) then
        self.collapsed = nil;
        Armory:ExpandQuestHeader(0);
    else
        self.collapsed = 1;
        ArmoryQuestLogListScrollFrameScrollBar:SetValue(0);
        Armory:CollapseQuestHeader(0);
    end
    ArmoryQuestLog_Update();
end

function ArmoryQuestLog_Update()
    if ( not ArmoryQuestLogFrame:IsShown() ) then
        return;
    end

    local numEntries, numQuests = Armory:GetNumQuestLogEntries();
    if ( numQuests == 0 ) then
        ArmoryEmptyQuestLogFrame:Show();
        ArmoryQuestLogDetailScrollFrame:Hide();
        ArmoryQuestLogExpandButtonFrame:Hide();
    else
        ArmoryEmptyQuestLogFrame:Hide();
        ArmoryQuestLogDetailScrollFrame:Show();
        ArmoryQuestLogExpandButtonFrame:Show();
    end

    -- Update Quest Count
    ArmoryQuestLogUpdateQuestCount(numQuests);

    -- ScrollFrame update
    FauxScrollFrame_Update(ArmoryQuestLogListScrollFrame, numEntries, ARMORY_QUESTS_DISPLAYED, ARMORY_QUESTLOG_QUEST_HEIGHT, nil, nil, nil, ArmoryQuestLogHighlightFrame, 293, 316 )

    -- Update the quest listing
    ArmoryQuestLogHighlightFrame:Hide();

    -- If no selection then set it to the first available quest
    if ( Armory:GetQuestLogSelection() == 0 ) then
        ArmoryQuestLog_SetFirstValidSelection();
    end

    local questIndex, questLogTitle, questTitleTag, questNormalText, questHighlight;
    local questLogTitleText, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, color, questID, displayQuestID;
    for i = 1, ARMORY_QUESTS_DISPLAYED do
        questIndex = i + FauxScrollFrame_GetOffset(ArmoryQuestLogListScrollFrame);
        questLogTitle = _G["ArmoryQuestLogTitle"..i];
        questTitleTag = _G["ArmoryQuestLogTitle"..i.."Tag"];
        questNormalText = _G["ArmoryQuestLogTitle"..i.."NormalText"];
        questHighlight = _G["ArmoryQuestLogTitle"..i.."Highlight"];
        if ( questIndex <= numEntries ) then
            questLogTitleText, level, questTag, suggestedGroup, isHeader, isCollapsed, isComplete, isDaily, questID, displayQuestID = Armory:GetQuestLogTitle(questIndex);
            if ( isHeader ) then
                if ( questLogTitleText ) then
                    questLogTitle:SetText(questLogTitleText);
                else
                    questLogTitle:SetText("");
                end

                if ( isCollapsed ) then
                    questLogTitle:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
                else
                    questLogTitle:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up"); 
                end
                questHighlight:SetTexture("Interface\\Buttons\\UI-PlusButton-Hilight");
            else
                if ( questID and displayQuestID ) then
                    questLogTitle:SetText("  "..questID.." - "..questLogTitleText);
                else
                    questLogTitle:SetText("  "..questLogTitleText);
                end
                questLogTitle:SetNormalTexture("");
                questHighlight:SetTexture("");
            end
            -- Save if its a header or not
            questLogTitle.isHeader = isHeader;

            if ( isComplete and isComplete < 0 ) then
                questTag = FAILED;
            elseif ( isComplete and isComplete > 0 ) then
                questTag = COMPLETE;
            elseif ( isDaily ) then
                if ( questTag ) then
                    questTag = format(DAILY_QUEST_TAG_TEMPLATE, questTag);
                else
                    questTag = DAILY;
                end
            end
            if ( questTag ) then
                questTitleTag:SetText("("..questTag..")");
                -- Shrink text to accomdate quest tags without wrapping
                questNormalText:SetWidth(275 - 15 - questTitleTag:GetWidth());
            else
                questTitleTag:SetText("");
                questNormalText:SetWidth(275);
            end

            -- Color the quest title and highlight according to the difficulty level
            if ( isHeader ) then
                color = QuestDifficultyColors["header"];
            else
                color = ArmoryGetDifficultyColor(level);
            end
            questTitleTag:SetTextColor(color.r, color.g, color.b);
            questLogTitle:SetNormalFontObject(color.font);
            questLogTitle.r = color.r;
            questLogTitle.g = color.g;
            questLogTitle.b = color.b;
            questLogTitle:Show();

            -- Place the highlight and lock the highlight state
            if ( ArmoryQuestLogFrame.selectedButtonID and Armory:GetQuestLogSelection() == questIndex ) then
                ArmoryQuestLogHighlightFrame:SetPoint("TOPLEFT", "ArmoryQuestLogTitle"..i, "TOPLEFT", 0, 0);
                ArmoryQuestLogSkillHighlight:SetVertexColor(questLogTitle.r, questLogTitle.g, questLogTitle.b);
                ArmoryQuestLogHighlightFrame:Show();
                questTitleTag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
                questLogTitle:LockHighlight();
            else
                questLogTitle:UnlockHighlight();
            end

        else
            questLogTitle:Hide();
        end
    end

    -- Set the expand/collapse all button texture
    local numHeaders = 0;
    local notExpanded = 0;
    -- Somewhat redundant loop, but cleaner than the alternatives
    for i=1, numEntries, 1 do
        questLogTitleText, _, _, _, isHeader, isCollapsed = Armory:GetQuestLogTitle(i);
        if ( questLogTitleText and isHeader ) then
            numHeaders = numHeaders + 1;
            if ( isCollapsed ) then
                notExpanded = notExpanded + 1;
            end
        end
    end
    -- If all headers are not expanded then show collapse button, otherwise show the expand button
    if ( notExpanded ~= numHeaders ) then
        ArmoryQuestLogCollapseAllButton.collapsed = nil;
        ArmoryQuestLogCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-MinusButton-Up");
    else
        ArmoryQuestLogCollapseAllButton.collapsed = 1;
        ArmoryQuestLogCollapseAllButton:SetNormalTexture("Interface\\Buttons\\UI-PlusButton-Up");
    end
end

function ArmoryQuestLog_SetSelection(questID)
    local selectedQuest;

    if ( questID == 0 ) then
        ArmoryQuestLogDetailScrollFrame:Hide();
        return;
    end

    -- Get xml id
    local id = questID - FauxScrollFrame_GetOffset(ArmoryQuestLogListScrollFrame);

    Armory:SelectQuestLogEntry(questID);
    local titleButton = _G["ArmoryQuestLogTitle"..id];
    local titleButtonTag = _G["ArmoryQuestLogTitle"..id.."Tag"];
    local questLogTitleText, level, questTag, suggestedGroup, isHeader, isCollapsed = Armory:GetQuestLogTitle(questID);
    if ( isHeader ) then
        if ( isCollapsed ) then
            Armory:ExpandQuestHeader(questID);
        else
            Armory:CollapseQuestHeader(questID);
        end
        if ( not ArmoryQuestLogFrame.selectedButtonID ) then
            questID = ArmoryQuestLog_GetFirstSelectableQuest();
            ArmoryQuestLog_SetSelection(questID);
        end
        return;
    else
        -- Set newly selected quest and highlight it
        ArmoryQuestLogFrame.selectedButtonID = questID;
        local scrollFrameOffset = FauxScrollFrame_GetOffset(ArmoryQuestLogListScrollFrame);
        if ( questID > scrollFrameOffset and questID <= (scrollFrameOffset + ARMORY_QUESTS_DISPLAYED) and questID <= Armory:GetNumQuestLogEntries() ) then
            titleButton:LockHighlight();
            titleButtonTag:SetTextColor(HIGHLIGHT_FONT_COLOR.r, HIGHLIGHT_FONT_COLOR.g, HIGHLIGHT_FONT_COLOR.b);
            --QuestLogSkillHighlight:SetVertexColor(titleButton.r, titleButton.g, titleButton.b);
            ArmoryQuestLogHighlightFrame:SetPoint("TOPLEFT", "ArmoryQuestLogTitle"..id, "TOPLEFT", 5, 0);
            ArmoryQuestLogHighlightFrame:Show();
        end
    end
    ArmoryQuestLog_UpdateQuestDetails(true);
end

function ArmoryQuestLog_UpdateQuestDetails(resetScrollBar)
	ArmoryQuestInfo_Display(ARMORY_QUEST_TEMPLATE_LOG, ArmoryQuestLogDetailScrollChildFrame);
	
    if ( resetScrollBar ) then
        ArmoryQuestLogDetailScrollFrameScrollBar:SetValue(0);
    end	
    ArmoryQuestLogDetailScrollFrame:Show();
end

function ArmoryQuestInfo_ShowTitle()
    local questTitle = Armory:GetQuestLogTitle(Armory:GetQuestLogSelection());
    if ( not questTitle ) then
        questTitle = "";
    end
    if ( Armory:IsCurrentQuestFailed() ) then
        questTitle = questTitle.." - ("..FAILED..")";
    end
    ArmoryQuestInfoTitleHeader:SetText(questTitle);
    return ArmoryQuestInfoTitleHeader;
end

function ArmoryQuestInfo_ShowDescriptionText()
    local questDescription = Armory:GetQuestLogQuestText();
    ArmoryQuestInfoDescriptionText:SetText(questDescription);
    ArmoryQuestInfoDescriptionText:SetAlphaGradient(0, 0);	
    return ArmoryQuestInfoDescriptionText;
end

function ArmoryQuestInfo_ShowObjectives()
    local numObjectives = Armory:GetNumQuestLeaderBoards();
    local objective;
    local text, type, finished;
    for i = 1, numObjectives do
        objective = _G["ArmoryQuestInfoObjective"..i];
        text, type, finished = Armory:GetQuestLogLeaderBoard(i);
        if ( not text or strlen(text) == 0 ) then
            text = type;
        end
        if ( finished ) then
            objective:SetTextColor(0.2, 0.2, 0.2);
            text = text.." ("..COMPLETE..")";
        else
            objective:SetTextColor(0, 0, 0);
        end
        objective:SetText(text);
        objective:Show();
    end
    for i = numObjectives + 1, ARMORY_MAX_OBJECTIVES do
        _G["ArmoryQuestInfoObjective"..i]:Hide();
    end
    if ( objective ) then
        ArmoryQuestInfoObjectivesFrame:Show();
        return ArmoryQuestInfoObjectivesFrame, objective;
    else
        ArmoryQuestInfoObjectivesFrame:Hide();
        return nil;
    end
end

function ArmoryQuestInfo_DoReputations(anchor)
    local numReputations = Armory:GetNumQuestLogRewardFactions();
    local factionName, amount, factionId, isHeader;
    local index = 0;
    for i = 1, numReputations do		
        factionId, amount = Armory:GetQuestLogRewardFactionInfo(i);
        factionName, _, _, _, _, _, _, _, isHeader, _, hasRep = GetFactionInfoByID(factionId);
        if ( factionName and ( not isHeader or hasRep ) ) then
            index = index + 1;
            amount = floor(amount / 100);
            if ( amount < 0 ) then
                amount = "|cffff4400"..amount.."|r";
            end
            _G["ArmoryQuestInfoReputation"..index.."Faction"]:SetText(format(REWARD_REPUTATION, factionName));
            _G["ArmoryQuestInfoReputation"..index.."Amount"]:SetText(amount);
            _G["ArmoryQuestInfoReputation"..index]:Show();
        end
    end
    if ( index > 0 ) then
        for i = index + 1, ARMORY_MAX_REPUTATIONS do
            _G["ArmoryQuestInfoReputation"..i]:Hide();
        end
        ArmoryQuestInfoReputationsFrame:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 0, -5);
        ArmoryQuestInfoReputationsFrame:SetHeight(index * 17 + ArmoryQuestInfoReputationText:GetHeight() + 4);
        ArmoryQuestInfoReputationsFrame:Show();
        return ArmoryQuestInfoReputationsFrame;
    else
        ArmoryQuestInfoReputationsFrame:Hide();
        return anchor;
    end
end

function ArmoryQuestInfo_ShowTimer()
    local timeLeft = Armory:GetQuestLogTimeLeft();
    ArmoryQuestInfoTimerFrame.timeLeft = timeLeft;
    if ( timeLeft ) then
        ArmoryQuestInfoTimerText:SetText(TIME_REMAINING.." "..SecondsToTime(timeLeft));
        ArmoryQuestInfoTimerFrame:SetHeight(ArmoryQuestInfoTimerFrame:GetTop() - ArmoryQuestInfoTimerText:GetTop() + ArmoryQuestInfoTimerText:GetHeight());
        ArmoryQuestInfoTimerFrame:Show();
        return ArmoryQuestInfoTimerFrame;
    else
        ArmoryQuestInfoTimerFrame:Hide();
        return nil;
    end
end

function ArmoryQuestInfo_ShowRequiredMoney()
    local requiredMoney = Armory:GetQuestLogRequiredMoney();
    if ( requiredMoney > 0 ) then
        MoneyFrame_Update("ArmoryQuestInfoRequiredMoneyDisplay", requiredMoney);
        if ( requiredMoney > Armory:GetMoney() ) then
            -- Not enough money
            ArmoryQuestInfoRequiredMoneyText:SetTextColor(0, 0, 0);
            SetMoneyFrameColor("ArmoryQuestInfoRequiredMoneyDisplay", "red");
        else
            ArmoryQuestInfoRequiredMoneyText:SetTextColor(0.2, 0.2, 0.2);
            SetMoneyFrameColor("ArmoryQuestInfoRequiredMoneyDisplay", "white");
        end
        ArmoryQuestInfoRequiredMoneyFrame:Show();
        return ArmoryQuestInfoRequiredMoneyFrame;
    else
        ArmoryQuestInfoRequiredMoneyFrame:Hide();
        return nil;
    end
end

function ArmoryQuestInfo_ShowGroupSize()
    local groupNum = Armory:GetQuestLogGroupNum();
    if ( groupNum > 0 ) then
        local suggestedGroupString = format(QUEST_SUGGESTED_GROUP_NUM, groupNum);
        ArmoryQuestInfoGroupSize:SetText(suggestedGroupString);
        ArmoryQuestInfoGroupSize:Show();
        return ArmoryQuestInfoGroupSize;
    else
        ArmoryQuestInfoGroupSize:Hide();
        return nil;
    end
end

function ArmoryQuestInfo_ShowDescriptionHeader()
    return ArmoryQuestInfoDescriptionHeader;
end

function ArmoryQuestInfo_ShowObjectivesText()
    local questObjectives = Armory:GetQuestLogQuestText();
    ArmoryQuestInfoObjectivesText:SetText(questObjectives);
    return ArmoryQuestInfoObjectivesText;
end

function ArmoryQuestInfo_ShowSpacer()
    return ArmoryQuestInfoSpacerFrame;
end

function ArmoryQuestInfo_ShowAnchor()
    return ArmoryQuestInfoAnchor;
end

function ArmoryQuestInfo_ShowRewardText()
    ArmoryQuestInfoRewardText:SetText(Armory:GetRewardText());
    return ArmoryQuestInfoRewardText;
end

function ArmoryQuestInfo_ShowRewards()
    local numQuestRewards = Armory:GetNumQuestLogRewards();
    local numQuestChoices = Armory:GetNumQuestLogChoices();
    local numQuestSpellRewards = 0;
    local money = Armory:GetQuestLogRewardMoney();
    local honor = Armory:GetQuestLogRewardHonor();
    local arenaPoints = Armory:GetQuestLogRewardArenaPoints();
    local talents = Armory:GetQuestLogRewardTalents();
    local xp = Armory:GetQuestLogRewardXP();
    local playerTitle = Armory:GetQuestLogRewardTitle();

    if ( Armory:GetQuestLogRewardSpell() ) then
        numQuestSpellRewards = 1;
    end
    
    local totalRewards = numQuestRewards + numQuestChoices + numQuestSpellRewards;	
    if ( totalRewards == 0 and money == 0 and honor == 0 and arenaPoints == 0 and talents == 0 and xp == 0 and not playerTitle ) then
        ArmoryQuestInfoRewardsFrame:Hide();
        return nil;
    end

    -- Hide unused rewards
    for i = totalRewards + 1, ARMORY_MAX_NUM_ITEMS, 1 do
        _G["ArmoryQuestInfoItem"..i]:Hide();
    end
    -- Hide non-icon rewards (for now)
    ArmoryQuestInfoMoneyFrame:Hide();
    ArmoryQuestInfoHonorFrame:Hide();
    ArmoryQuestInfoArenaPointsFrame:Hide();	
    ArmoryQuestInfoTalentFrame:Hide();
    ArmoryQuestInfoXPFrame:Hide();
    ArmoryQuestInfoPlayerTitleFrame:Hide();	

    local questItem, name, texture, isTradeskillSpell, isSpellLearned, quality, isUsable, numItems;
    local rewardsCount = 0;
    local lastFrame = ArmoryQuestInfoRewardsHeader;
    local questItemReceiveText = ArmoryQuestInfoItemReceiveText;
    questItemReceiveText:SetText(REWARD_ITEMS_ONLY);

    -- Setup choosable rewards
    if ( numQuestChoices > 0 ) then
        local itemChooseText = ArmoryQuestInfoItemChooseText;
        questItemReceiveText:SetText(REWARD_ITEMS);		
        itemChooseText:Show();

        local index;
        local baseIndex = rewardsCount;
        for i = 1, numQuestChoices, 1 do	
            index = i + baseIndex;
            questItem = _G["ArmoryQuestInfoItem"..index];
            questItem.type = "choice";
            numItems = 1;
            name, texture, numItems, quality, isUsable = Armory:GetQuestLogChoiceInfo(i);
            questItem:SetID(i)
            questItem:Show();
            -- For the tooltip
            questItem.rewardType = "item"
            _G["ArmoryQuestInfoItem"..index.."Name"]:SetText(name);
            SetItemButtonCount(questItem, numItems);
            SetItemButtonTexture(questItem, texture);
            if ( isUsable ) then
                SetItemButtonTextureVertexColor(questItem, 1.0, 1.0, 1.0);
                SetItemButtonNameFrameVertexColor(questItem, 1.0, 1.0, 1.0);
            else
                SetItemButtonTextureVertexColor(questItem, 0.9, 0, 0);
                SetItemButtonNameFrameVertexColor(questItem, 0.9, 0, 0);
            end
            if ( i > 1 ) then
                if ( mod(i, 2) == 1 ) then
                    questItem:SetPoint("TOPLEFT", "ArmoryQuestInfoItem"..(index - 2), "BOTTOMLEFT", 0, -2);
                    lastFrame = questItem;
                else
                    questItem:SetPoint("TOPLEFT", "ArmoryQuestInfoItem"..(index - 1), "TOPRIGHT", 1, 0);
                end
            else
                questItem:SetPoint("TOPLEFT", itemChooseText, "BOTTOMLEFT", -3, -5);
                lastFrame = questItem;
            end
            rewardsCount = rewardsCount + 1;
        end
        itemChooseText:SetText(REWARD_CHOICES);
    else
        ArmoryQuestInfoItemChooseText:Hide();
    end

    -- Setup spell rewards
    if ( numQuestSpellRewards > 0 ) then
        questItemReceiveText:SetText(REWARD_ITEMS);
        local learnSpellText = ArmoryQuestInfoSpellLearnText;
        learnSpellText:Show();
        learnSpellText:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 3, -5);

        texture, name, isTradeskillSpell, isSpellLearned = Armory:GetQuestLogRewardSpell();

        if ( isTradeskillSpell ) then
            learnSpellText:SetText(REWARD_TRADESKILL_SPELL);
        elseif ( not isSpellLearned ) then
            learnSpellText:SetText(REWARD_AURA);
        else
            learnSpellText:SetText(REWARD_SPELL);
        end

        rewardsCount = rewardsCount + 1;
        questItem = _G["ArmoryQuestInfoItem"..rewardsCount];
        questItem:Show();
        -- For the tooltip
        questItem.rewardType = "spell";
        SetItemButtonCount(questItem, 0);
        SetItemButtonTexture(questItem, texture);
        _G["ArmoryQuestInfoItem"..rewardsCount.."Name"]:SetText(name);
        questItem:SetPoint("TOPLEFT", learnSpellText, "BOTTOMLEFT", -3, -5);
        lastFrame = questItem;
    else
        ArmoryQuestInfoSpellLearnText:Hide();
    end

    -- Setup mandatory rewards
    if ( numQuestRewards > 0 or money > 0 or honor > 0 or arenaPoints > 0 or talents > 0 or xp > 0 or playerTitle ) then
        questItemReceiveText:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", 3, -5);
        questItemReceiveText:Show();		
        lastFrame = questItemReceiveText;
        -- Money rewards
        if ( money > 0 ) then
            MoneyFrame_Update("ArmoryQuestInfoMoneyFrame", money);
            ArmoryQuestInfoMoneyFrame:Show();
        end
        -- XP rewards
        lastFrame = QuestInfo_ToggleRewardElement("ArmoryQuestInfoXPFrame", xp, "Points", lastFrame);		
        -- Honor rewards
        lastFrame = QuestInfo_ToggleRewardElement("ArmoryQuestInfoHonorFrame", honor, "Points", lastFrame);
        -- Arena point rewards
        lastFrame = QuestInfo_ToggleRewardElement("ArmoryQuestInfoArenaPointsFrame", arenaPoints, "Points", lastFrame);		
        -- Talent rewards
        lastFrame = QuestInfo_ToggleRewardElement("ArmoryQuestInfoTalentFrame", talents, "Points", lastFrame);
        -- Title reward
        lastFrame = QuestInfo_ToggleRewardElement("ArmoryQuestInfoPlayerTitleFrame", playerTitle, "Title", lastFrame);
        -- Item rewards
        local index;
        local baseIndex = rewardsCount;
        for i = 1, numQuestRewards, 1 do
            index = i + baseIndex;
            questItem = _G["ArmoryQuestInfoItem"..index];
            questItem.type = "reward";
            numItems = 1;
            name, texture, numItems, quality, isUsable = Armory:GetQuestLogRewardInfo(i);
            questItem:SetID(i)
            questItem:Show();
            -- For the tooltip
            questItem.rewardType = "item";
            _G["ArmoryQuestInfoItem"..index.."Name"]:SetText(name);
            SetItemButtonCount(questItem, numItems);
            SetItemButtonTexture(questItem, texture);
            if ( isUsable ) then
                SetItemButtonTextureVertexColor(questItem, 1.0, 1.0, 1.0);
                SetItemButtonNameFrameVertexColor(questItem, 1.0, 1.0, 1.0);
            else
                SetItemButtonTextureVertexColor(questItem, 0.9, 0, 0);
                SetItemButtonNameFrameVertexColor(questItem, 0.9, 0, 0);
            end

            if ( i > 1 ) then
                if ( mod(i, 2) == 1 ) then
                    questItem:SetPoint("TOPLEFT", "ArmoryQuestInfoItem"..(index - 2), "BOTTOMLEFT", 0, -2);
                    lastFrame = questItem;
                else
                    questItem:SetPoint("TOPLEFT", "ArmoryQuestInfoItem"..(index - 1), "TOPRIGHT", 1, 0);
                end
            else
                questItem:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", -3, -5);
                lastFrame = questItem;
            end
            rewardsCount = rewardsCount + 1;
        end
    else	
        questItemReceiveText:Hide();
    end
    
    lastFrame = ArmoryQuestInfo_DoReputations(lastFrame);
    
    ArmoryQuestInfoRewardsFrame:Show();
    return ArmoryQuestInfoRewardsFrame, lastFrame;
end

function ArmoryQuestLogUpdateQuestCount(numQuests)
    ArmoryQuestLogQuestCount:SetFormattedText(QUEST_LOG_COUNT_TEMPLATE, numQuests, MAX_QUESTLOG_QUESTS);
    local dailyQuestsComplete = Armory:GetDailyQuestsCompleted();
    if ( dailyQuestsComplete > 0 ) then
        ArmoryQuestLogDailyQuestCount:SetFormattedText(QUEST_LOG_DAILY_COUNT_TEMPLATE, dailyQuestsComplete, Armory:GetMaxDailyQuests());
        ArmoryQuestLogDailyQuestCount:Show();
    else
        ArmoryQuestLogDailyQuestCount:Hide();
    end
end

function ArmoryQuestLog_SetFirstValidSelection()
    local selectableQuest = ArmoryQuestLog_GetFirstSelectableQuest();
    ArmoryQuestLog_SetSelection(selectableQuest);
    ArmoryQuestLogListScrollFrameScrollBar:SetValue(0);
end

function ArmoryQuestLog_GetFirstSelectableQuest()
    local numEntries = Armory:GetNumQuestLogEntries();
    local index = 0;
    local questLogTitleText, level, questTag, suggestedGroup, isHeader, isCollapsed;
    for i = 1, numEntries do
        index = i;
        questLogTitleText, level, questTag, suggestedGroup, isHeader, isCollapsed = Armory:GetQuestLogTitle(i);
        if ( questLogTitleText and not isHeader ) then
            return index;
        end
    end
    return 0;
end

ARMORY_QUEST_TEMPLATE_LOG = {
    elements = {
        ArmoryQuestInfo_ShowTitle, 5, -5,
        ArmoryQuestInfo_ShowObjectivesText, 0, -5,
        ArmoryQuestInfo_ShowTimer, 0, -10,
        ArmoryQuestInfo_ShowObjectives, 0, -10,
        ArmoryQuestInfo_ShowRequiredMoney, 0, 0,
        ArmoryQuestInfo_ShowGroupSize, 0, -10,
        ArmoryQuestInfo_ShowDescriptionHeader, 0, -10,
        ArmoryQuestInfo_ShowDescriptionText, 0, -5,
        ArmoryQuestInfo_ShowRewards, 0, -10,
        ArmoryQuestInfo_ShowSpacer, 0, -10
    }
}

function ArmoryQuestInfo_Display(template, parentFrame)
    local lastFrame = nil;
    local shownFrame = nil;	
    local elementsTable = template.elements;

    if ( ArmoryQuestInfoFrame.material ~= material ) then
        ArmoryQuestInfoFrame.material = material;	
        local textColor, titleTextColor = GetMaterialTextColors(material);	
        -- headers
        ArmoryQuestInfoTitleHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
        ArmoryQuestInfoDescriptionHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
        ArmoryQuestInfoObjectivesHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
        ArmoryQuestInfoRewardsHeader:SetTextColor(titleTextColor[1], titleTextColor[2], titleTextColor[3]);
        -- other text
        ArmoryQuestInfoDescriptionText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoObjectivesText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoGroupSize:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoRewardText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        -- reward frame text
        ArmoryQuestInfoItemChooseText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoItemReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoSpellLearnText:SetTextColor(textColor[1], textColor[2], textColor[3]);		
        ArmoryQuestInfoHonorFrameReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoArenaPointsFrameReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoTalentFrameReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoXPFrameReceiveText:SetTextColor(textColor[1], textColor[2], textColor[3]);
        ArmoryQuestInfoReputationText:SetTextColor(textColor[1], textColor[2], textColor[3]);
    end

    for i = 1, #elementsTable, 3 do
        shownFrame, bottomShownFrame = elementsTable[i]();
        if ( shownFrame ) then
            shownFrame:SetParent(parentFrame);
            if ( lastFrame ) then
                shownFrame:SetPoint("TOPLEFT", lastFrame, "BOTTOMLEFT", elementsTable[i+1], elementsTable[i+2]);
            else
                shownFrame:SetPoint("TOPLEFT", parentFrame, "TOPLEFT", elementsTable[i+1], elementsTable[i+2]);			
            end
            lastFrame = bottomShownFrame or shownFrame;
        end
    end
end