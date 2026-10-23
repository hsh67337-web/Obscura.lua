--!nocheck
--!nolint
-- Obscura VM Protected
return (function(...) local _uellntv=(bit32 and bit32.bxor) or function(a,b) local r,p=0,1 while a>0 or b>0 do local aa,bb=a%2,b%2 if aa~=bb then r=r+p end a,b=(a-aa)/2,(b-bb)/2 p=p*2 end return r end local _J=game:GetService("UserInputService") local _P=game:GetService("Players").LocalPlayer local _E=true _J.JumpRequest:Connect(function() if _E and _P.Character then local h=_P.Character:FindFirstChildOfClass("Humanoid") if h then h:ChangeState(Enum.HumanoidStateType.Jumping) end end end) end)(...)
