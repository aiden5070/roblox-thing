--[[
    HttpService must be enabled for this to work!
    This script is obfuscated due to having sensitive content (such as links to private repositories)

    Please do not ask for the source of this script, you are not getting it and I am not giving it to anybody.

    The dependencies that are downloaded from this plugin are used for extra security.

----------------- DO NOT PUBLISH THIS PLUGIN IN YOUR NAME -----------------------
Here are the instructions to properly install.

> Enable HttpRequests
> Create a new script in Workspace or ServerScriptService and paste this code in
> Right click the script and click "save as local plugin"
From there it will automatically install and deploy a secured anti-exploit localscript in StarterPack. Do not delete any folders or scripts created by the plugin, that will break the anti-exploit.
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
local ToNumber = tonumber;local function decompress(b)local c,d,e="","",{}local f=256;local g={}for h=0,f-1 do g[h]=Char(h)end;local i=1;local function k()local l=ToNumber(Sub(b, i,i),36)i=i+1;local m=ToNumber(Sub(b, i,i+l-1),36)i=i+l;return m end;c=Char(k())e[1]=c;while i<#b do local n=k()if g[n]then d=g[n]else d=c..Sub(c, 1,1)end;g[f]=c..Sub(d, 1,1)e[#e+1],c,f=d,d,f+1 end;return table.concat(e)end;local ByteString=decompress('24C25V27525U25Z27525V25A24Y24N25725U26127924H24Y25925325825A24G25225225325U25T27925824G27727924N25625A25225U26327923W23W25625925624N28625U25W27924025825924L25224H24N25U25X27924725224W25825328225Y27924J24H28828M25N27926L26L26R24125225027J26R28824G24N24Y25B25B27C25628H27129L25U25D27924525224N24W25728825026R25A28T24M25B25224G29M27827529928127F27924429R23K28K24L25624W28226027924B24N24N24J2AD24H2AF2AH27T2792751Z26K27X27524D24Y2A827G27524F25824Y25329D28Z25925028N27923K25824M24H2AH25U23L2792572AM24J24G26H27027027I24K27125028A25724M24X24M27O2BI28H24N25225924N27128S25A27024Y25628U25926E26B26C26B2BT25824X25B25824R27227D29V27027B29D28K27025124Y2542522CP2B72B929V27125B24M24Y2AT2AU25V2432AY25V24F2DA24825U24B2BM2BO2BQ2BS2BU2BW2BY2C02C228K28S2C82C72C92CB2CD2CF2C72CI2CK2CM2CO2CQ2CS29U2BB2CV24Y2CX24H2702D92D12D82DA2DC2792632DF2A52DH2DA23N2DL2DN2AN2DP2BT24Y2BV2BX27D2DU2C32DX2C62C82CA27M2E22CG2E52CL24H2CN2CP2CR2CT2EC2CW2C62EG2EI24J2EK2DB2DD25V25F2EP2792DI24Y23Q2EU2752BN2EW2BR2EY2F02DT2C12F42C52DZ2F82CC2CE2FB2CJ2FD2FF2E92FI2502ED2EF2EH2DA24M2FP2EM27525J2FU2B42DA23V2FZ25V2G12BP2G32DR2F12BZ2G72DW2G92F72E12GD2E42GF2E72FG2EA2CU2FK2CY2EI24R2GQ2FR25N2GU2ER24Y23U2GY2H02EX2H32G62DV2C42DY2H92F92HB2CH2HD2FE2E82FH2EB2GK2HI2FM2DA24Q2HM2DD25R2HP2FW23T2HT2DO2H22EZ2DS2F22H62HZ2F62E02I22E32I42E62I62HF2GJ2GL2FL2GN24Y24P2IF2AU26R2DF28O27523L28K2C025625U2492EV2H12DQ2IO2H42F32H72I02IU2GC2IW2FC2HE2GI2I92J22CY24H2JE24X2562FP25U25E2792JD24J25B2AG27C27Q23K24N25827I25028226529P28825324525624H29D24029U25B27R2AJ27524E2CE25924E29Z2A127W25S28P25224J25U28W27528K2FE24H25U26Q29329524225B2K02B724Q29B25929D29F2A125326G26R24Y24X2KG27Z2BB29L2712DG24K24Y24H25925U24327923S26L23Y26R2KY2882ME2L22A226R2512582KU28K26R27L2MJ25925824N26R25224R25629D27326R24W2LL2LZ29W29Y2532A02MJ2ML2MN24H2M228427524A2LP29E2592BJ2L527525925224K2BD2752452MM28U2LE25F27927L24K2592D425323W2N62N827W25M28X2M52DZ23W2O12D62BB2O32MI27W2NW2752402A12M52LJ25B2KS2562KU2K02M726727923O2CE24N2NS24H2OP2KU25U25L2LH26R2B52D524N2BA2N52MI2MK2BG27K2832AA29R24224G24Q2NJ2IL2G22JL2G52IQ2HY2F52GA2HA2JT2I52GH2I82HH2EE2J327B2882K423K2JJ2HV2JM2HX2G82JQ2GB2FA2HC2IY2PY2HG2FJ2Q12CY24G24M27L27J27Z2MW2K925828A2K42KW25V2KE2PA23P29F24M2822EQ2MF2M72LA25V2R02D92822K62752422C825624624R2QS28A2BF2BH2BJ23N2Q72IN2PQ2H52PS2H82JR2QE2IX2GG2I72QI2IA2QK2EG2C328J2KQ2N225624J2C92EI2NQ2QX2S72S925U25C2BE2AE28K23K2SE24N2AP2AR28V27Y27I24G27E2QW2B524W29F2SL28Z2SF2B327A2KG25226R2P92EE27E23O2RP2PP2IP2RS2QB2IT2QD2I32JU2IZ2JW2Q02GM29924H24X24Y2KI2722QP2562QR2CP2QU2SB2JB25V23N2O92C825U2QW2KE2M52FL2U224W25425U24O2TB2702532MY28S24H25324Y24J2FO2HA24J25627024K25224X25725825825424G27026C26A26B26826826E26926F2V326A26926I2V426I26D2CL23R24824C26824823R24W24X25425324K26D25024124M24124P2KE2OK25524A2UV24R24X23U25026A26824B24P24H24C26925A23L25726F24J25124I24J25A24N24E23R2VN27225B2682CQ24K24W24226B24I25324C24424D26F24G26B24L25U26428X27V28B2KF23W2UH24G2UJ27R25P27924124Y2UB27L2KG2LO2LQ29G27Q26R28H26R2A72T52CF26R28D27923N29H2AH24A27R26R27927126R26Z2HU2G324K2YG2712TK2HL2E12XY2V025U25U2792702YO27926Y2P32P523K24M24W2AH24G24G2512A025B2LN29C29E2XT25326Q2322792NL25V2ZE2ZG2ZD2ZI27529O2752EQ25J2792ZO27526A27925H29P2792692792JI2752ZZ25V31012482793104275310625V24E279310A2KX310B2Y327923M2K72BE27923R27923Q27923P2OV27923V27923U27923T2MA27923Z27923Y27923X28527924Z27924Y27924X27924W2NX2792522792512792502BM27925627925527925427925B27925A27925927U28X27924G311Z27Y312227524N27924L312631282753127312A27924K312D312F27524P279312I2752UE312L279312M25V24V279312R275312T312Q312S27924U27924T27922G3132313427522A27922427922M279234313C27923B313F313H27523A279313K313J279239313O313Q275238279313T313S313U27923J313Y3140275313Z314227923I27923G3147314927522R279314C314B27922P314G314I275314H314K27922O27922V27922T314R314T275314S314V27922S27922Z2792ZC275231279315531542792303159315B275315A315D315C25V1J2791I2791K315L315N275315M2751R279315S315R315T2791Q315X315Z275315Y31612791P3164316627531652751O279316B316A316C2791U316G316I275316H316K2791227919316P316R275102791F316V316X275316W316Z316Y25V3170317331723174317731721D279317A275317C25V317E2U02662792YV2752LW24W28U25125029U25525425B25A2MS24J24I2KQ24N24M24L24K24R24Q24P25U2712792VB26826F26E26D26C26J2VD27226M23W26W26Q24326T26O26V26U23X26X26Z26Y26H26P26G26S27327127026N26L26K23S23Y24O24U23Z26R26R26226124T24Z24V2YP317J319I25V26B2GR25V2AW2L927Y2LW2A12SC29C28K28M2U02OD2BC2ZE2QM24X319N2762R724M2UN28K319N26H243319N2492432412792R72U028E27531AK25V31AM31AO27931AM2NE25V31AS31AU27926231AW31AY27531AX31B031AZ25V31B131B431B331B531B831B331AS2QW31BC2792QW2OU27531BG25V31BI31BK27931BL31BH31BM31BP31BO31BR31BJ31BQ31BT2752QW2KK27531BY25V31C031C02XA27531C425V31C631C827931C931C531CA31CD31CC31CF31C727931C02RC25V2ZL2DD31AG2ZK311M2762792ZL2YP319N27T319K2ZI2DC2ZL2782ZE2ZL28W2EQ2ZI28W319I26M25V27T2L52YP25D2L52L52R725V26X25V31D531CL31DG25V2R725Z2P42L52P431DD311328E2U026R310H28E31E02AU284319N31AX31CZ27527G31AS2Y925V27G27G31B525V2QW2DD2OU2U0279317I31EJ31E725V317I27T2OI2AJ27G31EJ31AX2AJ319I2DM28E31AX2YP25Z311Q2L52OU31DD31DF31DO2AU31DJ31DL31DE31F831DP31DR25V318831DU31AN25V31DX26P31FJ31E12EN31DA2FR31E531CS31EN31E931EN31ED2AU31EG2AU31EI2FR31EL2FR27G31EP25V31EA31EC31EF2AU27G27T31EQ31BW31BT31EU31GA31EX31FJ31F031DK31F325V2XK31F62ZF31F827931FA25V319K31FC28W31FE31GR2M931FI31DW27931DY31FN31FJ31FP31E431FQ2ZK31FU31H431FW31B631BE31GV2FR31G12DD31G32DD31G531FQ31ER31EO31FK2AU31EV31HH25V31EY31B631F131GN2ZX319I23S31FQ2EM26D317J2AU2ZE31CX2DG25031A22YS2752712T22XK27525O31HD27531EA25V2702YQ31IP31IL27926B31892792DC2EQ319Q27524J2CE2KQ2PG27528628828A286319N2AW31A424331C629227531JE25V31JG31JI2792O727531JL25V31JN2P427531JQ31JH27925K27925Q31JW27931IH2DD31C625D311H2YP31GW27531GD2FR31CW2FR319K2L531D527G2YP26R24631HR28W2L525X2SH31EN2YP28O25Z27327931KF31G731KI28O31D427531I228O2DC25X26C31HH31D731FQ31KR31AH31HU31IO31CX31KZ31HH31I431I627631C631CX31J92AX2EQ27B27D2SC27I27K27M31JB31A431GV319Y2P929V2DG29T2M52GR22B23V31AC2DD22B23X31M52AU24323N31M927922B23P24331DC2R728Y29029N310M2592542MS2NZ2N12572M52XN2FL26R31L42752LG27531FM31N127931N225V31N531N731N431N927526O27931NC31NB31ND31NG31NF31NI25V26V27931NL27531NN31NK31NM31NR31NO31NS31NQ31NT31NW25V26T27931NZ27531O131NY31O031O531O231O631O431O731N327526Y2YT31OE27531DJ31OG27926W31OJ31OL27531OK31ON31OM25V27227931OS27531OU31OR31OT31IQ2DD31MY31CL31H131HU31CL31K731HA31P531GR2ZE31EA31F727831D031P731D331GS31I731F827T31PE31IW31P631NZ31FI28O31PA29228O31KQ31P831H331HB31AT31P727928O31E331O928O31JV31CU31DK31KS27531Q5275311S28O31GW26U31H631IR31H62842ZL28431PA27528428431PD31B231B52ZL31G92DD2842T231AQ31IV2AU31KP31FJ31D531QF319I31QC31P425D26J31QG31G731AL31FJ31QJ31QN31GR31QH31QO31DK31P831HT31PX27G31BI31FP31QX31RC31P631I628O28E31F231FQ31GL2GZ31PZ31QB31RG2AU2ZS31K827T26T24731FQ2ZS2YP317I31L82ZR31HH25D31132L531C025D310P27831C631L92FR31RJ27831DH2L531KA31D531I5319I25731GR31CX311S27831T031PJ2AU310431F72LA311A31DC2AU31I531CR2762T225T310W31LC31FC31KA31IL31D131QZ31GX31S225X27431QD31LE27526K31LG31TU31QZ2AK31GR31TS25V31I231K827931TC31P42SC31I92ZE26U25326W31IA31IC31A12C031LK25U2ZE2A125925G27926H27926G27926N27931D927531UV25V31S827531UZ31UY31UU27931KI27531V525V31V731V931V431VB31V631VC31V831VE31VA2NR31TY31PH31IY25V31J02KP27W31AS31J528928B23W31J325V2KF25924M25A24X31A931SP31MD2792AW2ZQ25V26F27931W927531WB31W831WA27926E31WG31WI27531WH31WK31WJ25V31WL31WO31U531WR31WC27931P126I27931WW27531UP2FR31W731K331HH31K631I331K931P431TW31KD2AU2XA31PP31S225V26831H72FR31L131FQ2ZL28E31QM31PY31KY31QY31K82JB28O31XC31R231Q831CH31KG31KW31FD31LD31XJ27531L331L531TT31SD31F8319I31LB2FR31I231Q631WS31U72ZH31VL31MK2U425R2792NG24L29F2Y02C728S2UH2BB31MS31MU24W2FL26H26R2OI25V26L29331Z331TX31Z52DE2792M927531Z931Z731ZA31Z82XL31ZF27531CO25V31ZI31V12AU31Z031RZ31LC25V311S319N31SA31X631S731HH31EW31HH31Y731ZX31SG31X62ZK310P31F72DD31DL2ZI31XA31QZ31SU31XB31HU31SY31TK31S131TA310531X62NL311A320F25V31U6319K25U31UN31K731TH2DD31TJ31R731F72DC26R2782EQ2NL31R62ZE31TQ31FJ31K531HA31TV31TD31Z62EM2K627828E31CX31T231IK28W27T31QQ31FJ2R731EA31AS31EJ28431EE2752R727T31EA31XJ278321O31Q031E231X62ZL31AX31DH31Y331HF2AU31IX31LD27831LF321A2A931A52O831VO2DG2B02A82U02RL2BI28231AS2AB24N2PJ2PL24W31VV2NG2LQ2NJ2822ZE2NN2NP31BI2L12N72A12SZ2S828M31MJ2BA28M31C029426R2472582NZ2O12XU25U31NP323E323G323I2B628U2532LV29G29X2OG2LO26R2QM2YZ2A224G31YK275229279324532443246279228324A27922F324D324F275324E27522E279324K324J324L324O27522D27922C27922J324U324W275324V324Y3249325027522H2793254325331352IG31CS31133217311K319N31NL31Q631KD31XW2ZU31XY31KJ31FQ26R31IT28E31KK3221319K321Z31QP31GB31XH31RP31XK31B2321N31QR31HR31QT325W31GF31SP31HT31GE31B62L52842OI31FS28O326331AS2ZL2AJ321S31GG2FR2AJ2AJ31RO31GC31HH31Y431F131Y631XW321H32012YP326G31ST31EB2AU2KK31Q6319I320O317J317I2762EQ2FW2DK32792ES2DG2FW2FY327C24Y2GX327H2HS327H2IK2U02JD24H2JF31YH31J127W2QW322Q2P12532OS322I2B12822U02U22OS323928X323B320Q2P524C24H29928924P2XU2MG323Z2Z024G31K022L27922K27921V27921U27921T27921S27921Z27921X328Z27921W32923294275329327522327932993298329A329D275222279329G329F279221329E25V220329525V227279225329S329U27531392FR31K031WQ27T31AM2ZL320H31P8322B31FT31F831D232262EQ31XL31PH31QK31HR31PX31AX31AM31QZ31GL3201326A2AU31T131PZ31NL326Z31D431XW29231FI31RI31TL322731B131OS31AX31QX31Z231AS27G31Y7325J31KV31HQ2OU31ET2SH317I32B731RV325I31HH25F31WW2OU31ZX31Y431RE31Q631Y729O31KP31L42L5317I32BO31XW32BU31CL31SH31BV31DM31RJ327731BZ31GR31TK327531K731I831AM2PT2U42T224923K24C24D2462NJ28T28231B523N2XC322S2NJ32C317279162791432CV32CX27532CW32CZ2791A32D232D427532D332D6316S31HK31ZM31U72FS31CR31ZP2GR31EA31S5322831X831P632A631I631CV2DD32DH31FQ2ZE31RJ31ZP31L62DD27T32DV31R0317J315331P8321A31IM31TN31CR31XN321731D5325C31SP31LE310W2FR25D311C321T325A31SO322631CR31GD320T31GW311C31R1320S31TT2ZK32BX32A231CR326G31P6326J327331P8326X32A727T31RQ31TT31DD31CR2QW31EA32172OU32A331HQ2792LG2YP326Z25V2ZX2DC31AS31S227T31IT31GR2XA2NW32FP2L52K629O2OI27T2KK32DS2ZE32FO2752L52XA2ZO32FT25V2K625I32DD31FQ2SH32G031QZ26B2JI32G425V31UN32G72K629232FX25V2ZU32GE31P632G72XA2P432GL25V31JV32GO2O732GR31FQ32GT25V31JX32GW2XK32BI31FQ31YK2NL32HA32GF32GH31CH2Y932GW2LG32GO31IJ32H132G232FQ25V31NC32GW31NL32GO31FM32HL319L32G331CH31NZ32GW26S2FS31WW27T31QF2L525D23W31GR32F932HW2L526Z31RB31RJ2L531OD2ZL28O31OH32DJ31XJ31EA325Q32IG31RC31OO2AU28W28E27T2JB28W24531P431Y732IX31FI28W31XW31FC28O31OW31C131T431KP310Z2782BL32E831XW32JC32BY31F831882ZK31UN28O31IO2DD321J31SF32EH32FP32ID31GY25V2ZS32IH32FJ2FR31XM2FR32IS32H232EH2XA32IJ31RJ31AI274325Q31YD321931PZ32KB32EO31F831XG32ER31XP31CL32IC28W31WD32IM31RJ31WP32J831P828W32KG2AU31PU32JN31FQ31KG32EH27831I532AC31ZN32EH321F32KR31PY31PX28O31P131L931KA31PG31WD32202EQ31EA31RV32GB32L432JP31F832JR32KN28W32JV32262ZX2DD32JZ32KW32IT32HV31F82XA31OK321W31HH31R932AE31WY32KU31PY321V31RC2YP32M331B231X02AU31EZ325Y31PY32LN31RF28432LQ31B631UR31HM31PH325X32HM2842XA31UT2OI28431D9326E31B232MI31B631AX32ML27G32MN31FY32MP31B22AJ32HM31AX2XA31Z2326C25V31D928E326332KB31EA31ZX31R931EK32702DD2AJ31G62ZL2OU32N02OU2OU32ML317I31ZB2ZL2KK32I932J72KK24231G032J732HM2OU32MT32GB2OU2K62AJ2ZL317I32N0317I317I32ML2KK32LS2AU31G631PK32C42U02ZL2XA31ZI31CI31X62OI317I2XA2KK32O032LX32ID2KK2KK32ML2XA2402FR2NW32C332OV2NW32OP31CH32OR2752NW31ZL31CC31K82OI2KK2XA2XA31EA31XU32MB32G831VF31K132PT32682KK2K62XA32OS31GA31QH32PO31BT2ZL2K62442FR2XA2K63268317I32IX32Q032GI2DM31Y32742NW31L62AT32KD2AU32KB31K2310A2NW24A32A732QS32A72K631012ZL29O32O229O29O31042ZL2SH24F32A72ZO32O22ZO2ZO32R427532GA310C31P82ZU32F931KI2ZU2ZU32Q031OD31UN24D2FR2K62K6320R32PH32KX31P82NW32EX32PT2742DD32PD32DK31X8');

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

	W = BitXOR(W, 211)
	X = BitXOR(X, 211)
	Y = BitXOR(Y, 211)
	Z = BitXOR(Z, 211)

    Pos	= Pos + 4;
    return (Z*16777216) + (Y*65536) + (X*256) + W;
end;

local function gBits8()
    local F = BitXOR(Byte(ByteString, Pos, Pos), 211);
    Pos = Pos + 1;
    return F;
end;

local function gBits16()
    local W, X = Byte(ByteString, Pos, Pos + 2);

	W = BitXOR(W, 211)
	X = BitXOR(X, 211)

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
		FStr[Idx] = Char(BitXOR(Byte(Sub(Str, Idx, Idx)), 211))
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
		elseif(Type==2) then Cons = gFloat();
		elseif(Type==1) then Cons = gString();
		end;
		
		Consts[Idx] = Cons;
	end;
for Idx=1,gBits32() do Lines[Idx]=gBits32();end;for Idx=1,gBits32() do Functions[Idx-1]=Deserialize();end;for Idx=1,gBits32() do 
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
								end;Chunk[3] = gBits8();return Chunk;end;
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
				Enum		= Inst[1];if Enum <= 53 then if Enum <= 26 then if Enum <= 12 then if Enum <= 5 then if Enum <= 2 then if Enum <= 0 then local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
 elseif Enum == 1 then Stk[Inst[2]]=(Inst[3]~=0);else 
local A = Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum <= 3 then Stk[Inst[2]] = Inst[3]; elseif Enum > 4 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;else local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];end; elseif Enum <= 8 then if Enum <= 6 then 
local A = Inst[2]
Stk[A] = Stk[A]()
 elseif Enum > 7 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];else if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end;end; elseif Enum <= 10 then if Enum == 9 then Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;end; elseif Enum > 11 then do return end;else 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 19 then if Enum <= 15 then if Enum <= 13 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3]; elseif Enum == 14 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
end; elseif Enum <= 17 then if Enum > 16 then local T;local Edx;local Results,Limit;local B;local A;
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
end;else local B;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return end;end; elseif Enum == 18 then if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 22 then if Enum <= 20 then InstrPoint=Inst[3]; elseif Enum == 21 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
else 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 24 then if Enum == 23 then local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];else local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum > 25 then 
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
else local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 39 then if Enum <= 32 then if Enum <= 29 then if Enum <= 27 then Stk[Inst[2]][Inst[3]] = Inst[4]; elseif Enum == 28 then Stk[Inst[2]]={};else Stk[Inst[2]] = Inst[3];end; elseif Enum <= 30 then if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end; elseif Enum == 31 then local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else 
do return Stk[Inst[2]] end
end; elseif Enum <= 35 then if Enum <= 33 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
 elseif Enum > 34 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local T;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
end;end; elseif Enum <= 37 then if Enum > 36 then local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
end; elseif Enum == 38 then local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 46 then if Enum <= 42 then if Enum <= 40 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum == 41 then local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return end;else Stk[Inst[2]]=#Stk[Inst[3]];end; elseif Enum <= 44 then if Enum == 43 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
else InstrPoint=Inst[3];end; elseif Enum > 45 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 49 then if Enum <= 47 then Stk[Inst[2]]=(Inst[3]~=0); elseif Enum == 48 then local K;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
Stk[A] = Stk[A](Stk[A + 1]) 
end; elseif Enum <= 51 then if Enum == 50 then Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};else local A;Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum == 52 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
else local T;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 80 then if Enum <= 66 then if Enum <= 59 then if Enum <= 56 then if Enum <= 54 then do return end; elseif Enum == 55 then 
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
end;else local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 57 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum == 58 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 62 then if Enum <= 60 then 
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
 elseif Enum > 61 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 64 then if Enum > 63 then local Step;local Index;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
else Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum > 65 then Stk[Inst[2]]=Upvalues[Inst[3]];else Stk[Inst[2]][Inst[3]] = Inst[4];end; elseif Enum <= 73 then if Enum <= 69 then if Enum <= 67 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum == 68 then if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];end; elseif Enum <= 71 then if Enum > 70 then Stk[Inst[2]]={};else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum > 72 then 
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
else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
end; elseif Enum <= 76 then if Enum <= 74 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4]; elseif Enum > 75 then Upvalues[Inst[3]]=Stk[Inst[2]];else local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 78 then if Enum > 77 then Stk[Inst[2]]=Env[Inst[3]];else Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum > 79 then local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==63 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==63 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum <= 94 then if Enum <= 87 then if Enum <= 83 then if Enum <= 81 then local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end; elseif Enum > 82 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);else local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];end; elseif Enum <= 85 then if Enum == 84 then 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else Env[Inst[3]] = Stk[Inst[2]];end; elseif Enum == 86 then local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];end; elseif Enum <= 90 then if Enum <= 88 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
 elseif Enum == 89 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);end; elseif Enum <= 92 then if Enum > 91 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else 
do return Stk[Inst[2]] end
end; elseif Enum == 93 then 
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
end;else Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum <= 101 then if Enum <= 97 then if Enum <= 95 then local B;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if Stk[Inst[2]] then InstrPoint=InstrPoint + 1; else InstrPoint = Inst[3]; end; elseif Enum > 96 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
end; elseif Enum <= 99 then if Enum == 98 then Upvalues[Inst[3]]=Stk[Inst[2]];else Env[Inst[3]] = Stk[Inst[2]];end; elseif Enum > 100 then if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 104 then if Enum <= 102 then local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3]; elseif Enum == 103 then Stk[Inst[2]]=#Stk[Inst[3]];else Stk[Inst[2]]=Upvalues[Inst[3]];end; elseif Enum <= 106 then if Enum > 105 then 
local A = Inst[2]
Stk[A] = Stk[A]()
else local T;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum > 107 then Stk[Inst[2]]=Stk[Inst[3]];else 
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
end;
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
