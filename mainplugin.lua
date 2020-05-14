--[[
    HttpService must be enabled for this to work!
    This script is obfuscated due to having sensitive content (such as links to private repositories)

    Please do not ask for the source of this script, you are not getting it and I am not giving it to anybody.

    The dependencies that are downloaded from this plugin are used for extra security.
    
    -------------
]]
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
local ToNumber = tonumber;local function decompress(b)local c,d,e="","",{}local f=256;local g={}for h=0,f-1 do g[h]=Char(h)end;local i=1;local function k()local l=ToNumber(Sub(b, i,i),36)i=i+1;local m=ToNumber(Sub(b, i,i+l-1),36)i=i+l;return m end;c=Char(k())e[1]=c;while i<#b do local n=k()if g[n]then d=g[n]else d=c..Sub(c, 1,1)end;g[f]=c..Sub(d, 1,1)e[#e+1],c,f=d,d,f+1 end;return table.concat(e)end;local ByteString=decompress('23Y25327525324Y27625J25H26626125F25324V27623T23T24726T25U25S25Y26124727C25G25F25Y26326325Y25F26626026124928225324L27626P25U25F25W26727C25S24726226025V25E26325U25G28324Z27627N26225U25325927626O28826C25U25H25D26625W28R25827627325F25F25J28X28Z29125U25027627621Z23S25328N27526X25Y28Q28S27626Z26025Y25V27S27B26125S25324X27626C26025E25H29225326D27626729725J25G23X24824825H25Y25C24925S26625F26725E25X25E25G28Y25W28025F25U27D2492AU26224825Y26625V2AX23M23R23K23R2AG26025X26326025R24A2AN28C24826225Y27S28Y24825T25Y26425U2BE29T29V28C24926325E25Y29E29F27526V29J29Q2C02702532732A92AB2AD2AF2AH2AJ2AL2AN2AP2AR2AT2AV2AX25F2AZ2602B12B32B52612B72B92BB2BD2BF2BH28B29X2BK2BM2AW25H2482BZ2BR2BY2C02C229F25B2C529K25326Z2C026F2CA2CC2982CE2AG2AI2AK2AM2AO2AQ2AS2A52CN2AY2B02B22B42B62B82BA25H2BC2BE2BG2BI2D32BL2BN2D72D925J2DB2C12C325324N2DG2C725Y26A2DM2752AA2DO2AE2DQ2CH2DT2CK2DW2AU27D2CO2CQ2CS2E22CV2E42CY2E82D12BJ2EC2D62D82C025E2EH2DD27624J2EM2752DJ25Y26N2EQ2532ES2AC2EU2CG2DS2CJ2DV2CM2F12DZ2CR2E12CU2CW2E52E72D02EA25S2D42ED2FE25Y25R2FH2EJ24V2FL2DI2C026M2FQ2FS2DP2FV2CI2DU2CL2DX2G02CP2E02CT2E32CX2E62CZ2E92D22GA2FC2BO2D925Q2GG2C324R2GJ2FN26L2GN2CD2FU2DR2GR2EY2FZ2AW2G12F42G42F72H12F92G92GB2FD2D925P2HA29F2472C52A027526D28Y2AP2662532712DN2FT2CF2HJ2EX2FY2GU2HN2GW2G22GY2F62H02G72H32FB2D52BO25H2I625X2662EH25324M2762I525J26329127X25U25V26C25F2602AH25S28R25528627C25V26P26625H27S26S28B26325V25329427526Y2B326126Y28G28I28K2532DD26R25U25J27727628Y2E625H25324627H27J26U2632IT29T25Q27Q26127S27U28J25V23W24725Y25X2JA27Y29X2822492C627525C25Y25H2612532C527526K23T26I2472JT27C2LA2JX28J25G24725T2602JO28Y24725V26028K24726126025F24725U25R26627S24B24725W2KG2KU28D28F28H2LF2LH2LJ2B525H2KX25B2762722KK27T2612A62DD26125U25C29Z2862M928Y2EK2762LN25C2612BU25V26G2M52JY25G25324U2792L12CO26G2MX2BW29X2MZ2LE2JZ24N27626S28J2L12KE2632JM2662JO2IT2L32572762682B325F26P2JA2NM2JO25324T2KC24729R2BV25F29W2M42ND2M825E2612JP2MD27528V25F26U25G25Q2MI2HG2ET2ID2EW2FX2GT2F02II2F32G32GZ2G62H22FA2EB2IR2D72BL27C2IX2JR2532J82O726927U25E28R2DH2LB2L32782752PA2BZ28R2DL2ER2HH2OO2FW2GS2EZ2DY2IJ2HP2OW2F82G82H42HV2BO2DW25D28Y25G2M126625J2CP2D92MO27526C2Q62Q825324K2A128Y2Q325H2QD27B2Q829A2902A62O127527I24726C25E25W29225G25G25T28I2632KI27R27T27V2J62KB25127628T2762PH25325J2B32JK2KY25329M29O2I32P72A32A528R2OE2532OG2OI2OK25W2532RT2MF2KL2MI28R2MK2MM2532NR2JS2ND2QM2Q727E2RF27A27C27E2JE2QT27J26R2602MV2MX2J62472532432O22SL2SN29S2B525V2KQ27V28E2ND2LG2LC25G2QX2QZ25G25229F24R27624L24O2532T92T927624E2532RB2C32A02T92RB29E24Z23O27624H2TF2532472782A02782RB24724P25324W2K52FI2MD2TH2TW2752MD2MD2DH29P2U52C32MD28T2RB28525325A2K52752SQ2UM2UR2A02UL28T2UG29F2P62C32UN2942RB2NF2UR29E2MD2V32UN2RB2UT27528T2RT2UL2942UN2C32NR2RO2762942942S82VB2TK2TV24X23W2TV28N2TO29J2TS2752VU2842TE2T92VD2KX2RB2RD2752TG2VP2TH2542762U925629F2DH2FN2C92WG2DK2RK2FN2EP2WJ2FO2WL2GL2WQ25Y2HF2RO2I525H2I72UO2RG2RI2N22P62OG2NY25V2NP2RK2RM28R2RO26F2N627D2WZ2SF2XE24G2O226W25H27N26126625P2SP2T42T628K25G2TL2752U327624S2VP2UW2UL29E2U92UL28N2XV2UL2782DD2UL2A02DH2UL2U52RF2UL2MD2RO2UL2UN2UW2762RB2UN2T92TD2K02RZ29F24B2C62XV2MO29E2RB2782TR27627G2YQ2TE2UC2762472JE2VG2UR25323T2UR2W62N32YT2VO2Z22752TU2T92TX2532WE2NR28T24X29E2WE2ZM2U42VW2TT2TV24N2452S72JQ2VQ2VS2MD2852VV2ZK28431052YS2WE31092VX2ZP2TV2YR29E2VN24L2KX28N2WE2WC2YS2RB2WA310Q27525Q2TC2TB2W72TC310Z2YX29F310S310B310U31152T92FI3113310I2WF2Z82EJ2782UL2V92EJ2752RB2TL2U52U92OE2422VP311J25323R311R2MD2UN311T2VP28T2942V32T92U52YX2XV2RB311X2RB2MD2WE312729P2JE3121310331242YN311S311U2MS2B8311Y2IY2MS2TV2WB312G311R312B2MD2QH312B28T24J312O2YQ311Q311R312S312J2TU312W2532XI312E24I311Q311P3125312I2VP2MD2N431362O1312E27G312R2VP312T2532TB313624Q312Z2532XZ313M3126312J2TE23R240312M2SQ31012TV2U32UK2TE2RB2DH24723N2VP2RB2KB2UQ2YZ25331022Y82532442EJ29E2U02UA2YW314I31152A02SS2C328N2A0311H2C623Z2TV2VY310G31512Z52C6311P275310M2K524129F2T92Y62VQ2NR29E26R2TV315E310G315J315628N3141315923U2K524F2EJ315F31302C62TJ2UP2VY2C624D311527824C2EJ314Y315V2MO313X2C62MD314M2762TQ27624X2SQ2DH2VV253274310Z276316N2C324L2TU28N2YV311J312Y2VZ31592O128N24A311D2C629E2KX276315W3115316U311E2YS314W2W9314Q28N29E248314T2ZC311C2TN317931522842KX278311X27523V314R315X3171317B2DD2UQ2A029E2ZB2C6317M2Y5253315Z317F3162316425331662TM31313177316A311S314128N2MD2SS247315C2RF23Q31152U523P317B3123317J318831802MO31632YE253310G2762UD31672YT316B2A02MD314C2V32A023M2K5315A2U523L2Z82XI2RT318Q2RC2ZX2UH29P2UK2752UN318X319S2UR31902VO23K31103104314A2752VL25331512762V0313N319V319A2EK31022UN2VC2W029P2Y42KX294316Q2TV2UJ31522WB316O253');

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

	W = BitXOR(W, 183)
	X = BitXOR(X, 183)
	Y = BitXOR(Y, 183)
	Z = BitXOR(Z, 183)

    Pos	= Pos + 4;
    return (Z*16777216) + (Y*65536) + (X*256) + W;
end;

local function gBits8()
    local F = BitXOR(Byte(ByteString, Pos, Pos), 183);
    Pos = Pos + 1;
    return F;
end;

local function gBits16()
    local W, X = Byte(ByteString, Pos, Pos + 2);

	W = BitXOR(W, 183)
	X = BitXOR(X, 183)

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
		FStr[Idx] = Char(BitXOR(Byte(Sub(Str, Idx, Idx)), 183))
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
	
		if(Type==1) then Cons = (gBits8() ~= 0);
		elseif(Type==3) then Cons = gFloat();
		elseif(Type==0) then Cons = gString();
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
			Enum		= Inst[1];if Enum <= 31 then if Enum <= 15 then if Enum <= 7 then if Enum <= 3 then if Enum <= 1 then if Enum == 0 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
else 
local A = Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum == 2 then local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;else if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 5 then if Enum > 4 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];else 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
end; elseif Enum == 6 then 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else Stk[Inst[2]]={};end; elseif Enum <= 11 then if Enum <= 9 then if Enum > 8 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
end; elseif Enum == 10 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
else do return end;end; elseif Enum <= 13 then if Enum > 12 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
else if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum == 14 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];else do return end;end; elseif Enum <= 23 then if Enum <= 19 then if Enum <= 17 then if Enum > 16 then if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;else 
local A = Inst[2];
local C = Inst[4];
local CB = A + 2
local Result = {Stk[A](Stk[A + 1],Stk[CB])};
for Idx = 1, C do 
	Stk[CB + Idx] = Result[Idx];
end;
local R = Result[1]
if R then 
	Stk[CB] = R 
	InstrPoint = Inst[3];
else
	InstrPoint = InstrPoint + 1;
end;end; elseif Enum > 18 then Stk[Inst[2]][Inst[3]] = Inst[4];else if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 21 then if Enum > 20 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];else Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);end; elseif Enum > 22 then local B;local A;A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];else Env[Inst[3]] = Stk[Inst[2]];end; elseif Enum <= 27 then if Enum <= 25 then if Enum == 24 then local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;else 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
end; elseif Enum == 26 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];else local T;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 29 then if Enum == 28 then local B;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum > 30 then Stk[Inst[2]]=Env[Inst[3]];else local K;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum <= 47 then if Enum <= 39 then if Enum <= 35 then if Enum <= 33 then if Enum > 32 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==57 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum == 34 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];else if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;end; elseif Enum <= 37 then if Enum > 36 then Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];else InstrPoint=Inst[3];end; elseif Enum > 38 then Stk[Inst[2]][Inst[3]] = Inst[4];else local B;local A;A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];end; elseif Enum <= 43 then if Enum <= 41 then if Enum == 40 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
else Stk[Inst[2]]=Upvalues[Inst[3]];end; elseif Enum == 42 then Stk[Inst[2]] = Inst[3];else local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];end; elseif Enum <= 45 then if Enum > 44 then Stk[Inst[2]]=Upvalues[Inst[3]];else Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum == 46 then Stk[Inst[2]] = Inst[3];else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==57 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum <= 55 then if Enum <= 51 then if Enum <= 49 then if Enum > 48 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};else 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum == 50 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else InstrPoint=Inst[3];end; elseif Enum <= 53 then if Enum == 52 then local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;else Stk[Inst[2]]={};end; elseif Enum == 54 then 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];end; elseif Enum <= 59 then if Enum <= 57 then if Enum == 56 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;else Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum > 58 then 
local A = Inst[2];
local C = Inst[4];
local CB = A + 2
local Result = {Stk[A](Stk[A + 1],Stk[CB])};
for Idx = 1, C do 
	Stk[CB + Idx] = Result[Idx];
end;
local R = Result[1]
if R then 
	Stk[CB] = R 
	InstrPoint = Inst[3];
else
	InstrPoint = InstrPoint + 1;
end;else Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum <= 61 then if Enum == 60 then local A;
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
else local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum == 62 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else Env[Inst[3]] = Stk[Inst[2]];end;
			InstrPoint	= InstrPoint + 1;
		end;
    end;
end;	
return Wrap(Deserialize(), {}, GetFEnv())();
