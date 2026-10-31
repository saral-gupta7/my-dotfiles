-- Example: Bind Ctrl + h/j/k/l to move focus between panes
for key, direction in pairs({ h = "left", j = "down", k = "up", l = "right" }) do
	rex.bind("ctrl+" .. key, function(ctx)
		rex.session.focus_direction({ direction = direction })
		return true
	end)
end
