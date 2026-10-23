--!nocheck
--!nolint
-- Obscura VM Protected V2
return (function(...) local _b=(bit32 and bit32.bxor) or function(a,b) local r,p=0,1 while a>0 or b>0 do local aa,bb=a%2,b%2 if aa~=bb then r=r+p end a,b=math.floor(a/2),math.floor(b/2) p=p*2 end return r end local _U=game:GetService("UserInputService") local _P=game:GetService("Players").LocalPlayer local _E=true _U.JumpRequest:Connect(function() if _E and _P.Character then local _H=_P.Character:FindFirstChildOfClass("Humanoid") if _H then _H:ChangeState(Enum.HumanoidStateType.Jumping) end end end) end)(...)
