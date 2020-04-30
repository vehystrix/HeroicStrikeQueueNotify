function HeroicStrikeQueueNotifyConfigFrame_Close()
	config_var.display_icon = getglobal(this:GetName().."_DisplayIcon"):GetChecked();
	config_var.play_sound = getglobal(this:GetName().."_PlaySound"):GetChecked();
	config_var.OHtime = getglobal(this:GetName().."_OHtime"):GetValue();
	config_var.leeway = getglobal(this:GetName().."_leeway"):GetValue();
end

function HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad()
	getglobal(this:GetName().."_DisplayIcon"):SetChecked(config_var.display_icon);
	getglobal(this:GetName().."_PlaySound"):SetChecked(config_var.play_sound);
	getglobal(this:GetName().."_OHtime"):SetValue(config_var.OHtime);
	getglobal(this:GetName().."_leeway"):SetValue(config_var.leeway);
end

function HeroicStrikeQueueNotifyConfigFrame_Load(panel)
	panel.name = "HeroicStrikeQueueNotify";
	panel.okay = function (self) HeroicStrikeQueueNotifyConfigFrame_Close(); end;
    panel.cancel = function (self)  HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad();  end;
	InterfaceOptions_AddCategory(panel);
end

function HeroicStrikeQueueNotifyConfigFrame_Show()
	HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad();
end