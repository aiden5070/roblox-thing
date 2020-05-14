--[[
    HttpService must be enabled for this to work!
    This script is obfuscated due to having sensitive content (such as links to private repositories)

    Please do not ask for the source of this script, you are not getting it and I am not giving it to anybody.

    The dependencies that are downloaded from this plugin are used for extra security.
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
local ToNumber = tonumber;local function decompress(b)local c,d,e="","",{}local f=256;local g={}for h=0,f-1 do g[h]=Char(h)end;local i=1;local function k()local l=ToNumber(Sub(b, i,i),36)i=i+1;local m=ToNumber(Sub(b, i,i+l-1),36)i=i+l;return m end;c=Char(k())e[1]=c;while i<#b do local n=k()if g[n]then d=g[n]else d=c..Sub(c, 1,1)end;g[f]=c..Sub(d, 1,1)e[#e+1],c,f=d,d,f+1 end;return table.concat(e)end;local ByteString=decompress('22O21427521621827521421X22122K21S2161Y27922I22121Y22421Z21X22J22522522421621627921Z22J27727922K21T21X2252161W27923B23B21T21Y21T22K28621621B27922Z21Z21Y22M22522I22K21621A27923022522321Z22428221927922G22I28828M21C2791M1M1822Y22522727J1828822J22K22121W21W27C21T28H1629L21621M27923222522K22321S2882271821X28T22L21W22522J29M27827529928127F27923329R23F28K22M21T2232821Z27922O22K22K22G2AD22I2AF2AH2152792792601N27X27522U2212A827G27522S21Z22122429D28Z21Y22728N27923F21Z22L22I2AH21623E27921S2AM22G22J1I171727I22N1622728A21S22L22222L27O2BI28H22K22521Y22K1628S21X1722121T28U21Y1T1O1V1O2BT21Z22221W21Z2281527D29V1727B29D28K1722622121V2252CP2B72B929V1621W22L2212AT2AU27522W2AY21422S2DA22R2162742752BN2AN2BQ2BS2BU2BW2BY2C02C228K28S2C82C72C92CB2CD2CF2C72CI2CK2CM2CO2CQ2CS29U2BB2CV2212CX22I172D92D12D82DA2DC2AU1W2DF2A52DH2DA23C2DL2BM2BO2DQ2BT2212BV2BX27D2DV2C32DY2C62C82CA27M2E32CG2E62CL22I2CN2CP2CR2CT2ED2CW2C62EH2EJ22G2EL2DB2DD21421K2EQ2792DI22123H2EV2DN2EX2BR2EZ2F12DU2C12F52C52E02F92CC2CE2FC2CJ2FE2FG2EA2FJ2272EE2EG2EI2DA22L2FQ2EN27921O2FV2B42DA2342G02142DO2BP2G32DS2F22BZ2G72DX2G92F82E22GD2E52GF2E82FH2EB2CU2FL2CY2EJ2282GQ2FS21C2GU2ES2212352GY2H02EY2H32G62DW2C42DZ2H92FA2HB2CH2HD2FF2E92FI2EC2GK2HI2FN2DA2292HM2DD21G2HP2FX2362HT2G22DR2F02DT2F32H62HZ2F72E12I22E42I42E72I62HF2GJ2GL2FM2GN22122A2IF2AU182DF28O27523E28K2C021T21622Q2EW2DP2H22IO2H42F42H72I02IU2GC2IW2FD2HE2GI2I92J22CY22I2JE22221T2FQ21621L2792JD22G21W2AG27C27Q23F22K21Z27I22728221229P28822423221T22I29D22Z29U21W27R2AJ27522T2CE21Y22T29Z2A127W21728P22522G21628W27528K2FF22I2161929329522X21W2K02B722929B21Y29D29F2A12241J182212222KG27Z2BB29L162DG22N22122I21Y21622W2792371M239182KY2882ME2L22A21822621Z2KU28K1827L2MJ21Y21Z22K1822522821T29D14182232LL2LZ29W29Y2242A02MJ2ML2MN22I2M228427522P2LP29E21Y2BJ2L527521Y22522N2BD2752322MM28U2LE21K27927L22N21Y2D422423B2N62N827W21D28X2M52E023B2O12D62BB2O32MI27W2NW27522Z2A12M52LJ21W2KS21T2KU2K02M721027923J2CE22K2NS22I2OP2KU21621E2LH182B52D522K2BA2N52MI2MK2BG27K2832AA29R22X22J2292NJ2IL2JK2IN2G52IQ2HY2F62GA2HA2JT2I52GH2I82HH2EF2J327B2882K423F2JJ2H12PP2IP2H52PS2H82JR2FB2HC2IY2PY2HG2FK2Q12CY22J22L27L27J27Z2MW2K921Z28A2K42KW2142KE2PA23I29F22L2822ER2MF2M72LA2142R12D92822K627522X2C821T2312282QT28A2BF2BH2BJ23C2Q72HV2JM2HX2G82JQ2GB2QF2IX2GG2I72QJ2IA2QL2EH2C328J2KQ2N221T22G2C92EJ2NQ2QY2S82SA21621N2BE2AE28K23F2SF22K2AP2AR28V27Y27I22J27E2QX2B522329F2SM28Z2SG2B327A2KG225182P92EF27E23J2RQ2JL2PQ2QB2RU2IT2RW2I32JU2IZ2JW2Q02GM29922I2222212KI152QQ21T2QS2CP2QV2SC2JB21423C2O92C82162QX2KE2M52FM2U322321V2P32P523F22L2232AH22J22J2262A021W2LN29C29E29G27Q2LG23O2792NL2142UX2UZ2UW2V127529O2752ER21O2GS2791P27921Q29P2791Q2792JI2752VH2142VJ22R2792VM2752VO21422T2792VS2KX2VT2792RP27523D2K72BE27923G27923H27923I2OV2792342792352792362MA27923827923927923A2852792202792212792222792232NX2792252792262792272BM27921T27921U27921V27921W27921X27921Y27U28X27922J2XI27Y2XL27522K27922M2XP2XR2752XQ2FS2XU21422N2792XY2752Y021422A2792Y427522B2792Y82Y727922C2YC2YE2752YD2YG27922D27922E27924J2YN2YP27524P27925327924L27923V2YX27923W2Z02Z227523X2792Z52Z427923Y2Z92ZB27523Z2792ZE2ZD2ZF2792UV2752ZK2142ZM2ZO27923P27923R2ZS2ZU2752482792ZX2ZW27924A310131032753102310527924B27924C27924E310C310E275310D310G27924F279240279245279246310P310R275247279310U310T310V310Y310X27526G27926H27926N311531172753116275268279311C311B311D279269311H311J275311I311L27926A311O311Q275311P27526B279311V311U311W27926D312031222753121312427926F3127312927531282752R82112792UE2752LW22328U22622729U21U21V21W21X2MS22G22H2KQ22K22L22M22N22822922A216162V91Q1R1S1T1U1V1G1H1O151L23B131922W1E1B1C1D23A1210111I1A1J1F1416171K1M1N23723922B22D23818181X1Y22E22022C27T312G2EN1O2GR2752AW2L927Y2LW2A12SD29C28K28M2U12OD2BC2UX2QN222314K312G2R822L22G22G28K31511I22W315122Q2M922Y2792R82U128E275315I214315K315M279315K2NE214315Q315S2791X315U315W275315V315Y315X214315Z31623161316331663161315Q2QX316A2792QX2OU275316E214316G316I279316J316F316K316N316M316P316H316O316R2752QX2KK275316W214316Y316Y21327931722753174214317631783173317A3175317B3177317D3176316Y2RD2142V42DD315E2V31K2792EN2V42AT314G2AU27T31512L5317T2V42782UX2V428W2ER2V128W2DC1N21427T2L52AT21M1E2UY2142R82142WT3184317J318E28W2R82182VM2L52P4318C1L315L2142U1182W428E31902EO31892FS315V317Y27527G315Q18319721427G31632142QX2DD2OU2U1279312F319J319B312F27T2OI2AJ27G319J315V2AJ2DC2VA28E315V2AT2182X52L52OU318C318E2L5318H318J2DD318D318G31AC2V5318Q2143135318T318V318X2923191315K315R31932DD31952792V43198279319A319C31AX319E319G2AU319I2FS319L2FS27G319O21431AW27G27G319G27G27T319P316U316R319T319F214319W318V319Z21431A1318F21I31BK318L318F31A831BO31BS2V3318M31AD31BO31AF2M931AI28E318X318Z318V31AN284317T315W319631AX3199319B319D2AU319V2FS31B22DD31B42DD31B63193319Q21431CN316031CJ214319X316431A031A22142VF2DC27431BE2AU1U317P2V231AP2762ER227314Z2162EN162152T331BR27521J31AV31DN2751727931DQ31DP31DO2141O2V9312G2792ER314N27522G2CE2KQ2PG27528628828A28631512AW3151214315A317629227531EI21431EK31EM2792O727531EP21431ER2P427531EU31EL27921F27921H31F027931DK2DD317621M23231BS317Q27631DA31DY31512EN2L5318427G2AT2MK318W31AC2L521A2M9319B2AT28O2181127931FI31B82X028O318327527428O317T21A1H31BS3186319331FT315F31BX29O3151274317S31D631D8317C31FB31GI2AU314M2ER27B27D2SD27I27K27M31EE315A2FS276314V2P929V2DG29T2M5314K24O23431GW2AU24O23A31H827922W23C31HC27524O23I22W317X2R828Y29029N2W521Y21V2MS2NZ2N121S2M52212232FM182151G2792LG2751A27931I731I631I831IB31IA31ID21431I92141B27931II27531IK31IH31IJ31IO2FS31IM1C27931IS27531IU21431IW31IY31IT31J031IV31J131IX279318E27531J621431J831JA31J531JC31J731JD31J931IC21431FU27531JJ31JI2791231JN2791331JQ31JS27531JR31JU31JT2141527931JZ27531K131JY31K031DR31GX31I32V322Z31F931AS31FB31CD2L52UX31AW31KF31BW317Z31DA318231C03185319331KK317T2A527T1F31BS21M318U28O31KG31I728O31FS317J315J31FL2V327531CA2FS28O31L831J628O2K631GG31GA27531LE31BO31JL21G31BX315E28O317Q2AJ319127531AW31912842V428431KG31L731AO2782V4315V316331AT31AX2DD2842T3315O31DY31D828O28E3184318E2DC31LN31BX317J21P31C831DO31LU31L331AO31LY31AO28431M131CU31KC31AX316G27931M82FS315K31CB31FR318V31BP27T31BN2142W031CB275315E2UX27914319331D51E2RP27T31D231CS31LJ2VE31KV318U2L5316Y21M27T278317631GB31GX278278318H317X31BS31841V31BX2W0318B2AU315E2782GR315E28W31CB2WP31KI2LA28E31O927931D72752EN2T32162WV314K31AB317V31AV2VF2UX27T31AB28W2UX21A1I31FL2AT31GG21431DS31MJ31P831MB2752VA31FN31BX31D431FC31ON31MJ2U131CB2162UX1D224132DG31DD2C031PN2XI2C031EC2AX2UX2A121Y21521R27931P42751J279317O275318U31QB28P31QE27523027931QC21423127931QL27531QN31QK31QM31QR31QO31QS31QQ31QT31QW31QV31QY31F831GK31C031E121431E32KP27W315Q31E828928B23B31E62142KF21Y22L21X222315731GX31HG314L1N2152V72751S27931RS31RR31RT31RW2751T27931RZ31RY31S031S331S231S521431S121431PJ31PJ31RU21431O627531G631SF31Q531GX31RQ317J31F831P631MW31D52DD31OV2DD31FF31BW317A31AI31KY2AU1R318V31GX31G331KP31L431MR28431G031MA31D52JB28O31722AT31ME31JL31TC31FX31FL318N31G131FL31G431G62AT31G831NV31JL31G831L331GE31BS31CB31PJ31ST27531HL28X2BA28M31LL2NF28I29F2CF2MV2NJ28T29V31HV31HX31HZ28K1I31I12OI2141M29331UM275318831UO31HD31UR2DE31US31EF31UU317M21431UX31UZ31QF2DD31UJ31N931PA31NC31FC27531NG31GG27T31NJ31BS31CJ31A031JL31CJ31KW31NH31AS318A318F2DD318K2V131FG317U319331A02AU31TG31V431SR31V631OL2752WP31D52NL28E31VX31S931GL31Q427631OS31AA318E31VX31AB31O331LS2VF2ER2NL31MI31P231P428E31SN314G31P92GR31P931CB22V31BW31WN2AU31OC31DO31OF31KJ31L42R831AW315Q319J284319E312D31DY31AW31T227831X427931X631VJ31M231KN27528O31X831SU31PG31BW31TW31GL31OQ31HM31E427W2ER2B02A82U12RM2BI282315Q2AB22K2PJ2PL22331RD2NG2LQ2NJ2822UX2NN2NP316G2L12N72A12T02S928M31HM31U2216316Y2941823021Z2NZ2O127Q1821631IW31YS31YU31YW2B628U2242LV29G29X2OG2LO182QN2UI2A222J21531U421424Q27931ZL27531ZN31ZK27924R31ZR27924S31ZU31ZW27531ZV27524T279320132003202320527524U27924V27924G320B320D275320C320F31ZM320E21424I279320L275320N2142YO2FS31ZJ31VI31SN27931NA2FS31F131GG31FG31JL2VC31FJ31FY31AC27T1831DM28E31P131922EN31XE31MT2AU27G31AN31LZ31BD31MP315V31X33160315V28O31M5321I31BJ31GX319U31CQ31602L52842OI31AR321Q319B315Q2V42AJ31XM31CL31CI31BJ31MY321K31FR31TN31BW31LF31JL31WY320U31AO31BY319331M931JZ31GG2DC31TX319K312G2ER2FX2DK322U2ET2DG2FX2FZ322X2212GX32322HS32322IK2U12JD22I2JF31R331R531E52QX31Y42P12242OS2DG31XX2822U12U32OS31YN31U131HO31W831UK29522V22I29928922A31YY2MG31ZE2UJ27W31F424M27924N27925427925527925627925727925827925A324L27925B324O324Q275324P27524W279324V324U324W324Z27524X2793252325127924Y325021424Z324R214250279252325E325G2752YU2FS31F431NN27T315K2V431VZ31KQ31MW321B31L631FL2ER2V4321A31MW2842U131XI321S31N731NQ318F315Q31UY31XP2AU31F131O3318331JL29231AI28431992VF31672142BL315V31M92SI315Q27G31LG214321331TH312F2OU319S2M9312F326U31TE2VB31BS21K31QH2OU31CJ31G531AO31GD31G931JL327B32792L5312F322G322S31AI31A331AS318E278312F31K531O3322Q31GL2ZM21M2TB31OO31DU31DY317R31VM31B8327X31VT31D831EE31D831OR31GX21M2VJ2R831VI31X92W73287318931WA317Q2JI31N431W931TV31AS1D31BS325O327X322431FB31XM322P31MP2AT328T322M2FS328W32802QX31AW31SN2OU325P31NN3285318F314G22S31DA326731OY31DV31TZ317E2NW31DW318F2K629O2OI27T2KK31NE329G329L2L531722V7329U2142K631ML329P2142SI329S31DY1O321B317231Q4329Y2K629232A22VC32A531FB329Y31722P432AB21431EZ32A22O732AG319332AI21431F132AL31BR3275319331LL2NL31RZ329T32A8328232AL2LG32A231DM32AQ27T32AS31II32AL31IS32A231I732B9329H318F3172318E32AL31KU32AX27T328P2L521M31JO2L53294329I2L510328231BW2L531FU2V428O31JO31VN31TL32BZ321B32C231L431JV2AU28W31W431L528W31QH31SN326S32CI31NO275233326528W31NG322L28O31K331K431X031FR22431BW2Q632CJ31JL32D0317J318U28W31352V32WY28O31P931GB31OV31KM329L32C831AC2VA32C331D131N1328131GB32CF329L28W317232C52V531C031P331FM328N31PB31R132DY31MJ328A31AC31SZ328M31T7317J31A721431SC31AW31G031S8321631KV31X932E42AU31L22DD32CW32DG27831D7325X2FT2FS32CE32EF31AC328Z28O31SE32CD31VS31MP28W31SC31XF31XN31LT31BW31V332ES318C31X932DF32EB32DH31MP28O2VF2DD31OK32ER318V32BA31X9317231JR31XB31BS31I331LW21431SG32EI31AO321731L42AT32FR316031Q62AU319Y31T331AO32FB31LZ28432DI316031Q831CO31XJ31AO321K329L2843172317O2OI28431KX321L32BI32BZ31M331CW31MP27G32GC3229318H31MV32FL3164317231UL3220214318U28E31M531UP32BZ31CJ31K8275312F31M931BG31B72V42OU32G7316R2OU32GA31NN31FP31MP2KK32BV316Z32HS22X31B132HS32GZ2OU32GJ32EQ316R2K62AJ2V4312F32HJ312F312F32HM2KK32FG2AU31B731OZ316X31L531MP317231UX2792KK31D52OI312F31722KK2V42KK32HJ2KK2KK32HM317231KA31V232992AU2KK2NW32IE317E32612752NW31QH31F531VJ2OI2KK3172317231AW31TG32G0329Z31QY317A2K631BF32HS2K631722V4317232HR32JE316R2V42K632CO32JA32JM32I0312F31F832JQ318U31723224318E2NW2DM31K2317E31SR322R275');

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

	W = BitXOR(W, 40)
	X = BitXOR(X, 40)
	Y = BitXOR(Y, 40)
	Z = BitXOR(Z, 40)

    Pos	= Pos + 4;
    return (Z*16777216) + (Y*65536) + (X*256) + W;
end;

local function gBits8()
    local F = BitXOR(Byte(ByteString, Pos, Pos), 40);
    Pos = Pos + 1;
    return F;
end;

local function gBits16()
    local W, X = Byte(ByteString, Pos, Pos + 2);

	W = BitXOR(W, 40)
	X = BitXOR(X, 40)

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
		FStr[Idx] = Char(BitXOR(Byte(Sub(Str, Idx, Idx)), 40))
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
	
		if(Type==3) then Cons = (gBits8() ~= 0);
		elseif(Type==1) then Cons = gFloat();
		elseif(Type==2) then Cons = gString();
		end;
		
		Consts[Idx] = Cons;
	end;
Chunk[3] = gBits8();for Idx=1,gBits32() do Lines[Idx]=gBits32();end;for Idx=1,gBits32() do Functions[Idx-1]=Deserialize();end;for Idx=1,gBits32() do 
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
local PCall = pcall
local function Wrap(Chunk, Upvalues, Env)
	local Instr = Chunk[1];
	local Proto = Chunk[2];
	local Params = Chunk[3];

	return function(...)
		local InstrPoint = 1;
		local Top = -1;

		local Args = {...};
		local PCount = Select('#', ...) - 1;

		local function Loop()
			local Instr  = Instr; 
			local Const  = Const; 
			local Proto  = Proto; 
			local Params = Params;

			local _R = _R
			local Vararg = {};

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
				Enum		= Inst[1];if Enum <= 52 then if Enum <= 25 then if Enum <= 12 then if Enum <= 5 then if Enum <= 2 then if Enum <= 0 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum == 1 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
else local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end; elseif Enum <= 3 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum > 4 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];else local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 8 then if Enum <= 6 then 
local A = Inst[2]
Stk[A] = Stk[A]()
 elseif Enum == 7 then Upvalues[Inst[3]]=Stk[Inst[2]];else 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 10 then if Enum > 9 then Stk[Inst[2]]=Env[Inst[3]];else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==47 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum == 11 then local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 18 then if Enum <= 15 then if Enum <= 13 then local T;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end; elseif Enum > 14 then Stk[Inst[2]]=#Stk[Inst[3]];else 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 16 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
 elseif Enum == 17 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else Stk[Inst[2]]=(Inst[3]~=0);end; elseif Enum <= 21 then if Enum <= 19 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
 elseif Enum == 20 then if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 23 then if Enum == 22 then Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];else 
local A = Inst[2];
local Index = Stk[A]
local Step = Stk[A + 2];
if (Step > 0) then 
	if (Index > Stk[A+1]) then
		InstrPoint = Inst[3];
	else
		Stk[A+3] = Index;
	end
elseif (Index < Stk[A+1]) then
	InstrPoint = Inst[3];
else
	Stk[A+3] = Index;
end
end; elseif Enum == 24 then local T;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;else if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 38 then if Enum <= 31 then if Enum <= 28 then if Enum <= 26 then 
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
end; elseif Enum > 27 then 
do return Stk[Inst[2]] end
else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 29 then 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
 elseif Enum > 30 then local K;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
end; elseif Enum <= 34 then if Enum <= 32 then Stk[Inst[2]]={}; elseif Enum == 33 then Stk[Inst[2]][Inst[3]] = Inst[4];else local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 36 then if Enum > 35 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
else Stk[Inst[2]]=Upvalues[Inst[3]];end; elseif Enum > 37 then Stk[Inst[2]] = Inst[3];else local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];end; elseif Enum <= 45 then if Enum <= 41 then if Enum <= 39 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
 elseif Enum == 40 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
else InstrPoint=Inst[3];end; elseif Enum <= 43 then if Enum > 42 then Stk[Inst[2]] = Inst[3];else local B;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum == 44 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
else 
local A = Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum <= 48 then if Enum <= 46 then local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A]())
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results= { Stk[A](Unpack(Stk, A + 1, Top)) };
Edx= 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3]; elseif Enum == 47 then Stk[Inst[2]]=Stk[Inst[3]];else if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 50 then if Enum > 49 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
end; elseif Enum == 51 then local A;Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 78 then if Enum <= 65 then if Enum <= 58 then if Enum <= 55 then if Enum <= 53 then Stk[Inst[2]]={}; elseif Enum > 54 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;else do return end;end; elseif Enum <= 56 then Stk[Inst[2]][Inst[3]] = Inst[4]; elseif Enum == 57 then 
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
end;else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==47 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum <= 61 then if Enum <= 59 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]]; elseif Enum == 60 then local T;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;else Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum <= 63 then if Enum > 62 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum == 64 then if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else Stk[Inst[2]]=(Inst[3]~=0);end; elseif Enum <= 71 then if Enum <= 68 then if Enum <= 66 then Stk[Inst[2]]=Stk[Inst[3]]; elseif Enum == 67 then local Step;local Index;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
Index= Stk[A]
Step= Stk[A + 2];
if (Step > 0) then 
	if (Index > Stk[A+1]) then
		InstrPoint = Inst[3];
	else
		Stk[A+3] = Index;
	end
elseif (Index < Stk[A+1]) then
	InstrPoint = Inst[3];
else
	Stk[A+3] = Index;
end
else Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];end; elseif Enum <= 69 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum > 70 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
else local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A]())
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results= { Stk[A](Unpack(Stk, A + 1, Top)) };
Edx= 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end; elseif Enum <= 74 then if Enum <= 72 then 
do return Stk[Inst[2]] end
 elseif Enum == 73 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else Env[Inst[3]] = Stk[Inst[2]];end; elseif Enum <= 76 then if Enum > 75 then Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};else 
local A = Inst[2];
local Index = Stk[A]
local Step = Stk[A + 2];
if (Step > 0) then 
	if (Index > Stk[A+1]) then
		InstrPoint = Inst[3];
	else
		Stk[A+3] = Index;
	end
elseif (Index < Stk[A+1]) then
	InstrPoint = Inst[3];
else
	Stk[A+3] = Index;
end
end; elseif Enum == 77 then 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 91 then if Enum <= 84 then if Enum <= 81 then if Enum <= 79 then local T;local Edx;local Results,Limit;local B;local A;
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end; elseif Enum > 80 then Stk[Inst[2]]=Upvalues[Inst[3]];else if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 82 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
 elseif Enum == 83 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];else local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 87 then if Enum <= 85 then Env[Inst[3]] = Stk[Inst[2]]; elseif Enum == 86 then 
local A = Inst[2]
Stk[A] = Stk[A]()
else local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Results,Limit= _R(Stk[A]())
Top = Limit + A - 1
Edx= 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 89 then if Enum > 88 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum == 90 then Upvalues[Inst[3]]=Stk[Inst[2]];else Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];end; elseif Enum <= 98 then if Enum <= 94 then if Enum <= 92 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
 elseif Enum > 93 then InstrPoint=Inst[3];else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
end; elseif Enum <= 96 then if Enum == 95 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
else local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum == 97 then 
local A = Inst[2];
local Step = Stk[A + 2];
local Index = Stk[A] + Step;
Stk[A] = Index;
if (Step > 0) then 
	if (Index <= Stk[A+1]) then
		InstrPoint = Inst[3];
		Stk[A+3] = Index;
	end
elseif (Index >= Stk[A+1]) then
	InstrPoint = Inst[3];
	Stk[A+3] = Index;
end
else Stk[Inst[2]]=#Stk[Inst[3]];end; elseif Enum <= 101 then if Enum <= 99 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env); elseif Enum == 100 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum <= 103 then if Enum == 102 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];else do return end;end; elseif Enum > 104 then 
local A = Inst[2];
local Step = Stk[A + 2];
local Index = Stk[A] + Step;
Stk[A] = Index;
if (Step > 0) then 
	if (Index <= Stk[A+1]) then
		InstrPoint = Inst[3];
		Stk[A+3] = Index;
	end
elseif (Index >= Stk[A+1]) then
	InstrPoint = Inst[3];
	Stk[A+3] = Index;
end
else local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end;
				InstrPoint	= InstrPoint + 1;
			end;
		end;

		A, B = _R(PCall(Loop))
		if not A[1] then
			local line = Chunk[7][InstrPoint] or '?'
			error('ERROR IN IRONBREW SCRIPT [LINE ' .. line .. ']:' .. A[2])
		else
			return Unpack(A, 2, B)
		end;
	end;
end;	
return Wrap(Deserialize(), {}, GetFEnv())();
