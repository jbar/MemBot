
. "$(dirname "$0")/init_membot"

MB_start $(pidof plugin-container)

MB_aobscan friend "01 60 ?? ?? 60 ?? ?? 66 ?? ?? ab 2a 12 ?? 00 00 29 60"
#for i in ${!friend[@]} ; do
#		echo "friend[$i] -> ${friend[$i]}"
#done
MB_aobscan test "d0 30 24 00 63 05 60 ?? ?? 66 ?? ?? 12 03 00 00 24 00 48 60 ?? ?? 66 ?? ?? 76 2a 11 ?? 00 00"

MB_writearray "$(MB_address $test)+2" "$(MB_data $friend)+1" "10"
MB_writearray "$(MB_address $test)+11" "01"


MB_aobscan mul "00 af 12 11 00 00 d1 24 01 d3 66 ?? ?? 66 ?? ?? 2f ?? a2 a0 a2 73 d5 d1"
MB_writearray "$(MB_address $mul)+3" "00 00 00 d1 24 04 02 02 02 02 02 02 02 02 02 02 02"

exit

aobscan(_friend,  01 60 ?? ?? 60 ?? ?? 66 ?? ?? ab 2a 12 ?? 00 00 29 60)

aobscan(_test,    d0 30 24 00 63 05 60 ?? ?? 66 ?? ?? 12 03 00 00 24 00 48 60 ?? ?? 66 ?? ?? 76 2a 11 ?? 00 00)
_test+02:
readmem(_friend+01,10)//60 00 00 60 00 00 66 00 00 ab
_test+11:
db 01

aobscan(_mul,     00 af 12 11 00 00 d1 24 01 d3 66 ?? ?? 66 ?? ?? 2f ?? a2 a0 a2 73 d5 d1)
_mul+03:
db                         00 00 00 d1 24 04 02 02 02 02 02 02 02 02 02 02 02


<?xml version="1.0" encoding="utf-8"?>
<CheatTable CheatEngineTableVersion="18">
  <CheatEntries>
    <CheatEntry>
      <ID>157</ID>
      <Description>"**Speed Hack Zero"</Description>
      <LastState Activated="0"/>
      <Color>80000008</Color>
      <VariableType>Auto Assembler Script</VariableType>
      <AssemblerScript>[ENABLE]
luacall(speedhack_setSpeed(0))
[DISABLE]
luacall(speedhack_setSpeed(1))

</AssemblerScript>
    </CheatEntry>
    <CheatEntry>
      <ID>162</ID>
      <Description>"King of Tower"</Description>
      <Options moBindActivation="1" moManualExpandCollapse="1" moAllowManualCollapseAndExpand="1"/>
      <LastState Value="" Activated="1" RealAddress="00000000"/>
      <Color>80000008</Color>
      <GroupHeader>1</GroupHeader>
      <CheatEntries>
        <CheatEntry>
          <ID>183</ID>
          <Description>"rapid (limit by animation)"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//              00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f


//aobscan(_unitcd,66 ?? ?? 24 01 60 ?? 66 ?? ?? 66 ?? ?? 2f ?? a2 a1 a2 61)
//_unitcd+05:
//db                             24 08 75 a3 75 02 02 02 02 02 02 02
//d0 30 60 ?? ?? 60 ?? ?? 66 ?? ?? 46 ?? ?? 01 12 ?? 00 00 60 ?? ?? 20 14 ?? 00 00


//              00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_unitcd,02 02 03 04 08 d0 30 2d ?? ?? d1 a3 48)
_unitcd+07:
db                                   25 78 02

aobscan(_unitc2,02 02 03 04 07 d0 30 2d ?? d1 a3 48)
_unitc2+07:
db                                   24 78




[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
        <CheatEntry>
          <ID>187</ID>
          <Description>"hurt dmg x4"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_friend,  01 60 ?? ?? 60 ?? ?? 66 ?? ?? ab 2a 12 ?? 00 00 29 60)

aobscan(_test,    d0 30 24 00 63 05 60 ?? ?? 66 ?? ?? 12 03 00 00 24 00 48 60 ?? ?? 66 ?? ?? 76 2a 11 ?? 00 00)
_test+02:
readmem(_friend+01,10)//60 00 00 60 00 00 66 00 00 ab
_test+11:
db 01

aobscan(_mul,     00 af 12 11 00 00 d1 24 01 d3 66 ?? ?? 66 ?? ?? 2f ?? a2 a0 a2 73 d5 d1)
_mul+03:
db                         00 00 00 d1 24 04 02 02 02 02 02 02 02 02 02 02 02



[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
        <CheatEntry>
          <ID>186</ID>
          <Description>"reswpan time"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_spawn1,  5d ?? 60 ?? ?? 46 ?? 01 66 ?? ?? 61 ?? ?? 60 ?? ?? 60 ?? ?? 66 ?? ?? 4f ?? ?? 01 d1)
_spawn1+08:
db                                        29 20 75
aobscan(_spawn2,  5d ?? 60 ?? ?? 46 ?? 01 66 ?? ?? 61 ?? ?? 60 ?? ?? 60 ?? ?? 66 ?? ?? 4f ?? ?? 01 5d)
_spawn2+08:
db                                        29 20 75

aobscan(_spawn3,  24 64 60 ?? ?? 66 ?? ?? a1 a2 24 64 a3 61)
_spawn3+05:
db                               29 24 63



[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
        <CheatEntry>
          <ID>191</ID>
          <Description>"auto wave"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_delay,   96 12 ?? 00 00 60 ?? ?? 60 ?? ?? d0 66 ?? ?? 4f ?? ?? 02 5e)
aobscan(_next,    d0 30 d0 24 ff 68 ?? ?? d0 4f ?? ?? 00 47)
aobscan(_wave,    d0 30 d0 66 ?? ?? 60 ?? ?? 14 ?? 00 00 d0 66 ?? ?? 24 00 0e ?? 00 00)
_wave+17:
db                                                                                     60 00 00 24 01 d0 66 00 00 4f 00 00 02 24 01 48
_wave+18:
readmem(_delay+06,02)
_wave+21:
readmem(_delay+10,02)
_wave+1e:
readmem(_next+0a,02)


//aobscan(_force,   d0 30 24 00 74 d6 20 80 ?? ?? d7 24 00 74 63 04 20 80)
//_force+02:
//db                      26 d5 02 02


[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
        <CheatEntry>
          <ID>190</ID>
          <Description>"8x timescale [repeat x2]"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_friend,  01 60 ?? ?? 60 ?? ?? 66 ?? ?? ab 2a 12 ?? 00 00 29 60)

aobscan(_test,    d0 30 20 80 ?? ?? 63 05 24 00 63 06 24 00 63 07)
_test+02:
db                      d1 24 08 a2 75 d5 26 d6 02 02



[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
        <CheatEntry>
          <ID>189</ID>
          <Description>"8x timescale [repeat x2]"</Description>
          <LastState Activated="1"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_friend,  01 60 ?? ?? 60 ?? ?? 66 ?? ?? ab 2a 12 ?? 00 00 29 60)

aobscan(_test,    d0 30 20 80 ?? ?? 63 05 24 00 63 06 24 00 63 07)
_test+02:
db                      d1 24 08 a2 75 d5 26 d6 02 02



[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
      </CheatEntries>
    </CheatEntry>
    <CheatEntry>
      <ID>193</ID>
      <Description>"TEST {IGNORE}"</Description>
      <LastState Value="" Activated="0" RealAddress="00000000"/>
      <Color>80000008</Color>
      <GroupHeader>1</GroupHeader>
      <CheatEntries>
        <CheatEntry>
          <ID>192</ID>
          <Description>"auto collect"</Description>
          <LastState Activated="0"/>
          <Color>80000008</Color>
          <VariableType>Auto Assembler Script</VariableType>
          <AssemblerScript>[ENABLE]
//                00 01 02 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 10 11 12 13 14 15 16 17 18 19 1a 1b 1c 1d 1e 1f 20 21 22 23 24 25 26 27 28 29 2a 2b 2c 2d 2e 2f 30 31 32 33 34 35 36 37 38 39 3a 3b 3c 3d 3e 3f 40 41 42 43 44 45 46 47 48 49 4a 4b 4c 4d 4e 4f 50 51 52 53 54 55 56 57 58 59 5a 5b 5c 5d 5e 5f 60 61 62 63 64 65 66 67 68 69 6a 6b 6c 6d 6e 6f
aobscan(_delay,   d0 30 d0 26 68 ?? ?? 60 ?? d1 d0 66 ?? ?? 4f ?? ?? 02 60)

aobscan(_wave,    61 ?? ?? d0 66 ?? ?? 60 ?? 66 ?? ?? d0 66 ?? ?? 4f ?? ?? 02 5d)
_wave+03:
db                         60 00 00 25 e8 07 02 02 02
_wave+04:
readmem(_delay+06,02)
_wave+11:
readmem(_delay+10,02)



[DISABLE]
//_cheatVMT+04,yesthisisleechedfromhaena,nowbanandneutertheleech:
</AssemblerScript>
        </CheatEntry>
      </CheatEntries>
    </CheatEntry>
  </CheatEntries>
  <UserdefinedSymbols/>
</CheatTable>
