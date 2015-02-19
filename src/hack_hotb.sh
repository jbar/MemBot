
. "$(dirname "$0")/init_membot"

MB_start $(pidof plugin-container)

MB_Aobscan fpx "89 5E 34 8B 46 38 8B 8E C8 00 00 00"
MB_writearray "$(MB_address $fpx)" "C7 46 34 3F 42 0F 00 90 90 90 90 90"

exit

<?xml version="1.0" encoding="utf-8"?>
<CheatTable CheatEngineTableVersion="18">
  <CheatEntries>
    <CheatEntry>
      <ID>0</ID>
      <Description>"Damage Hack"</Description>
      <LastState Activated="0"/>
      <Color>80000008</Color>
      <VariableType>Auto Assembler Script</VariableType>
      <AssemblerScript>[ENABLE]
Aobscan(_fpx,89 5E 34 8B 46 38 8B 8E C8 00 00 00)

_fpx:
db C7 46 34 3F 42 0F 00 90 90 90 90 90

[DISABLE]
</AssemblerScript>
    </CheatEntry>
  </CheatEntries>
  <UserdefinedSymbols/>
</CheatTable>

