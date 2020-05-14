--[[
Obfuscated to protect the source and methods that can be easily patched or bypassed by exploiters
--]]
local Byte         = string.byte;
local Char         = string.char;
local Sub          = string.sub;
local Concat       = table.concat;
local Insert       = table.insert;
local LDExp        = math.ldexp;
local GetFEnv      = getfenv or function() return _ENV end;
local Setmetatable = setmetatable;
local Select       = select;

local Unpack = unpack or table.unpack;
local ToNumber = tonumber;local function decompress(b)local c,d,e="","",{}local f=256;local g={}for h=0,f-1 do g[h]=Char(h)end;local i=1;local function k()local l=ToNumber(Sub(b, i,i),36)i=i+1;local m=ToNumber(Sub(b, i,i+l-1),36)i=i+l;return m end;c=Char(k())e[1]=c;while i<#b do local n=k()if g[n]then d=g[n]else d=c..Sub(c, 1,1)end;g[f]=c..Sub(d, 1,1)e[#e+1],c,f=d,d,f+1 end;return table.concat(e)end;local ByteString=decompress('1K1V2751U1R2751V23C23I23623E1U1L27922G23E22Z22423E23122X23A23G27E1E27922523E23323727P23I22Z23E23F22422Z23423123I23C27E1H27922H23A23523F28C23123022Z22K23B23A23723F1U27427522A23I28D22A23423F22Y23723E2301U1Q27927M2312851U21P27922A23A23023028D23C21R23D23428N27M21D21R22728Z23I23023E21R23123E21E28D28I23I23723721D1U1J27923022Y23F23421S29U23222Y23A29U1U1S27922J27V2A327922028T22Z22H28528K28M28O27828R28T2351V1U2791P2792AG27922E23022M28P27928323129F22129Z22Y27E1O2792AB2AD2AF2A42752AN23A2AP2AR28L28N27F27922B23423I23F28I2BC23523C2922792BE2372BG2B027927S27521R1B2AZ2B31V1D2752AH1T2791V2742B02CL1V1P2BI2B01F2CG2751R21Q2792CW2B01D21L2CG2AH279131V2CM2CN21R2752CM2CM2782CJ1V2782932CN2DA2DJ2DM2CX2DN2792CM2CA1V2DD1V2D72CS2CN2DF2DR2DE2DQ2DS2DP192CH2752D02751D1A2E82DV2DP2CM2DI2CM2DY2DM2E12DW2CN2DH2E32DL2EG2DN2B22792A42B02B02CZ2EV2CG2D42CG2EU2CI2E32BI2791I2CG2DT2CS27G2DU2EX275152DP2CI142CG1N2792DI2FF2CD2762FA2F52DX2FU2DM2CQ2DN2DW2FF2EP2FU1M2DP2FX2CM2EU2B02FK2G02EA1V2G92CI2D52G62FN2CK1V2F72752F92E12D32GF1V2FM2CD2782AH2B027G2DI29328Q2CN2AH2ER2E52FR2FW279');

local BitLibrary = bit or bit32 or require('bit')
local BitXOR = BitLibrary.bxor

local function gBit(Bit, Start, End)
	if End then
		local Res = (Bit / 2 ^ (Start - 1)) % 2 ^ ((End - 1) - (Start - 1) + 1);
		return Res - Res % 1;
	else
		local Plc = 2 ^ (Start - 1);
        return (Bit % (Plc + Plc) >= Plc) and 1 or 0;
	end;
end;

local Pos = 1;

local function gBits32()
    local W, X, Y, Z = Byte(ByteString, Pos, Pos + 3);

	W = BitXOR(W, 31)
	X = BitXOR(X, 31)
	Y = BitXOR(Y, 31)
	Z = BitXOR(Z, 31)

    Pos	= Pos + 4;
    return (Z*16777216) + (Y*65536) + (X*256) + W;
end;

local function gBits8()
    local F = BitXOR(Byte(ByteString, Pos, Pos), 31);
    Pos = Pos + 1;
    return F;
end;

local function gBits16()
    local W, X = Byte(ByteString, Pos, Pos + 2);

	W = BitXOR(W, 31)
	X = BitXOR(X, 31)

    Pos	= Pos + 2;
    return (X*256) + W;
end;

local function gFloat()
	local Left = gBits32();
	local Right = gBits32();
	local IsNormal = 1;
	local Mantissa = (gBit(Right, 1, 20) * (2 ^ 32))
					+ Left;
	local Exponent = gBit(Right, 21, 31);
	local Sign = ((-1) ^ gBit(Right, 32));
	if (Exponent == 0) then
		if (Mantissa == 0) then
			return Sign * 0; -- +-0
		else
			Exponent = 1;
			IsNormal = 0;
		end;
	elseif (Exponent == 2047) then
        return (Mantissa == 0) and (Sign * (1 / 0)) or (Sign * (0 / 0));
	end;
	return LDExp(Sign, Exponent - 1023) * (IsNormal + (Mantissa / (2 ^ 52)));
end;

local gSizet = gBits32;
local function gString(Len)
    local Str;
    if (not Len) then
        Len = gSizet();
        if (Len == 0) then
            return '';
        end;
    end;

    Str	= Sub(ByteString, Pos, Pos + Len - 1);
    Pos = Pos + Len;

	local FStr = {}
	for Idx = 1, #Str do
		FStr[Idx] = Char(BitXOR(Byte(Sub(Str, Idx, Idx)), 31))
	end

    return Concat(FStr);
end;

local gInt = gBits32;
local function _R(...) return {...}, Select('#', ...) end

local function Deserialize()
    local Instrs = {};
    local Functions = {};
	local Lines = {};
    local Chunk = 
	{
		Instrs,
		Functions,
		nil,
		Lines
	};
	local ConstCount = gBits32()
    local Consts = {}

	for Idx=1, ConstCount do 
		local Type =gBits8();
		local Cons;
	
		if(Type==2) then Cons = (gBits8() ~= 0);
		elseif(Type==0) then Cons = gFloat();
		elseif(Type==1) then Cons = gString();
		end;
		
		Consts[Idx] = Cons;
	end;
Chunk[3] = gBits8();for Idx=1,gBits32() do Functions[Idx-1]=Deserialize();end;for Idx=1,gBits32() do 
									local Descriptor = gBits8();
									if (gBit(Descriptor, 1, 1) == 0) then
										local Type = gBit(Descriptor, 2, 3);
										local Mask = gBit(Descriptor, 4, 6);
										
										local Inst=
										{
											gBits16(),
											gBits16(),
											nil,
											nil
										};
	
										if (Type == 0) then 
											Inst[3] = gBits16(); 
											Inst[4] = gBits16();
										elseif(Type==1) then 
											Inst[3] = gBits32();
										elseif(Type==2) then 
											Inst[3] = gBits32() - (2 ^ 16)
										elseif(Type==3) then 
											Inst[3] = gBits32() - (2 ^ 16)
											Inst[4] = gBits16();
										end;
	
										if (gBit(Mask, 1, 1) == 1) then Inst[2] = Consts[Inst[2]] end
										if (gBit(Mask, 2, 2) == 1) then Inst[3] = Consts[Inst[3]] end
										if (gBit(Mask, 3, 3) == 1) then Inst[4] = Consts[Inst[4]] end
										
										Instrs[Idx] = Inst;
									end
								end;return Chunk;end;
local function Wrap(Chunk, Upvalues, Env)
	local Instr  = Chunk[1];
	local Proto  = Chunk[2];
	local Params = Chunk[3];

	return function(...)
		local Instr  = Instr; 
		local Proto  = Proto; 
		local Params = Params;

		local _R = _R
		local InstrPoint = 1;
		local Top = -1;

		local Vararg = {};
		local Args	= {...};

		local PCount = Select('#', ...) - 1;

		local Lupvals	= {};
		local Stk		= {};

		for Idx = 0, PCount do
			if (Idx >= Params) then
				Vararg[Idx - Params] = Args[Idx + 1];
			else
				Stk[Idx] = Args[Idx + 1];
			end;
		end;

		local Varargsz = PCount - Params + 1

		local Inst;
		local Enum;	

		while true do
			Inst		= Instr[InstrPoint];
			Enum		= Inst[1];if Enum <= 21 then if Enum <= 10 then if Enum <= 4 then if Enum <= 1 then if Enum == 0 then Stk[Inst[2]] = Inst[3];else 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 2 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
 elseif Enum == 3 then Stk[Inst[2]]=Upvalues[Inst[3]];else local Edx;local Results,Limit;local B;local A;A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return end;end; elseif Enum <= 7 then if Enum <= 5 then do return Stk[Inst[2]](); end; elseif Enum > 6 then if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
end; elseif Enum <= 8 then do return end; elseif Enum == 9 then if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==26 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum <= 15 then if Enum <= 12 then if Enum > 11 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
end; elseif Enum <= 13 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
 elseif Enum == 14 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];end; elseif Enum <= 18 then if Enum <= 16 then Env[Inst[3]] = Stk[Inst[2]]; elseif Enum > 17 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 19 then Stk[Inst[2]]=Upvalues[Inst[3]]; elseif Enum > 20 then local B;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];end; elseif Enum <= 32 then if Enum <= 26 then if Enum <= 23 then if Enum > 22 then do return Stk[Inst[2]](); end;else do return end;end; elseif Enum <= 24 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
 elseif Enum > 25 then Stk[Inst[2]]=Stk[Inst[3]];else 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
end; elseif Enum <= 29 then if Enum <= 27 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end; elseif Enum == 28 then local Edx;local Results,Limit;local B;local A;Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return Stk[Inst[2]](); end;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]; 
do return Unpack(Stk, A, Top) end;else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 30 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end; elseif Enum == 31 then 
local A = Inst[2]; 
do return Unpack(Stk, A, Top) end;else InstrPoint=Inst[3];end; elseif Enum <= 37 then if Enum <= 34 then if Enum > 33 then Env[Inst[3]] = Stk[Inst[2]];else InstrPoint=Inst[3];end; elseif Enum <= 35 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
 elseif Enum > 36 then local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==26 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);else 
local A = Inst[2]; 
do return Unpack(Stk, A, Top) end;end; elseif Enum <= 40 then if Enum <= 38 then Stk[Inst[2]]=Env[Inst[3]]; elseif Enum > 39 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];else Stk[Inst[2]] = Inst[3];end; elseif Enum <= 41 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]]; elseif Enum > 42 then Stk[Inst[2]]=Env[Inst[3]];else Stk[Inst[2]]=Stk[Inst[3]];end;
			InstrPoint	= InstrPoint + 1;
		end;
    end;
end;	
return Wrap(Deserialize(), {}, GetFEnv())();
