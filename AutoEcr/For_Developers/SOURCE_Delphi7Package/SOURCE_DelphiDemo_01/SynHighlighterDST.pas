{-------------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
the specific language governing rights and limitations under the License.

Code template generated with SynGen.
The original code is: D:\SOFT_SVN\PROJECTS\DATECS_ScriptTool\SOURCE_CLIENT\SynHighlighterDST.pas, released 2015-11-01.
Description: Syntax Parser/Highlighter
The initial author of this file is DOBA.
Copyright (c) 2015, all rights reserved.

Contributors to the SynEdit and mwEdit projects are listed in the
Contributors.txt file.

Alternatively, the contents of this file may be used under the terms of the
GNU General Public License Version 2 or later (the "GPL"), in which case
the provisions of the GPL are applicable instead of those above.
If you wish to allow use of your version of this file only under the terms
of the GPL and not to allow others to use your version of this file
under the MPL, indicate your decision by deleting the provisions above and
replace them with the notice and other provisions required by the GPL.
If you do not delete the provisions above, a recipient may use your version
of this file under either the MPL or the GPL.

$Id: $

You may retrieve the latest version of this file at the SynEdit home page,
located at http://SynEdit.SourceForge.net

-------------------------------------------------------------------------------}

{$IFNDEF QSYNHIGHLIGHTERDST}
unit SynHighlighterDST;
{$ENDIF}

{$I SynEdit.inc}

interface

uses
{$IFDEF SYN_CLX}
  QGraphics,
  QSynEditTypes,
  QSynEditHighlighter,
  QSynUnicode,
{$ELSE}
  Graphics,
  SynEditTypes,
  SynEditHighlighter,
  SynUnicode,
{$ENDIF}
  SysUtils,
  Classes;

type
  TtkTokenKind = (
    tkComment,
    tkIdentifier,
    tkKComparisons,
    tkKey,
    tkKSecondWord,
    tkKSpecial,
    tkKTypes,
    tkNull,
    tkSpace,
    tkString,
    tkTest,
    tkUnknown);

  TRangeState = (rsUnKnown, rsBraceComment, rsCStyleComment, rsString);

  TProcTableProc = procedure of object;

  PIdentFuncTableFunc = ^TIdentFuncTableFunc;
  TIdentFuncTableFunc = function (Index: Integer): TtkTokenKind of object;

type
  TSynDSTSyn = class(TSynCustomHighlighter)
  private
    fRange: TRangeState;
    fTokenID: TtkTokenKind;
    fIdentFuncTable: array[0..148] of TIdentFuncTableFunc;
    fCommentAttri: TSynHighlighterAttributes;
    fIdentifierAttri: TSynHighlighterAttributes;
    fKComparisonsAttri: TSynHighlighterAttributes;
    fKeyAttri: TSynHighlighterAttributes;
    fKSecondWordAttri: TSynHighlighterAttributes;
    fKSpecialAttri: TSynHighlighterAttributes;
    fKTypesAttri: TSynHighlighterAttributes;
    fSpaceAttri: TSynHighlighterAttributes;
    fStringAttri: TSynHighlighterAttributes;
    fTestAttri: TSynHighlighterAttributes;
    function HashKey(Str: PWideChar): Cardinal;
    function Func42(Index: Integer): TtkTokenKind;
    function Func58(Index: Integer): TtkTokenKind;
    function Func94(Index: Integer): TtkTokenKind;
    function Func60(Index: Integer): TtkTokenKind;
    function Func6061(Index: Integer): TtkTokenKind;
    function Func6062(Index: Integer): TtkTokenKind;
    function Func61(Index: Integer): TtkTokenKind;
    function Func62(Index: Integer): TtkTokenKind;
    function Func6261(Index: Integer): TtkTokenKind;
    function FuncBool(Index: Integer): TtkTokenKind;
    function FuncBoolean(Index: Integer): TtkTokenKind;
    function FuncBreak(Index: Integer): TtkTokenKind;
    function FuncByte(Index: Integer): TtkTokenKind;
    function FuncConcat(Index: Integer): TtkTokenKind;
    function FuncDate95separator(Index: Integer): TtkTokenKind;
    function FuncDate95time(Index: Integer): TtkTokenKind;
    function FuncDatetime(Index: Integer): TtkTokenKind;
    function FuncDay(Index: Integer): TtkTokenKind;
    function FuncDec(Index: Integer): TtkTokenKind;
    function FuncDecdate(Index: Integer): TtkTokenKind;
    function FuncDecimal95separator(Index: Integer): TtkTokenKind;
    function FuncElse(Index: Integer): TtkTokenKind;
    function FuncExecute(Index: Integer): TtkTokenKind;
    function FuncExit95question(Index: Integer): TtkTokenKind;
    function FuncFalse(Index: Integer): TtkTokenKind;
    function FuncFieldby(Index: Integer): TtkTokenKind;
    function FuncGet(Index: Integer): TtkTokenKind;
    function FuncGoto(Index: Integer): TtkTokenKind;
    function FuncHour(Index: Integer): TtkTokenKind;
    function FuncIf(Index: Integer): TtkTokenKind;
    function FuncIf95question(Index: Integer): TtkTokenKind;
    function FuncInc(Index: Integer): TtkTokenKind;
    function FuncIncdate(Index: Integer): TtkTokenKind;
    function FuncInt(Index: Integer): TtkTokenKind;
    function FuncInteger(Index: Integer): TtkTokenKind;
    function FuncLeft(Index: Integer): TtkTokenKind;
    function FuncLong95date95format(Index: Integer): TtkTokenKind;
    function FuncLong95time95format(Index: Integer): TtkTokenKind;
    function FuncMin(Index: Integer): TtkTokenKind;
    function FuncMonth(Index: Integer): TtkTokenKind;
    function FuncNo(Index: Integer): TtkTokenKind;
    function FuncOutput(Index: Integer): TtkTokenKind;
    function FuncPadingwith(Index: Integer): TtkTokenKind;
    function FuncPadvar(Index: Integer): TtkTokenKind;
    function FuncPrint(Index: Integer): TtkTokenKind;
    function FuncReal(Index: Integer): TtkTokenKind;
    function FuncRight(Index: Integer): TtkTokenKind;
    function FuncSec(Index: Integer): TtkTokenKind;
    function FuncSet(Index: Integer): TtkTokenKind;
    function FuncShort95date95format(Index: Integer): TtkTokenKind;
    function FuncShort95time95format(Index: Integer): TtkTokenKind;
    function FuncShow(Index: Integer): TtkTokenKind;
    function FuncString(Index: Integer): TtkTokenKind;
    function FuncThen(Index: Integer): TtkTokenKind;
    function FuncTime95separator(Index: Integer): TtkTokenKind;
    function FuncTo(Index: Integer): TtkTokenKind;
    function FuncTrue(Index: Integer): TtkTokenKind;
    function FuncVar(Index: Integer): TtkTokenKind;
    function FuncVarandvalue(Index: Integer): TtkTokenKind;
    function FuncVarinput(Index: Integer): TtkTokenKind;
    function FuncVars(Index: Integer): TtkTokenKind;
    function FuncWord(Index: Integer): TtkTokenKind;
    function FuncYear(Index: Integer): TtkTokenKind;
    function FuncYes(Index: Integer): TtkTokenKind;
    procedure IdentProc;
    procedure UnknownProc;
    function AltFunc(Index: Integer): TtkTokenKind;
    procedure InitIdent;
    function IdentKind(MayBe: PWideChar): TtkTokenKind;
    procedure NullProc;
    procedure SpaceProc;
    procedure CRProc;
    procedure LFProc;
    procedure BraceCommentOpenProc;
    procedure BraceCommentProc;
    procedure CStyleCommentOpenProc;
    procedure CStyleCommentProc;
    procedure StringOpenProc;
    procedure StringProc;
  protected
    function GetSampleSource: UnicodeString; override;
    function IsFilterStored: Boolean; override;
  public
    constructor Create(AOwner: TComponent); override;
    class function GetFriendlyLanguageName: UnicodeString; override;
    class function GetLanguageName: string; override;
    function GetRange: Pointer; override;
    procedure ResetRange; override;
    procedure SetRange(Value: Pointer); override;
    function GetDefaultAttribute(Index: Integer): TSynHighlighterAttributes; override;
    function GetEol: Boolean; override;
    function GetKeyWords(TokenKind: Integer): UnicodeString; override;
    function GetTokenID: TtkTokenKind;
    function GetTokenAttribute: TSynHighlighterAttributes; override;
    function GetTokenKind: Integer; override;
    function IsIdentChar(AChar: WideChar): Boolean; override;
    procedure Next; override;
  published
    property CommentAttri: TSynHighlighterAttributes read fCommentAttri write fCommentAttri;
    property IdentifierAttri: TSynHighlighterAttributes read fIdentifierAttri write fIdentifierAttri;
    property KComparisonsAttri: TSynHighlighterAttributes read fKComparisonsAttri write fKComparisonsAttri;
    property KeyAttri: TSynHighlighterAttributes read fKeyAttri write fKeyAttri;
    property KSecondWordAttri: TSynHighlighterAttributes read fKSecondWordAttri write fKSecondWordAttri;
    property KSpecialAttri: TSynHighlighterAttributes read fKSpecialAttri write fKSpecialAttri;
    property KTypesAttri: TSynHighlighterAttributes read fKTypesAttri write fKTypesAttri;
    property SpaceAttri: TSynHighlighterAttributes read fSpaceAttri write fSpaceAttri;
    property StringAttri: TSynHighlighterAttributes read fStringAttri write fStringAttri;
    property TestAttri: TSynHighlighterAttributes read fTestAttri write fTestAttri;
  end;

implementation

uses
{$IFDEF SYN_CLX}
  QSynEditStrConst;
{$ELSE}
  SynEditStrConst;
{$ENDIF}

resourcestring
  SYNS_FilterDST = 'All files (*.*)|*.*';
  SYNS_LangDST = 'DST';
  SYNS_FriendlyLangDST = 'DST';
  SYNS_AttrKComparisons = 'KComparisons';
  SYNS_FriendlyAttrKComparisons = 'KComparisons';
  SYNS_AttrKSecondWord = 'KSecondWord';
  SYNS_FriendlyAttrKSecondWord = 'KSecondWord';
  SYNS_AttrKSpecial = 'KSpecial';
  SYNS_FriendlyAttrKSpecial = 'KSpecial';
  SYNS_AttrKTypes = 'KTypes';
  SYNS_FriendlyAttrKTypes = 'KTypes';
  SYNS_AttrTest = 'Test';
  SYNS_FriendlyAttrTest = 'Test';

const
  // as this language is case-insensitive keywords *must* be in lowercase
  KeyWords: array[0..63] of UnicodeString = (
    '*', ':', '^', '<', '<=', '<>', '=', '>', '>=', 'bool', 'boolean', 'break', 
    'byte', 'concat', 'date_separator', 'date_time', 'datetime', 'day', 'dec', 
    'decdate', 'decimal_separator', 'else', 'execute', 'exit_question', 'false', 
    'fieldby', 'get', 'goto', 'hour', 'if', 'if_question', 'inc', 'incdate', 
    'int', 'integer', 'left', 'long_date_format', 'long_time_format', 'min', 
    'month', 'no', 'output', 'padingwith', 'padvar', 'print', 'real', 'right', 
    'sec', 'set', 'short_date_format', 'short_time_format', 'show', 'string', 
    'then', 'time_separator', 'to', 'true', 'var', 'varandvalue', 'varinput', 
    'vars', 'word', 'year', 'yes' 
  );

  KeyIndices: array[0..148] of Integer = (
    -1, 39, 1, 18, -1, -1, 29, 20, 37, -1, -1, -1, 23, -1, -1, -1, 4, -1, 44, 
    -1, -1, 22, 0, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 
    -1, -1, -1, 31, -1, -1, -1, 30, 63, -1, 16, 40, -1, -1, 5, -1, 58, -1, 19, 
    33, 51, -1, -1, -1, 56, 28, -1, -1, -1, -1, -1, -1, 27, -1, 52, -1, 3, 47, 
    -1, -1, -1, -1, 45, -1, 21, 11, -1, -1, -1, -1, -1, 26, 9, 48, -1, 62, 32, 
    24, 17, -1, 13, -1, -1, 60, -1, -1, -1, -1, 2, -1, -1, -1, 6, -1, 35, -1, 
    -1, 43, 25, -1, 53, -1, -1, -1, -1, 49, -1, -1, -1, 61, 59, 55, 54, 46, 50, 
    34, -1, 57, 38, 41, 12, 42, -1, -1, 8, 15, 10, 14, 7, -1, 36 
  );

procedure TSynDSTSyn.InitIdent;
var
  i: Integer;
begin
  for i := Low(fIdentFuncTable) to High(fIdentFuncTable) do
    if KeyIndices[i] = -1 then
      fIdentFuncTable[i] := AltFunc;

  fIdentFuncTable[22] := Func42;
  fIdentFuncTable[2] := Func58;
  fIdentFuncTable[106] := Func94;
  fIdentFuncTable[74] := Func60;
  fIdentFuncTable[16] := Func6061;
  fIdentFuncTable[52] := Func6062;
  fIdentFuncTable[110] := Func61;
  fIdentFuncTable[146] := Func62;
  fIdentFuncTable[142] := Func6261;
  fIdentFuncTable[90] := FuncBool;
  fIdentFuncTable[144] := FuncBoolean;
  fIdentFuncTable[83] := FuncBreak;
  fIdentFuncTable[138] := FuncByte;
  fIdentFuncTable[98] := FuncConcat;
  fIdentFuncTable[145] := FuncDate95separator;
  fIdentFuncTable[143] := FuncDate95time;
  fIdentFuncTable[48] := FuncDatetime;
  fIdentFuncTable[96] := FuncDay;
  fIdentFuncTable[3] := FuncDec;
  fIdentFuncTable[56] := FuncDecdate;
  fIdentFuncTable[7] := FuncDecimal95separator;
  fIdentFuncTable[82] := FuncElse;
  fIdentFuncTable[21] := FuncExecute;
  fIdentFuncTable[12] := FuncExit95question;
  fIdentFuncTable[95] := FuncFalse;
  fIdentFuncTable[116] := FuncFieldby;
  fIdentFuncTable[89] := FuncGet;
  fIdentFuncTable[70] := FuncGoto;
  fIdentFuncTable[63] := FuncHour;
  fIdentFuncTable[6] := FuncIf;
  fIdentFuncTable[45] := FuncIf95question;
  fIdentFuncTable[41] := FuncInc;
  fIdentFuncTable[94] := FuncIncdate;
  fIdentFuncTable[57] := FuncInt;
  fIdentFuncTable[133] := FuncInteger;
  fIdentFuncTable[112] := FuncLeft;
  fIdentFuncTable[148] := FuncLong95date95format;
  fIdentFuncTable[8] := FuncLong95time95format;
  fIdentFuncTable[136] := FuncMin;
  fIdentFuncTable[1] := FuncMonth;
  fIdentFuncTable[49] := FuncNo;
  fIdentFuncTable[137] := FuncOutput;
  fIdentFuncTable[139] := FuncPadingwith;
  fIdentFuncTable[115] := FuncPadvar;
  fIdentFuncTable[18] := FuncPrint;
  fIdentFuncTable[80] := FuncReal;
  fIdentFuncTable[131] := FuncRight;
  fIdentFuncTable[75] := FuncSec;
  fIdentFuncTable[91] := FuncSet;
  fIdentFuncTable[123] := FuncShort95date95format;
  fIdentFuncTable[132] := FuncShort95time95format;
  fIdentFuncTable[58] := FuncShow;
  fIdentFuncTable[72] := FuncString;
  fIdentFuncTable[118] := FuncThen;
  fIdentFuncTable[130] := FuncTime95separator;
  fIdentFuncTable[129] := FuncTo;
  fIdentFuncTable[62] := FuncTrue;
  fIdentFuncTable[135] := FuncVar;
  fIdentFuncTable[54] := FuncVarandvalue;
  fIdentFuncTable[128] := FuncVarinput;
  fIdentFuncTable[101] := FuncVars;
  fIdentFuncTable[127] := FuncWord;
  fIdentFuncTable[93] := FuncYear;
  fIdentFuncTable[46] := FuncYes;
end;

{$Q-}
function TSynDSTSyn.HashKey(Str: PWideChar): Cardinal;
begin
  Result := 0;
  while IsIdentChar(Str^) do
  begin
    Result := Result * 933 + Ord(Str^) * 185;
    inc(Str);
  end;
  Result := Result mod 149;
  fStringLen := Str - fToIdent;
end;
{$Q+}

function TSynDSTSyn.Func42(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSpecial
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func58(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSpecial
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func94(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSpecial
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func60(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func6061(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func6062(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func61(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func62(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.Func6261(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKComparisons
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncBool(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncBoolean(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncBreak(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncByte(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncConcat(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDate95separator(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDate95time(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDatetime(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDay(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDec(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDecdate(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncDecimal95separator(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncElse(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncExecute(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncExit95question(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncFalse(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncFieldby(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncGet(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncGoto(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncHour(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncIf(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncIf95question(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncInc(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncIncdate(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncInt(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncInteger(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncLeft(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncLong95date95format(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncLong95time95format(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncMin(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncMonth(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncNo(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncOutput(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncPadingwith(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncPadvar(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncPrint(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncReal(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncRight(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncSec(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncSet(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncShort95date95format(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncShort95time95format(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncShow(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncString(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncThen(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncTime95separator(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncTo(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncTrue(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncVar(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKey
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncVarandvalue(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncVarinput(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncVars(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncWord(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKTypes
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncYear(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.FuncYes(Index: Integer): TtkTokenKind;
begin
  if IsCurrentToken(KeyWords[Index]) then
    Result := tkKSecondWord
  else
    Result := tkIdentifier;
end;

function TSynDSTSyn.AltFunc(Index: Integer): TtkTokenKind;
begin
  Result := tkIdentifier;
end;

function TSynDSTSyn.IdentKind(MayBe: PWideChar): TtkTokenKind;
var
  Key: Cardinal;
begin
  fToIdent := MayBe;
  Key := HashKey(MayBe);
  if Key <= High(fIdentFuncTable) then
    Result := fIdentFuncTable[Key](KeyIndices[Key])
  else
    Result := tkIdentifier;
end;

procedure TSynDSTSyn.SpaceProc;
begin
  inc(Run);
  fTokenID := tkSpace;
  while (FLine[Run] <= #32) and not IsLineEnd(Run) do inc(Run);
end;

procedure TSynDSTSyn.NullProc;
begin
  fTokenID := tkNull;
  inc(Run);
end;

procedure TSynDSTSyn.CRProc;
begin
  fTokenID := tkSpace;
  inc(Run);
  if fLine[Run] = #10 then
    inc(Run);
end;

procedure TSynDSTSyn.LFProc;
begin
  fTokenID := tkSpace;
  inc(Run);
end;

procedure TSynDSTSyn.BraceCommentOpenProc;
begin
  Inc(Run);
  fRange := rsBraceComment;
  fTokenID := tkComment;
end;

procedure TSynDSTSyn.BraceCommentProc;
begin
  case fLine[Run] of
     #0: NullProc;
    #10: LFProc;
    #13: CRProc;
  else
    begin
      fTokenID := tkComment;
      repeat
        if (fLine[Run] = '}') then
        begin
          Inc(Run, 1);
          fRange := rsUnKnown;
          Break;
        end;
        if not IsLineEnd(Run) then
          Inc(Run);
      until IsLineEnd(Run);
    end;
  end;
end;

procedure TSynDSTSyn.CStyleCommentOpenProc;
begin
  Inc(Run);
  if (fLine[Run] = '*') then
  begin
    Inc(Run, 1);
    fRange := rsCStyleComment;
    fTokenID := tkComment;
  end
  else
    fTokenID := tkIdentifier;
end;

procedure TSynDSTSyn.CStyleCommentProc;
begin
  case fLine[Run] of
     #0: NullProc;
    #10: LFProc;
    #13: CRProc;
  else
    begin
      fTokenID := tkComment;
      repeat
        if (fLine[Run] = '*') and
           (fLine[Run + 1] = '/') then
        begin
          Inc(Run, 2);
          fRange := rsUnKnown;
          Break;
        end;
        if not IsLineEnd(Run) then
          Inc(Run);
      until IsLineEnd(Run);
    end;
  end;
end;

procedure TSynDSTSyn.StringOpenProc;
begin
  Inc(Run);
  fRange := rsString;
  StringProc;
  fTokenID := tkString;
end;

procedure TSynDSTSyn.StringProc;
begin
  fTokenID := tkString;
  repeat
    if (fLine[Run] = '"') then
    begin
      Inc(Run, 1);
      fRange := rsUnKnown;
      Break;
    end;
    if not IsLineEnd(Run) then
      Inc(Run);
  until IsLineEnd(Run);
end;

constructor TSynDSTSyn.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  fCaseSensitive := False;

  fCommentAttri := TSynHighLighterAttributes.Create(SYNS_AttrComment, SYNS_FriendlyAttrComment);
  fCommentAttri.Style := [fsItalic];
  fCommentAttri.Foreground := clNavy;
  AddAttribute(fCommentAttri);

  fIdentifierAttri := TSynHighLighterAttributes.Create(SYNS_AttrIdentifier, SYNS_FriendlyAttrIdentifier);
  AddAttribute(fIdentifierAttri);

  fKComparisonsAttri := TSynHighLighterAttributes.Create(SYNS_AttrKComparisons, SYNS_FriendlyAttrKComparisons);
  fKComparisonsAttri.Style := [fsBold];
  fKComparisonsAttri.Foreground := clMaroon;
  fKComparisonsAttri.Background := clWhite;
  AddAttribute(fKComparisonsAttri);

  fKeyAttri := TSynHighLighterAttributes.Create(SYNS_AttrReservedWord, SYNS_FriendlyAttrReservedWord);
  fKeyAttri.Style := [fsBold];
  fKeyAttri.Foreground := clBlue;
  fKeyAttri.Background := clWhite;
  AddAttribute(fKeyAttri);

  fKSecondWordAttri := TSynHighLighterAttributes.Create(SYNS_AttrKSecondWord, SYNS_FriendlyAttrKSecondWord);
  fKSecondWordAttri.Style := [fsBold];
  fKSecondWordAttri.Foreground := clMaroon;
  fKSecondWordAttri.Background := clWhite;
  AddAttribute(fKSecondWordAttri);

  fKSpecialAttri := TSynHighLighterAttributes.Create(SYNS_AttrKSpecial, SYNS_FriendlyAttrKSpecial);
  fKSpecialAttri.Style := [fsBold];
  fKSpecialAttri.Foreground := clRed;
  fKSpecialAttri.Background := clWhite;
  AddAttribute(fKSpecialAttri);

  fKTypesAttri := TSynHighLighterAttributes.Create(SYNS_AttrKTypes, SYNS_FriendlyAttrKTypes);
  fKTypesAttri.Style := [fsBold];
  fKTypesAttri.Foreground := clTeal;
  fKTypesAttri.Background := clWhite;
  AddAttribute(fKTypesAttri);

  fSpaceAttri := TSynHighLighterAttributes.Create(SYNS_AttrSpace, SYNS_FriendlyAttrSpace);
  AddAttribute(fSpaceAttri);

  fStringAttri := TSynHighLighterAttributes.Create(SYNS_AttrString, SYNS_FriendlyAttrString);
  fStringAttri.Foreground := clGreen;
  AddAttribute(fStringAttri);

  fTestAttri := TSynHighLighterAttributes.Create(SYNS_AttrTest, SYNS_FriendlyAttrTest);
  fTestAttri.Style := [fsUnderline, fsItalic];
  fTestAttri.Foreground := clBlue;
  fTestAttri.Background := clSilver;
  AddAttribute(fTestAttri);

  SetAttributesOnChange(DefHighlightChange);
  InitIdent;
  fDefaultFilter := SYNS_FilterDST;
  fRange := rsUnknown;
end;

procedure TSynDSTSyn.IdentProc;
begin
  fTokenID := IdentKind(fLine + Run);
  inc(Run, fStringLen);
  while IsIdentChar(fLine[Run]) do
    Inc(Run);
end;

procedure TSynDSTSyn.UnknownProc;
begin
  inc(Run);
  fTokenID := tkUnknown;
end;

procedure TSynDSTSyn.Next;
begin
  fTokenPos := Run;
  case fRange of
    rsBraceComment: BraceCommentProc;
    rsCStyleComment: CStyleCommentProc;
  else
    case fLine[Run] of
      #0: NullProc;
      #10: LFProc;
      #13: CRProc;
      '{': BraceCommentOpenProc;
      '/': CStyleCommentOpenProc;
      '"': StringOpenProc;
      #1..#9, #11, #12, #14..#32: SpaceProc;
      'A'..'Z', 'a'..'z', '_': IdentProc;
    else
      UnknownProc;
    end;
  end;
  inherited;
end;

function TSynDSTSyn.GetDefaultAttribute(Index: Integer): TSynHighLighterAttributes;
begin
  case Index of
    SYN_ATTR_COMMENT: Result := fCommentAttri;
    SYN_ATTR_IDENTIFIER: Result := fIdentifierAttri;
    SYN_ATTR_KEYWORD: Result := fKeyAttri;
    SYN_ATTR_STRING: Result := fStringAttri;
    SYN_ATTR_WHITESPACE: Result := fSpaceAttri;
  else
    Result := nil;
  end;
end;

function TSynDSTSyn.GetEol: Boolean;
begin
  Result := Run = fLineLen + 1;
end;

function TSynDSTSyn.GetKeyWords(TokenKind: Integer): UnicodeString;
begin
  Result := 
    '*,:,^,<,<=,<>,=,>,>=,bool,boolean,break,byte,concat,date_separator,da' +
    'te_time,datetime,day,dec,decdate,decimal_separator,else,execute,exit_q' +
    'uestion,false,fieldby,get,goto,hour,if,if_question,inc,incdate,int,int' +
    'eger,left,long_date_format,long_time_format,min,month,no,output,pading' +
    'with,padvar,print,real,right,sec,set,short_date_format,short_time_form' +
    'at,show,string,then,time_separator,to,true,var,varandvalue,varinput,va' +
    'rs,word,year,yes';
end;

function TSynDSTSyn.GetTokenID: TtkTokenKind;
begin
  Result := fTokenId;
end;

function TSynDSTSyn.GetTokenAttribute: TSynHighLighterAttributes;
begin
  case GetTokenID of
    tkComment: Result := fCommentAttri;
    tkIdentifier: Result := fIdentifierAttri;
    tkKComparisons: Result := fKComparisonsAttri;
    tkKey: Result := fKeyAttri;
    tkKSecondWord: Result := fKSecondWordAttri;
    tkKSpecial: Result := fKSpecialAttri;
    tkKTypes: Result := fKTypesAttri;
    tkSpace: Result := fSpaceAttri;
    tkString: Result := fStringAttri;
    tkTest: Result := fTestAttri;
    tkUnknown: Result := fIdentifierAttri;
  else
    Result := nil;
  end;
end;

function TSynDSTSyn.GetTokenKind: Integer;
begin
  Result := Ord(fTokenId);
end;

function TSynDSTSyn.IsIdentChar(AChar: WideChar): Boolean;
begin
  case AChar of
    '_', '0'..'9', 'a'..'z', 'A'..'Z':
      Result := True;
    else
      Result := False;
  end;
end;

function TSynDSTSyn.GetSampleSource: UnicodeString;
begin
  Result := 
    '{ Sample source for the demo highlighter }'#13#10 +
    #13#10 +
    'This highlighter will recognize the words Hello and'#13#10 +
    'World as keywords. It will also highlight "Strings".'#13#10 +
    #13#10 +
    'And a special keyword type: SynEdit'#13#10 +
    #13#10 +
    '/* This style of comments is also highlighted */'#13#10 +
    'var:string:new_serial_number:'#13#10 +
    'var:integer:first_number:1'#13#10 +
    'var:integer:second_number:1000'#13#10 +
    'var:string:harmlessVar:1'#13#10 +
    #13#10 +
    '^Тест за събиране на продобавяне на стойност към променлива'#13#10 +
    '*5,label1'#13#10 +
    '	set:var:new_serial_number:'#13#10 +
    '	//Добавяне на префикс'#13#10 +
    '	concat:varandvalue:new_serial_number:KAZ'#13#10 +
    '	//Добавяне на първа част от номера'#13#10 +
    '	concat:vars:new_serial_number:first_number'#13#10 +
    '	//Добавяне на данни'#13#10 +
    '	concat:varandvalue:new_serial_number:AH'#13#10 +
    '	//Добавяне на втора част от номера'#13#10 +
    '	concat:vars:new_serial_number:second_number'#13#10 +
    '	//Добавяне на суфикс'#13#10 +
    '	concat:varandvalue:new_serial_number:STAN'#13#10 +
    '	//На това място можем например да изпратим команда за запис на сериен новер'#13#10 +
    '	show:var:new_serial_number'#13#10 +
    '	//В този случай демонстрираме безобидна команда'#13#10 +
    '	execute:varinput:90:harmlessVar'#13#10 +
    '	//calculations	'#13#10 +
    '	inc:var:first_number:1'#13#10 +
    '	dec:var:second_number:100'#13#10 +
    ':label1';
end;

function TSynDSTSyn.IsFilterStored: Boolean;
begin
  Result := fDefaultFilter <> SYNS_FilterDST;
end;

class function TSynDSTSyn.GetFriendlyLanguageName: UnicodeString;
begin
  Result := SYNS_FriendlyLangDST;
end;

class function TSynDSTSyn.GetLanguageName: string;
begin
  Result := SYNS_LangDST;
end;

procedure TSynDSTSyn.ResetRange;
begin
  fRange := rsUnknown;
end;

procedure TSynDSTSyn.SetRange(Value: Pointer);
begin
  fRange := TRangeState(Value);
end;

function TSynDSTSyn.GetRange: Pointer;
begin
  Result := Pointer(fRange);
end;

initialization
{$IFNDEF SYN_CPPB_1}
  RegisterPlaceableHighlighter(TSynDSTSyn);
{$ENDIF}
end.
