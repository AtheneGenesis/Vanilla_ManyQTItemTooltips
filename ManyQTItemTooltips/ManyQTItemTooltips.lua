local Old_SetItemRef;function MQTIT_L()Old_SetItemRef=SetItemRef;SetItemRef=New_SetItemRef;for i=1,20do table.insert(UISpecialFrames,"MQTIT_Tooltip_"..i);end end function New_SetItemRef(l,t,m)if m=="RightButton"then Old_SetItemRef(l,t,m)local _,_,j=string.find(l,"item:(%d*):")local _,_,e=string.find(l,"enchant:(%d*)")if(j)or(e)then local q,t,r,g,b if(j)then _,_,q,_,_,_,_,_,t=GetItemInfo(j)if(q)then r,g,b=GetItemQualityColor(q)getglobal("ItemRefTooltip"):SetBackdropBorderColor(r,g,b)end elseif(e)then t="Interface\\Icons\\Spell_Holy_Greaterheal";end if(t)then getglobal("ItemRefTooltipTexture2"):SetWidth(36)getglobal("ItemRefTooltipTexture2"):SetHeight(36)getglobal("ItemRefTooltipTexture2"):SetTexture(t)getglobal("ItemRefTooltipTexture2"):SetTexCoord(0.08,0.92,0.08,0.92)getglobal("ItemRefTooltipTexture2"):ClearAllPoints()getglobal("ItemRefTooltipTexture2"):SetPoint("TOPLEFT","ItemRefTooltip","TOPLEFT",-38,-5)getglobal("ItemRefTooltipTexture2"):SetDrawLayer("ARTWORK")getglobal("ItemRefTooltipTexture2"):Show()getglobal("ItemRefTooltipTexture3"):SetWidth(64)getglobal("ItemRefTooltipTexture3"):SetHeight(64)getglobal("ItemRefTooltipTexture3"):SetBlendMode("BLEND")getglobal("ItemRefTooltipTexture3"):SetTexture("Interface\\AddOns\\ManyQTItemTooltips\\border")getglobal("ItemRefTooltipTexture3"):ClearAllPoints()getglobal("ItemRefTooltipTexture3"):SetPoint("CENTER","ItemRefTooltipTexture2","CENTER")getglobal("ItemRefTooltipTexture3"):SetDrawLayer("OVERLAY")getglobal("ItemRefTooltipTexture3"):Show()else getglobal("ItemRefTooltipTexture2"):Hide()getglobal("ItemRefTooltipTexture3"):Hide()end end else Old_SetItemRef(l,t,m)if(not IsControlKeyDown()and not IsShiftKeyDown()and strsub(l,1,6)~="player")then ItemRefTooltip:Hide()for i=1,20do if(not getglobal("MQTIT_Tooltip_"..i):IsVisible())then getglobal("MQTIT_Tooltip_"..i):Show()if(not getglobal("MQTIT_Tooltip_"..i):IsVisible())then getglobal("MQTIT_Tooltip_"..i):SetOwner(UIParent,"ANCHOR_PRESERVE");end local _,_,j=string.find(l,"item:(%d*):")local _,_,e=string.find(l,"enchant:(%d*)")if(j)or(e)then local q,t,r,g,b if(j)then _,_,q,_,_,_,_,_,t=GetItemInfo(j)if not(t)then _,_,_,_,_,_,_,t=GetItemInfo(j)end if(q)then r,g,b=GetItemQualityColor(q)getglobal("MQTIT_Tooltip_"..i):SetBackdropBorderColor(r,g,b)end elseif(e)then t="Interface\\Icons\\Spell_Holy_Greaterheal";end if(t)then getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetWidth(36)getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetHeight(36)getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetTexture(t)getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetTexCoord(0.08,0.92,0.08,0.92)getglobal("MQTIT_Tooltip_"..i.."Texture2"):ClearAllPoints()getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetPoint("TOPLEFT","MQTIT_Tooltip_"..i,"TOPLEFT",-38,-5)getglobal("MQTIT_Tooltip_"..i.."Texture2"):SetDrawLayer("ARTWORK")getglobal("MQTIT_Tooltip_"..i.."Texture2"):Show()getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetWidth(64)getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetHeight(64)getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetBlendMode("BLEND")getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetTexture("Interface\\AddOns\\ManyQTItemTooltips\\border")getglobal("MQTIT_Tooltip_"..i.."Texture3"):ClearAllPoints()getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetPoint("CENTER","MQTIT_Tooltip_"..i.."Texture2","CENTER")getglobal("MQTIT_Tooltip_"..i.."Texture3"):SetDrawLayer("OVERLAY")getglobal("MQTIT_Tooltip_"..i.."Texture3"):Show()else getglobal("MQTIT_Tooltip_"..i.."Texture2"):Hide()getglobal("MQTIT_Tooltip_"..i.."Texture3"):Hide()end end getglobal("MQTIT_Tooltip_"..i):SetHyperlink(l)return end end end end end