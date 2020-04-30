function HeroicStrikeQueueNotifyConfigFrame_Close()
	config_var.display_icon = HeroicStrikeQueueNotifyConfigFrame_DisplayIcon:GetChecked();
	config_var.play_sound = HeroicStrikeQueueNotifyConfigFrame_PlaySound:GetChecked();
	config_var.OHtime = HeroicStrikeQueueNotifyConfigFrame_OHtime:GetValue();
	config_var.leeway = HeroicStrikeQueueNotifyConfigFrame_leeway:GetValue();
end

function HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad()
	HeroicStrikeQueueNotifyConfigFrame_DisplayIcon:SetChecked(config_var.display_icon);
	HeroicStrikeQueueNotifyConfigFrame_PlaySound:SetChecked(config_var.play_sound);
	HeroicStrikeQueueNotifyConfigFrame_OHtime:SetValue(config_var.OHtime);
	HeroicStrikeQueueNotifyConfigFrame_leeway:SetValue(config_var.leeway);
end

function HeroicStrikeQueueNotifyConfigFrame_Load(panel)
	panel.name = "HeroicStrikeQueueNotify";
	panel.okay = function (self) HeroicStrikeQueueNotifyConfigFrame_Close(); end;
    panel.cancel = function (self)  HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad();  end;
	InterfaceOptions_AddCategory(panel);
end

function HeroicStrikeQueueNotifyConfigFrame_Show()

end

function HeroicStrikeQueueNotifyConfigFrame_Hide()

end