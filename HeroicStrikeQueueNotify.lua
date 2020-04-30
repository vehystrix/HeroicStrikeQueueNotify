function HeroicStrikeQueueNotify_Load(frame)
	if (config_var == nil) then
		config_var = {};
		config_var.display_icon = true;
		config_var.play_sound = true;
		config_var.OHtime = 0.3;
		config_var.leeway = 0.7;
	end
	
	HeroicStrikeQueueNotifyConfigFrame_CancelOrLoad();

    --respond to the System Messages in Chat.
    --
    frame:RegisterEvent("CHAT_MSG_SYSTEM");
end

function HeroicStrikeQueueNotifyConfigFrame_Event(frame, event, arg1, ...)

end