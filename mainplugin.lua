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
local ToNumber = tonumber;local function decompress(b)local c,d,e="","",{}local f=256;local g={}for h=0,f-1 do g[h]=Char(h)end;local i=1;local function k()local l=ToNumber(Sub(b, i,i),36)i=i+1;local m=ToNumber(Sub(b, i,i+l-1),36)i=i+l;return m end;c=Char(k())e[1]=c;while i<#b do local n=k()if g[n]then d=g[n]else d=c..Sub(c, 1,1)end;g[f]=c..Sub(d, 1,1)e[#e+1],c,f=d,d,f+1 end;return table.concat(e)end;local ByteString=decompress('26423U27523V23Y27523U26F26J27226A23V23K27926W26J26C26M26D26F26X26N26N26M23V23S27926D26X27727927226B26F26N23V23M27925X25X26B26C26B27228623V23X27925L26D26C27026N26W27223V23W27925Q26N26H26D26M28223Z27926Y26W28828M24227925025024Q25K26N26L27J24Q28826X27226J26E26E27C26B28H24K29L23V24827925O26N27226H26A28826L24Q26F28T27326E26N26X29M27827529928127F27925P29R26128K27026B26H28223L27925E27227226Y2AD26W2AF2AH23T27927923E25127X27525G26J2A827G27525I26D26J26M29D28Z26C26L28N27926126D27326W2AH23V26027926A2AM26Y26X24W24L24L27I27124K26L28A26A27326G27327O2BI28H27226N26C27224K28S26F24L26J26B28U26C25B2562592562BT26D26G26E26D26Q24N27D29V24L27B29D28K24L26K26J26926N2CP2B72B929V24K26E27326J2AT2AU27525M2AY23U25I2DA25D23V25E2BM2BO2BQ2BS2BU2BW2BY2C02C228K28S2C82C72C92CB2CD2CF2C72CI2CK2CM2CO2CQ2CS29U2BB2CV26J2CX26W24L2D92D12D82DA2DC2AU23M2DF2A52DH2DA2622DL2DN2AN2DP2BT26J2BV2BX27D2DU2C32DX2C62C82CA27M2E22CG2E52CL26W2CN2CP2CR2CT2EC2CW2C62EG2EI26Y2EK2DB2DD23U24A2EP2792DI26J2672EU2752BN2EW2BR2EY2F02DT2C12F42C52DZ2F82CC2CE2FB2CJ2FD2FF2E92FI26L2ED2EF2EH2DA2732FP2EM27924E2FU2B42DA25U2FZ23U2G12BP2G32DR2F12BZ2G72DW2G92F72E12GD2E42GF2E72FG2EA2CU2FK2CY2EI26Q2GQ2FR2422GU2ER26J25V2GY2H02EX2H32G62DV2C42DY2H92F92HB2CH2HD2FE2E82FH2EB2GK2HI2FM2DA26R2HM2DD2462HP2FW25S2HT2DO2H22EZ2DS2F22H62HZ2F62E02I22E32I42E62I62HF2GJ2GL2FL2GN26J26O2IF2AU24Q2DF28O27526028K2C026B23V25C2EV2H12DQ2IO2H42F32H72I02IU2GC2IW2FC2HE2GI2I92J22CY26W2JE26G26B2FP23V24B2792JD26Y26E2AG27C27Q26127226D27I26L28223O29P28826M25O26B26W29D25L29U26E27R2AJ27525J2CE26C25J29Z2A127W2EM28Q26Y23V28W27528K2FE26W23V24R29329525N26E2K02B726R29B26C29D29F2A126M24X24Q26J26G2KG27Z2BB29L24K2DG27126J26W26C23V25M27925T25025Z24Q2KY2882MD2L22A224Q26K26D2KU28K24Q27L2MI26C26D27224Q26N26Q26B29D24M24Q26H2LK2LY29W29Y26M2A02MI2MK2MM26W2M128427525F2LO29E26C2BJ2EM26C26N2712BD27525O2ML28U2LD24A27927L27126C2D426M25X2N52N727W24328X2M42DZ25X2NZ2D62BB2O12MH27W2NU27525L2A12M42LI26E2KS26B2KU2K02M623Q2792652CE2722NQ26W2ON2KU23V2402LG24Q2B52D52722BA2N42MH2MJ2BG27K2832AA29R25N26X26R2NI2IL2G22JL2G52IQ2HY2F52GA2HA2JT2I52GH2I82HH2EE2J327B2882K42612JJ2HV2JM2HX2G82JQ2GB2FA2HC2IY2PW2HG2FJ2PZ2CY26X27327L27J27Z2MV2K926D28A2K42KW23U2KE2P826429F2732822EQ2ME2M62L923U2QY2D92822K627525N2C826B25R26Q2QQ28A2BF2BH2BJ2622Q52IN2PO2H52PQ2H82JR2QC2IX2GG2I72QG2IA2QI2EG2C328J2KQ2N126B26Y2C92EI2NO2QV2S52S723V2492BE2AE28K2612SC2722AP2AR28V27Y27I26X27E2QU2B526H29F2SJ28Z2SD2B327A2KG26N24Q2P72EE27E2652RN2PN2IP2RQ2Q92IT2QB2I32JU2IZ2JW2PY2GM29926W26G26J2KI24N2QN26B2QP2CP2QS2S92JB23U2622O72C823V2QU2KE2M42FL2U026H2692U328P25N25R2AD2AM29V27W2ND23U2NF2722R72R02A927526626225Q2MX2NH2AS2FR25F2DF2OS2KX26J26Q2OU26E26926X26Y27P26M2GR2752562UZ2792KY26Q25C27326F26Y26226D27128K23V26P2T924L26M2MX28S26W26M26J26Y2FO2HA26Y26B24L2VO26G26A26D26D2V624L25925725625525525B25425A2WE25725424Z2WF24Z2582CL26625D25H25525D26626H26G26926M27125826L25K27325K26O2KE2OI26825F2W726Q26G25V26L25725525E26O26W25H25426F26026A25A26Y26K26Z26Y26F27225J2662WY24N26E2552CQ27126H25N25626Z26M25H25P25G25A26X25627023V23P28X27V28B2KF25X2VU26X2VW27R24427925K26J2U927L2KG2LN2LP29G27Q24Q28H24Q2A72T32CF24Q28D27926229H2AH25F27R24Q27924K24Q24I2HU2G32712ZR24K2TI2HL2E12Z926X24L23V23V2792ZZ310127524J2P12P326127326H2AH26X26X26K2A026E2LM29C29E2Z426M24R2TY23R27931072752LV26H28U26K26L29U26826926E26F2MR26Y26Z2KQ27227327027126Q26R26O23V24K2792WM25525A25B25825924Y2WO24N25325X24H24R25M24S24P24U24V25W24G24I24J24W24O24X24T24M24K24L25225025125T25Z26P26V25Y24Q24Q23N23K26S26I26U3104276312P2562VB23U2AW2L827Y2LV2A12SA29C28K28M2TY2OB2BC2EM2QK26G312T2762R52732W028K312T24W25M312T25C2M82YW27924827T276313N313Q313P2AU27T312P2792AT313T29O23U2782EM314028W2EQ313X23U28W31042Q427T2AT310124824523U2AT2R523U25B31412DD314F3148314P27523Y26G314H23U2P2314E26F23U28E2TY24Q2YL28E31542EN23U313T27923N3157313R23U27G2UJ2ZK315D315H315A2792QU2DD2OS2TY279310P315O27527G310P27T2OG2AJ27G315O315A2AJ31042RM28E315A310123Y25X314U2OS314E314G314I2AU314L314623U314O28W2R5314S314U311F314X314Z23U315124C316P31552792843158275315A313Z315S23U315F317127G315J275315L2AU315N2FR315Q2FR315T315B315G27G27G315L27G27T315V317723U317A315923U3161275316323U3165314131682AT2YV316B314U314J316F23U312P316I314Q3141314T2AT2M8316O31502793152316T316P316V315B2DD316Z315C315E318F3174317V2AU317S315M316Q317B318V2DD317E317M317R23U317C317Q318T317U317W3167314U25431852752LF317L2AU25H310Q313M2752R52TY28E275319M318I319P319O319O2UJ319T318J316Y317Q319W319Y318R319Z317631A2319X31A031A531762UJ2QU31A9315K2792V0317O31AC31AF27531AD31AI31AG31AE31AH31AK31AJ31AM31AP31912752KK31AS27931AT23U31AW2YL27531AZ23U31B131B327931B431B031B531B831B731BA31B231AV2792RA316H2AU2EM313W2DG26L313831002ZL313T2EQ312W27526Y2CE2KQ2PE27528628828A286312T2AW313A313L31BB248256319B3186275319E2DD313V2FR312P2AT314627G310124Q24M318V28W2AT23W26H27931CJ318V23Y312P31CT31CL31CN314M23U2LF28O313T23W25W319B3149315B31CV27931D823U255319B2DD2LF31013158319G313Q31BB29227531DN23U31DP31DR2792O527531DU23U31DW2P227531DZ31DQ27924127924731E52792YV27631B1313W31C22AX2EQ27B27D2SA27I27K27M31C4313A318531342P729V2DG29T2M42VB1A25U313I2DD1A25W31EY2AU25M26231F22791A26425M313V2R528Y29029N27926726C2692MR2NX2N026A2M42YY2FL315G27524Y313N24J31C9315C31CC31BG314U2EM315G2AT31CH31FZ2783170314P314J275316D27T314031G62792A527T24T319B248314Y28O31G125N318V28O2783140318E2753140316W2FR28O31GW24S27528O2K631DI3141312P31H331H527924631DF2P228O318624P318H275315G315528431GV314U31HH27528428431GR319W31763140317H2FR2842T0279319O3158310128O28E314631H0310431HC31DF316H24G31HG23U31HI316P31HK31HO31HM31ID31IH31HQ31FZ3160318N31AL315631HY319N27931I1318V31I4316827T317W23U24X318K2AU2P2312T24F315B319E24S25Q315B319A3101310P31DA27531JC316H314Y2AT31AW24825Z314M31B131DB2FR314R314M314J313Y319B314625931DF31J1314D31J3314M313W2P228W315831HA31G3314Q315A31K127931DK31I931FT319C27924O31KI31KK27531KJ31KM31KL23U31KN31KQ27931HF27531KU23U31KW31KY31KT31JR31KW24U27931L327531L523U31L731L931L431LB31L631LC31L827931H027531LH23U31LJ31LL31LG31LN31LI31LO31LK31KP31FV310527931LT23U31IB27531LY23U24H27931M227531M431M131M331M827524N27931MB31MA31MC31MF27524L310Q2T023S25I31I931GU314G31CE31HH24E31II31GC314G31CO27923W268318V310131H423U31E931MN31N431582RM31CP31DF319D31J223U31KE31CW31E8279314G31HN31NJ23U31MI31MH3102318P2VC311G310Q2TY31BJ2EM24V26M24H31BK31BM31372C031ED23V2EM2A126C313T2R531BR23U31BT2KP2UI28528728928B25X31BW23U2KF26C2VJ26G313F31JR31F62AV2512AU31MS31GU31C831N131FX31NC31CB31MN31DL314U31462YL316O31GM2AU29O319O2DD31D3315B31GS31II315G28431452AU28E319E2JB28O31P7316P31JF31BC31CK31CM28O316J31KH31PE31H131D6310131D827T31PS31DC31DE313W31KH31N227531NE2GS27925A31QE31QG27531QF31QI279314L27531QM314K31QL31QQ31QN31QR31QP27525827931QW31QK27531JY27524Z27931R327524W310Q2EM31FB28X2BA28M31HA2NE28I29F2ZB2C728S2VU2BB31FM31FO26H2FL24W31FR2FS2AU31J131Q8314V31P123U31J631H427T31J9319B317S3166312P317S31GK31J7313N31JN31K92DD316G314731G431IT315B31662AU31PQ31J031SJ31K231KC27531HA319E2DC318M313W31QC2752OG23U25029331T227531OU31T427931C531T831T731TA2DE319I23U25K31TD31TF27531JA27624D31IT31MM31Q8314O31MQ316H316C31J224Q31MS2EQ2DC31I82EM31MY316P31OZ313P31N4313W31N631PL314M28E313W278312P315G31K6314M31PG2R531PI31MX3156317631JQ31P2315G31PE27831UI31H13156319E3140315A31G9318V31UL31JS31DL2LF31GE31KD319H27531TL31R627931J127525227925331VD28P31VG31TI31VF27525R27931VL31VK31VM31VP31VO31VR23U31VN31VT31VQ31VV31VS31VU25O31MJ310Q31FC31BU27W2EQ2B02A82TY2RJ2BI2822UJ2AB2722PH2PJ26H31OK2NF2LP2NI2822NK2NM23V31AD2L12N62A12SX2S628M31FC31RC23V31AW29424Q25Q2VN2NY2B628U26M2ZC31L731X231X42NX2NZ2Z52LQ29X2OE2LN24Q2QK310B2A226X2AU31RE31JI31FW31V931RY31T131H431CH312P316S31PU31CZ27T24Q31QF28E31MW318J31UC31IK31D0317131PC31IH317K31IM3188315G315A315A28O31HU319P31AB31JR31IN319031KB317231RT318R27T31YL31712UJ31402AJ31UZ31AE315R31912AJ31AD315H31CE31D531JW319B31Q4312P31UB31XS310131YZ31MP315H314731H4310431SX23U31XR1827931ZR27531ZT23U31ZV1927931ZY2751E2793202320132032791F320732092753208320B2791C2791D27912320I320K275320J320M31ZS320L23U10279320S275320U23U11310Q310P2762EQ2FW2DK32122ES2DG2FW2FY321526J2GX321A2HS321A2IK2TY2JD26W2JF31OA31OC31BV2QU31WE2OZ26M2OQ2DG31W72822TY2U02OQ31WX31RB31FE31V731T029525H26W29928926O2Z52MF31XM310C31XP31NG2AA315B319O314031SQ31GD31J2314431II314031GQ315C31Y6315C2842TY31UV31YN31P2317W31S92AT2UJ31RX31V327531T131JV3145312P292316O31HP318F31MS31A323U25T318R31HY31R32UJ27G31PS31Y031ID31CM310P2OS315Y31CR310P323O31I431XZ319B24A2782OS317S31ZA31IG31H431PS29O31I231D62AT310P3246312P324C31XS2AT31AD314O278321031GA314U31MQ31ZO31N414279152791Q2791R2791O2791P2791U2791S32542791T3257325927532582751I279325E325D325F325I2751J279325L325K2791G325J23U1H325A23U1M2791K325X325Z2751L31IT31BI319O2PR2U22T025C26125H25G25R2NI28T28231762VM29D31WG2NI2AU324L31TE31I931012OG31OZ31CD2DD315G319E315831ZF326T323431ZC2FR316X326V315B2GR326Y2AU31DC313U314P31RW324E27922W27922X279233327I327K275327J327M279231327P327R275327Q327T27922Q310Q22B313N31GI31P431RS31P23140310131G1313Q31SK319H31RW2AU31DI31MM2FR248324L2R531S9319J2AU2SF313S315731TN31I9328G319B2TY31ML327131GU269319B322I313Q31YZ322Y31CF31SO328531YT31GU31P231IR3271314E313Q2QU315G31OZ2OS322J31922AU31OU3286318K31QW313T323231R923U31C8314U2YL2NU329S2AT2K629O2OG27T2KK2GR329Q329W31BC31MS32A52K631J632A023U2SF32A331SI25626N329T23U31TL32A831E232AB316S32AE31P232A52YL2P232AL31E432AB2O532AP315B32AR23U31E632AL2YV3240315B31K831HN32A432AH2AT2YL2ZK32AL2LF32AB31TS314732AQ324M2YL31HF32AL31L332AB31KJ32AY27T32B031H032AL31GI32B527T24V314U24831H02AT329D324M2AT24I31IJ314M2AT31FV322P31LX2FR27831PE31UD314U32CB31IS31M631JQ31PM318X28W31JA31OZ31PS32CQ31H827525P31GJ314Y28W31CM31MO318V31MD324M31UE31I2322Q2Q432CR312P32D831XS28W311F31GU26C318V31NM32783294328K329S32C831PX25731FZ28O319A2DD28E312T28W32CN329S28W2YL31M031JT31MX31MZ31MW31N231U6322F328Q310P28W31DE31CB31MM31PK31GU31W028W31QJ32DN314M31QO314P31CE322N32EC2AU322Q2DD32D532EK27831QW31PG31SZ32CM31GJ328K3291318V31R132DJ32EO328K32EJ31UJ2EQ31IE27832EZ32DW32F1314P32DM32CH28W32DP32CC32DS31U732DV316P32BS328K2YL31M231UO319B31FT31HL31R532ER31YT31Y331IS310132FX319W31R732DT31YV31FZ28432FI31YA32FL319W31VA2AU27G31UX31HX32AZ31IH2YL31VC2OG28431VE31YX318R32GC318R315A32GE315H32GG31AB31UX31YQ329R319W2YL31T12OG315A31VE28E31YM31T532C8317S31KG275310P32992AJ315U31FZ2OS32GU2OS2OS32GX310P31C531402KK32C431AX32HW31GO31AF2KK32FR31AE32GN31YU2OS2K62AJ3140310P32GU310P310P32GX2KK32FN315P31SA32HT318X31FZ2YL31TH2AU32I0315B2OG310P2YL2KK32II32GU2KK2KK32GX2YL25L2FR2NU326N31AU2NU31GC31B7322V31SY23U31TJ31SL31SA2OG2KK2YL32BC31B732G431FZ2K631VU31B82K631902KK2K62YL31402YL32HV32JG31AE31402K632CW2DD2YL32JO31YU310P31W032JS26L31BC32GU32JW32GX2NU32IF2752K6312T32K232GL31BC2YL2DM3140329V31NP2NU2NU32GX2K625F328F31BC27931OU2NU29O32BS25G31RT2YL2JI329S2NU31VE25D32JK32H331NJ2K62K632GX29O32KU2DD2SF31JP32KF32AC32KJ32JR2DH32LB2K631VE25J31FZ29O32FI31CM29O29O32FL2922SF32LH31OV32KW31PA23U31MS32I129O2YL32L2329S29O32L831FZ2SF31KE31U031MS31Q327531U42AU31N4328M316H31E631MS2RM329732M72TZ315C31J6263315C316S32HV316S316S2BL314031TL2Q432MV29232HV29229232N631DV23U266315C2P2329D31CM2P22P232JS27431E42672FR31J631J631E431QD32F732MW32F331J62742DD32M831P331I9327Z324M32O831II2EM32OB315C31YB31OW32MW27532DP275316S2NP27932FN2JI27532OO23U32OQ32L927532OT23U32OV32LT2KX2VF32P0317T27932N02JC2BE27932NI27532NS27532O223U2T827525U27925V27925S2M927925Y27931JN27531D631BX27926I27926J279314T27531CR27526M27932AH27526K27932K82G027926B27931MZ275328X27526E279314Y27532DG27526D28X279322E23U32QQ27227Y32QU27527027932QX32QW32QY31JR32QZ23U27127932R527532R723U26O27932RB2752VR32RE27932RF23U26U27932RK27532RM32RJ32RL27926V27926S279320Y27532RW320X2791B27932622751727921532S627921A32S932SB27521B27932SE32SD27921832SI32SK27521927932SN32SM32SO27921232SS32SU27532ST32SW27921327921132T132T327521M27932T632T527921K32TA32TC27532TB32TE27921L27921Q27921O32TL32TN27532TM32TP27921P27921E27921J27921G32TY32U027521H27932U332U232U432U732U627522227922327922532UE32UG27532UF27521U27932UL32UK32UM27921V32UQ32US27532UR32UU27921S32UX32UZ27532UY27521T27932V432V332V527921Z32V932VB27532VA32VD27922J32VG32VI27532VH32VK27922G27922H32VP32VR27532VQ32VT27922M27922N27922K32W032W227532W132W427922L27922A27932O723U32WC32WE32WB27922827922927922D327W32WN275327X27522Z27922O32WT32WV27532WU32WX32WW23U32WY32X132X032X232X532X022U27932X827532XA23U32XC23U');

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

	W = BitXOR(W, 138)
	X = BitXOR(X, 138)
	Y = BitXOR(Y, 138)
	Z = BitXOR(Z, 138)

    Pos	= Pos + 4;
    return (Z*16777216) + (Y*65536) + (X*256) + W;
end;

local function gBits8()
    local F = BitXOR(Byte(ByteString, Pos, Pos), 138);
    Pos = Pos + 1;
    return F;
end;

local function gBits16()
    local W, X = Byte(ByteString, Pos, Pos + 2);

	W = BitXOR(W, 138)
	X = BitXOR(X, 138)

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
		FStr[Idx] = Char(BitXOR(Byte(Sub(Str, Idx, Idx)), 138))
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
		elseif(Type==3) then Cons = gFloat();
		elseif(Type==1) then Cons = gString();
		end;
		
		Consts[Idx] = Cons;
	end;
for Idx=1,gBits32() do Functions[Idx-1]=Deserialize();end;for Idx=1,gBits32() do 
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
								end;for Idx=1,gBits32() do Lines[Idx]=gBits32();end;Chunk[3] = gBits8();return Chunk;end;
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
				Enum		= Inst[1];if Enum <= 55 then if Enum <= 27 then if Enum <= 13 then if Enum <= 6 then if Enum <= 2 then if Enum <= 0 then if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end; elseif Enum == 1 then InstrPoint=Inst[3];else local T;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 4 then if Enum > 3 then Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];else 
local A = Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum == 5 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 9 then if Enum <= 7 then local T;local Edx;local Results,Limit;local B;local A;
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
end; elseif Enum > 8 then Upvalues[Inst[3]]=Stk[Inst[2]];else local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;end; elseif Enum <= 11 then if Enum > 10 then local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;end; elseif Enum == 12 then Env[Inst[3]] = Stk[Inst[2]];else Env[Inst[3]] = Stk[Inst[2]];end; elseif Enum <= 20 then if Enum <= 16 then if Enum <= 14 then if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end; elseif Enum > 15 then 
local A = Inst[2]
Stk[A](Stk[A + 1])
else local T;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 18 then if Enum == 17 then if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local A;Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum > 19 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];else 
local A = Inst[2]
Stk[A] = Stk[A]()
end; elseif Enum <= 23 then if Enum <= 21 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
 elseif Enum > 22 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else local T;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
end;end; elseif Enum <= 25 then if Enum == 24 then local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];else Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];end; elseif Enum > 26 then 
local A = Inst[2]
Stk[A] = Stk[A](Stk[A + 1]) 
else Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum <= 41 then if Enum <= 34 then if Enum <= 30 then if Enum <= 28 then local B=Inst[3];local K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K; elseif Enum == 29 then Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];else Stk[Inst[2]]=Stk[Inst[3]];end; elseif Enum <= 32 then if Enum > 31 then Stk[Inst[2]]={};else Stk[Inst[2]] = Inst[3];end; elseif Enum > 33 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
else 
do return Stk[Inst[2]] end
end; elseif Enum <= 37 then if Enum <= 35 then local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3]; elseif Enum == 36 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Unpack(Stk, A + 1, Inst[3])))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 39 then if Enum == 38 then local B;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if not Stk[Inst[2]] then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
end; elseif Enum == 40 then Stk[Inst[2]][Inst[3]] = Inst[4];else local Step;local Index;local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
end; elseif Enum <= 48 then if Enum <= 44 then if Enum <= 42 then local K;local B;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K; elseif Enum == 43 then Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];else Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];end; elseif Enum <= 46 then if Enum == 45 then Stk[Inst[2]]={};else 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
end; elseif Enum == 47 then InstrPoint=Inst[3];else local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end; elseif Enum <= 51 then if Enum <= 49 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum > 50 then Stk[Inst[2]]=(Inst[3]~=0);else local Results;local Edx;local Results,Limit;local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end; elseif Enum <= 53 then if Enum > 52 then Stk[Inst[2]]=#Stk[Inst[3]];else local K;local B;local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
end; elseif Enum > 54 then Upvalues[Inst[3]]=Stk[Inst[2]];else Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};end; elseif Enum <= 83 then if Enum <= 69 then if Enum <= 62 then if Enum <= 58 then if Enum <= 56 then Stk[Inst[2]]=Upvalues[Inst[3]]; elseif Enum == 57 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];end; elseif Enum <= 60 then if Enum == 59 then Stk[Inst[2]]=Upvalues[Inst[3]];else 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
end; elseif Enum == 61 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);else 
local A = Inst[2]
local Results = { Stk[A](Stk[A + 1]) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
end; elseif Enum <= 65 then if Enum <= 63 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
 elseif Enum == 64 then Stk[Inst[2]] = Inst[3] + Stk[Inst[4]];else local A;Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 67 then if Enum == 66 then local B;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Upvalues[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return end;else if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum == 68 then if(Stk[Inst[2]] == Inst[4])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;else Stk[Inst[2]][Inst[3]] = Inst[4];end; elseif Enum <= 76 then if Enum <= 72 then if Enum <= 70 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
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
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]]; elseif Enum > 71 then Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];else local T;local A;Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2];
T= Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 74 then if Enum == 73 then Stk[Inst[2]]=(Inst[3]~=0);else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==30 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum > 75 then Stk[Inst[2]]=Wrap(Proto[Inst[3]],nil,Env);else Stk[Inst[2]] = Inst[3];end; elseif Enum <= 79 then if Enum <= 77 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end; elseif Enum > 78 then do return end;else local A;Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum <= 81 then if Enum == 80 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
else if(Stk[Inst[2]] ~= Inst[4]) then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum == 82 then 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Inst[3]))
else 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Inst[3] do 
	Insert(T, Stk[Idx])
end;end; elseif Enum <= 97 then if Enum <= 90 then if Enum <= 86 then if Enum <= 84 then local A=Inst[2];local B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]]; elseif Enum > 85 then local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];do return end;else 
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
end;end; elseif Enum <= 88 then if Enum == 87 then 
local A = Inst[2];
local T = Stk[A];
for Idx = A + 1, Top do 
	Insert(T, Stk[Idx])
end;else 
do return Stk[Inst[2]] end
end; elseif Enum > 89 then 
local A = Inst[2]
local Results = { Stk[A](Unpack(Stk, A + 1, Top)) };
local Edx = 0;
for Idx = A, Inst[4] do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end
else Stk[Inst[2]]=Env[Inst[3]];end; elseif Enum <= 93 then if Enum <= 91 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
 elseif Enum > 92 then local A;local K;local B;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];B=Inst[3];K=Stk[B] for Idx=B+1,Inst[4] do K=K..Stk[Idx];end;Stk[Inst[2]]=K;InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];InstrPoint=Inst[3];else 
local A = Inst[2]
Stk[A](Unpack(Stk, A + 1, Top))
end; elseif Enum <= 95 then if Enum > 94 then 
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
end;end; elseif Enum == 96 then 
local A = Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Top))
else 
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
end; elseif Enum <= 104 then if Enum <= 100 then if Enum <= 98 then 
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
 elseif Enum > 99 then 
local A = Inst[2]
local Results, Limit = _R(Stk[A]())
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
else if(Stk[Inst[2]]==Stk[Inst[4]])then InstrPoint=InstrPoint+1;else InstrPoint=Inst[3];end;end; elseif Enum <= 102 then if Enum == 101 then Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Stk[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]={};InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];else Stk[Inst[2]]=#Stk[Inst[3]];end; elseif Enum == 103 then local A;Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];else 
local A = Inst[2]
local Results, Limit = _R(Stk[A](Stk[A + 1]))
Top = Limit + A - 1
local Edx = 0;
for Idx = A, Top do 
	Edx = Edx + 1;
	Stk[Idx] = Results[Edx];
end;
end; elseif Enum <= 107 then if Enum <= 105 then do return end; elseif Enum > 106 then local B;local A;Env[Inst[3]] = Stk[Inst[2]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];A=Inst[2];B=Stk[Inst[3]];Stk[A+1]=B;Stk[A]=B[Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];else local NewProto=Proto[Inst[3]];local NewUvals;local Indexes={};NewUvals=Setmetatable({},{__index=function(_,Key)local Val=Indexes[Key];return Val[1][Val[2]];end,__newindex=function(_,Key,Value)local Val=Indexes[Key] Val[1][Val[2]]=Value;end;});for Idx=1,Inst[4] do InstrPoint=InstrPoint+1;local Mvm=Instr[InstrPoint];if Mvm[1]==30 then Indexes[Idx-1]={Stk,Mvm[3]};else Indexes[Idx-1]={Upvalues,Mvm[3]};end;Lupvals[#Lupvals+1]=Indexes;end;Stk[Inst[2]]=Wrap(NewProto,NewUvals,Env);end; elseif Enum <= 109 then if Enum > 108 then Stk[Inst[2]]=Env[Inst[3]];else 
local A = Inst[2]
Stk[A] = Stk[A]()
end; elseif Enum > 110 then 
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
else local A;Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A](Stk[A + 1])
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Env[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]][Inst[4]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]] = Inst[3];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];
A= Inst[2]
Stk[A] = Stk[A](Unpack(Stk, A + 1, Inst[3])) 
InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]][Inst[3]] = Inst[4];InstrPoint = InstrPoint + 1;Inst = Instr[InstrPoint];Stk[Inst[2]]=Stk[Inst[3]];end;
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
