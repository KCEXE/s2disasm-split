Snd_Elykiki2_Header:
	smpsHeaderStartSong 3
	smpsHeaderVoice     Snd_Elykiki2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $52

	smpsHeaderDAC       Snd_Elykiki2_DAC
	smpsHeaderFM        Snd_Elykiki2_FM1,	$F7, $09
	smpsHeaderFM        Snd_Elykiki2_FM2,	$F7, $0E
	smpsHeaderFM        Snd_Elykiki2_FM3,	$F7, $0E
	smpsHeaderFM        Snd_Elykiki2_FM4,	$E4, $14
	smpsHeaderFM        Snd_Elykiki2_FM5,	$F7, $18
	smpsHeaderPSG       Snd_Elykiki2_PSG1,	$F7, $02, $00, $00
	smpsHeaderPSG       Snd_Elykiki2_PSG2,	$F7, $04, $00, $00
	smpsHeaderPSG       Snd_Elykiki2_PSG3,	$03-1, $01, $00, $00

; FM1 Data
Snd_Elykiki2_FM1:
	smpsSetvoice        $00
	smpsAlterNote       $F3

Snd_Elykiki2_Loop16:
	smpsCall            Snd_Elykiki2_Call0E
	smpsFMAlterVol      $06
	dc.b	nD2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nD2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	smpsCall            Snd_Elykiki2_Call0F
	smpsCall            Snd_Elykiki2_Call0E
	smpsFMAlterVol      $06
	dc.b	nD2, $04
	smpsFMAlterVol      $FA
	smpsCall            Snd_Elykiki2_Call10
	smpsLoop            $01, $03, Snd_Elykiki2_Loop16
	smpsCall            Snd_Elykiki2_Call0E
	smpsFMAlterVol      $06
	dc.b	nD2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nD2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	smpsCall            Snd_Elykiki2_Call0F
	smpsAlterPitch      $05
	smpsCall            Snd_Elykiki2_Call0E
	smpsAlterPitch      $FB
	smpsCall            Snd_Elykiki2_Call11

Snd_Elykiki2_Loop18:
	smpsCall            Snd_Elykiki2_Call12
	dc.b	nA2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nA2, $04, nRst, $01, nRst, $08
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $06
	dc.b	nA2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nA2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	dc.b	nA2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nA2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nA2, $04

Snd_Elykiki2_Loop17:
	dc.b	nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $02, Snd_Elykiki2_Loop17
	dc.b	nRst, $08, nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $06
	dc.b	nB2, $04
	smpsFMAlterVol      $FA
	smpsAlterPitch      $05
	smpsCall            Snd_Elykiki2_Call12
	smpsAlterPitch      $FB
	dc.b	nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nRst, $08, nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $05
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nB2, $10, nRst, $14, nA2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nA2, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nB2, $0C, nRst, $04
	smpsLoop            $01, $02, Snd_Elykiki2_Loop18

Snd_Elykiki2_Loop19:
	smpsCall            Snd_Elykiki2_Call0E
	smpsFMAlterVol      $06
	dc.b	nD2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nD2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	smpsCall            Snd_Elykiki2_Call0F
	smpsCall            Snd_Elykiki2_Call0E
	smpsFMAlterVol      $06
	dc.b	nD2, $04
	smpsFMAlterVol      $FA
	smpsCall            Snd_Elykiki2_Call10
	smpsLoop            $01, $02, Snd_Elykiki2_Loop19
	smpsJump            Snd_Elykiki2_Loop16

Snd_Elykiki2_Call0E:
	dc.b	nE2, $0C, nRst, $08
	smpsFMAlterVol      $06
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $0A

Snd_Elykiki2_Loop31:
	smpsFMAlterVol      $04
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $03, Snd_Elykiki2_Loop31
	smpsFMAlterVol      $EA
	smpsReturn

Snd_Elykiki2_Call0F:
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $06
	dc.b	nE2, $04
	smpsFMAlterVol      $FA
	dc.b	nE2, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $0A

Snd_Elykiki2_Loop30:
	smpsFMAlterVol      $04
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $03, Snd_Elykiki2_Loop30
	dc.b	nRst, $04
	smpsFMAlterVol      $EA
	smpsReturn

Snd_Elykiki2_Call10:
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $0A

Snd_Elykiki2_Loop2F:
	smpsFMAlterVol      $04
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $05, Snd_Elykiki2_Loop2F
	dc.b	nRst, $04
	smpsFMAlterVol      $E2
	smpsReturn

Snd_Elykiki2_Call11:
	dc.b	nA2, $04
	smpsFMAlterVol      $06
	dc.b	nB2, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	dc.b	nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $0A

Snd_Elykiki2_Loop2E:
	smpsFMAlterVol      $04
	dc.b	nB2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nB2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $05, Snd_Elykiki2_Loop2E
	dc.b	nRst, $04
	smpsFMAlterVol      $E2
	smpsReturn

Snd_Elykiki2_Call12:
	dc.b	nE2, $0C, nRst, $08
	smpsFMAlterVol      $06
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $FA
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	dc.b	nE2, $04, nE2, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsFMAlterVol      $0A

Snd_Elykiki2_Loop2D:
	smpsFMAlterVol      $04
	dc.b	nE2, $04, nRst, $03
	smpsPan             panLeft, $00
	smpsFMAlterVol      $0C
	dc.b	nE2, $04, nRst, $01
	smpsPan             panCenter, $00
	smpsFMAlterVol      $F4
	smpsLoop            $00, $03, Snd_Elykiki2_Loop2D
	smpsFMAlterVol      $EA
	smpsReturn

; FM2 Data
Snd_Elykiki2_FM2:
	smpsSetvoice        $02
	smpsAlterPitch      $18

Snd_Elykiki2_Loop11:
	smpsCall            Snd_Elykiki2_Call0A
	smpsLoop            $00, $02, Snd_Elykiki2_Loop11
	smpsCall            Snd_Elykiki2_Call0B
	dc.b	nRst, $24

Snd_Elykiki2_Loop12:
	smpsCall            Snd_Elykiki2_Call0A
	smpsLoop            $00, $02, Snd_Elykiki2_Loop12
	smpsCall            Snd_Elykiki2_Call0B
	dc.b	nA3, $04, nRst, nA3, $03, nRst, $01, nD4, $04, nRst, nCs4, $03
	dc.b	nRst, $01, nD4, $04, nRst, nE4, $03, nRst, $01
	smpsAlterPitch      $E8
	smpsSetvoice        $07
	smpsCall            Snd_Elykiki2_Call0C
	smpsSetvoice        $08
	smpsNoteFill        $0C
	dc.b	nD6, $18, nE6, nB5, nA5
	smpsNoteFill        $00
	smpsSetvoice        $07
	smpsCall            Snd_Elykiki2_Call0C
	smpsNoteFill        $0C
	smpsSetvoice        $08
	dc.b	nB5, $18, nCs6, nD6, nE6
	smpsNoteFill        $00
	smpsSetvoice        $03
	smpsAlterPitch      $0C

Snd_Elykiki2_Loop13:
	smpsNoteFill        $04
	smpsCall            Snd_Elykiki2_Call0D
	dc.b	nD4, $10
	smpsCall            Snd_Elykiki2_Call0D
	dc.b	nD4, $04, nD4, $08, nD4, $04, nD5, $14, nCs5, $10, nB4, $14
	dc.b	nA4, $0C, nA4, $04, nG4, $08, nFs4, $04, nE4, $08, nD4, $04
	dc.b	nA4, $14, nA4, $10
	smpsNoteFill        $00
	dc.b	nE4, $30, smpsNoAttack, $0B, nRst, $01
	smpsLoop            $00, $02, Snd_Elykiki2_Loop13
	smpsPan             panLeft, $00
	smpsSetvoice        $04
	smpsNoteFill        $03

Snd_Elykiki2_Loop15:
	dc.b	nRst, $30, nRst, nRst, nRst, nD6, $0C, nFs5, nCs6, nD5, $08, nB5
	dc.b	$10, nA4, $04, nB4, nFs5, nA5, nB5, nFs6, nB6, nFs6, nB6

Snd_Elykiki2_Loop14:
	dc.b	nFs6, $08, nB6, $04
	smpsFMAlterVol      $04
	smpsLoop            $00, $08, Snd_Elykiki2_Loop14
	smpsFMAlterVol      $E0
	smpsLoop            $01, $02, Snd_Elykiki2_Loop15
	smpsNoteFill        $00
	smpsAlterPitch      $F4
	smpsPan             panCenter, $00
	smpsJump            Snd_Elykiki2_FM2

Snd_Elykiki2_Call0A:
	dc.b	nRst, $0C, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $13, nRst, $01, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $0F, nRst, $01, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nE4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nE4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	smpsReturn

Snd_Elykiki2_Call0B:
	dc.b	nRst, $0C, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $13, nRst, $01, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $0F, nRst, $01, nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nG4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nG4, $04, nRst, $01
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nFs4, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nFs4, $04, nRst, $09
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $04, nRst, $03
	smpsPan             panRight, $00
	smpsFMAlterVol      $0A
	dc.b	nA3, $04, nRst, $05
	smpsFMAlterVol      $F6
	smpsPan             panCenter, $00
	dc.b	nA3, $17, nRst, $01
	smpsReturn

Snd_Elykiki2_Call0C:
	smpsAlterPitch      $F4
	smpsNoteFill        $02
	dc.b	nA2, $03, nB2, nD3, nE3, nA3, nB3, nD4, nE4, nA3, nB3, nD4
	dc.b	nE4, nA4, nB4, nD5, nE5, nA4, nB4, nD5, nE5, nA5, nB5, nD6
	dc.b	nE6
	smpsFMAlterVol      $14

Snd_Elykiki2_Loop2A:
	dc.b	nA6, nE6
	smpsFMAlterVol      $FE
	smpsLoop            $00, $0A, Snd_Elykiki2_Loop2A

Snd_Elykiki2_Loop2B:
	dc.b	nA6, nE6
	smpsFMAlterVol      $02
	smpsLoop            $00, $0A, Snd_Elykiki2_Loop2B
	smpsFMAlterVol      $FB
	dc.b	nA6, nE6, nD6, nCs6
	smpsFMAlterVol      $FB
	dc.b	nE6, nD6, nCs6, nA5
	smpsFMAlterVol      $FB
	dc.b	nE5, nD5, nCs5, nA4
	smpsFMAlterVol      $FB
	dc.b	nE4, nD4, nCs4, nA3, nE3, nA3, nD4, nE4, nA4, $03, nE4

Snd_Elykiki2_Loop2C:
	smpsFMAlterVol      $02
	dc.b	nA4, nE4
	smpsLoop            $00, $05, Snd_Elykiki2_Loop2C
	smpsFMAlterVol      $F6
	smpsNoteFill        $00
	smpsAlterPitch      $0C
	smpsReturn

Snd_Elykiki2_Call0D:
	dc.b	nD5, $08, nCs5, $0C, nB4, $10, nA4, $0C, nG4, nFs4, nE4, $08
	smpsReturn

; FM3 Data
Snd_Elykiki2_FM3:
	smpsSetvoice        $02
	smpsFMAlterVol      $0A
	dc.b	nRst, $0F
	smpsAlterPitch      $18

Snd_Elykiki2_Loop0C:
	smpsCall            Snd_Elykiki2_Call0A
	smpsLoop            $00, $02, Snd_Elykiki2_Loop0C
	smpsCall            Snd_Elykiki2_Call0B
	dc.b	nRst, $24

Snd_Elykiki2_Loop0D:
	smpsCall            Snd_Elykiki2_Call0A
	smpsLoop            $00, $02, Snd_Elykiki2_Loop0D
	smpsCall            Snd_Elykiki2_Call0B
	dc.b	nA3, $04, nRst, nA3, $03, nRst, $01, nD4, $04, nRst, nCs4, $03
	dc.b	nRst, $01, nD4, $04, nRst, nE4, $03, nRst, $01
	smpsAlterPitch      $E8
	smpsPan             panRight, $00
	smpsSetvoice        $07
	smpsCall            Snd_Elykiki2_Call0C
	smpsSetvoice        $08
	smpsNoteFill        $0C
	dc.b	nD6, $18, nE6, nB5, nA5
	smpsNoteFill        $00
	smpsSetvoice        $07
	smpsCall            Snd_Elykiki2_Call0C
	smpsSetvoice        $08
	smpsNoteFill        $0C
	dc.b	nB5, $18, nCs6, nD6, nE6, $12
	smpsNoteFill        $00
	smpsSetvoice        $03
	smpsModSet          $07, $01, $03, $07
	smpsAlterPitch      $0C

Snd_Elykiki2_Loop0E:
	smpsNoteFill        $04
	smpsCall            Snd_Elykiki2_Call0D
	dc.b	nD4, $10
	smpsCall            Snd_Elykiki2_Call0D
	dc.b	nD4, $04, nD4, $08, nD4, $04, nD5, $14, nCs5, $10, nB4, $14
	dc.b	nA4, $0C, nA4, $04, nG4, $08, nFs4, $04, nE4, $08, nD4, $04
	dc.b	nA4, $14, nA4, $10
	smpsNoteFill        $00
	dc.b	nE4, $30, smpsNoAttack, $0B, nRst, $01
	smpsLoop            $00, $02, Snd_Elykiki2_Loop0E
	smpsModSet          $02, $01, $00, $01
	smpsSetvoice        $04
	smpsNoteFill        $03
	dc.b	nRst, $30, nRst, nRst, nRst, nD6, $0C, nFs5, nCs6, nD5, $08, nB5
	dc.b	$10, nA4, $04, nB4, nFs5, nA5, nB5, nFs6, nB6, nFs6, nB6

Snd_Elykiki2_Loop0F:
	dc.b	nFs6, $08, nB6, $04
	smpsFMAlterVol      $04
	smpsLoop            $00, $08, Snd_Elykiki2_Loop0F
	smpsFMAlterVol      $E0
	dc.b	nRst, $30, nRst, nRst, nRst, nD6, $0C, nFs5, nCs6, nD5, $08, nB5
	dc.b	$10, nA4, $04, nB4, nFs5, nA5, nB5, nFs6, nB6, nFs6, nB6

Snd_Elykiki2_Loop10:
	dc.b	nFs6, $08, nB6, $04
	smpsFMAlterVol      $04
	smpsLoop            $00, $07, Snd_Elykiki2_Loop10
	dc.b	nFs6, $03
	smpsFMAlterVol      $F6
	smpsFMAlterVol      $E4
	smpsNoteFill        $00
	smpsAlterPitch      $F4
	smpsJump            Snd_Elykiki2_FM3

; FM4 Data
Snd_Elykiki2_FM4:
	smpsModSet          $33, $01, $0C, $06

Snd_Elykiki2_Loop09:
	smpsSetvoice        $06
	smpsCall            Snd_Elykiki2_Call08
	smpsLoop            $00, $03, Snd_Elykiki2_Loop09
	smpsCall            Snd_Elykiki2_Call09

Snd_Elykiki2_Loop0A:
	dc.b	nFs5, $24, nFs5, $30, smpsNoAttack, $0C, nE5, $24, nFs5, $30, smpsNoAttack, $0C
	smpsSetvoice        $01
	smpsFMAlterVol      $06
	dc.b	nCs6, $30, smpsNoAttack, $30
	smpsFMAlterVol      $FA
	smpsSetvoice        $06
	dc.b	nE5, $30, smpsNoAttack, $18, nD5, $08, nE5, $10
	smpsLoop            $00, $02, Snd_Elykiki2_Loop0A

Snd_Elykiki2_Loop0B:
	smpsCall            Snd_Elykiki2_Call06
	smpsCall            Snd_Elykiki2_Call07
	smpsAlterPitch      $FE
	smpsCall            Snd_Elykiki2_Call06
	smpsCall            Snd_Elykiki2_Call07
	smpsAlterPitch      $02
	smpsLoop            $01, $02, Snd_Elykiki2_Loop0B
	smpsJump            Snd_Elykiki2_Loop09

Snd_Elykiki2_Call08:
	dc.b	nFs5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30, nE5, smpsNoAttack, $30, smpsNoAttack
	dc.b	$30, smpsNoAttack, $18, nD5, $08, nE5, $10
	smpsReturn

Snd_Elykiki2_Call09:
	dc.b	nFs5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $18, nFs5, $18, nE5, $30
	dc.b	smpsNoAttack, $30, nFs5, $30, nFs5, $18, nFs5
	smpsReturn

Snd_Elykiki2_Call06:
	smpsFMAlterVol      $14

Snd_Elykiki2_Loop29:
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $FD
	smpsLoop            $00, $08, Snd_Elykiki2_Loop29
	smpsReturn

Snd_Elykiki2_Call07:
	dc.b	nFs5, $06, nRst
	smpsFMAlterVol      $03
	smpsLoop            $00, $08, Snd_Elykiki2_Call07
	smpsFMAlterVol      $EC
	smpsReturn

; FM5 Data
Snd_Elykiki2_FM5:
	smpsModSet          $2E, $01, $0C, $06

Snd_Elykiki2_Loop06:
	smpsSetvoice        $01
	smpsCall            Snd_Elykiki2_Call04
	smpsLoop            $00, $03, Snd_Elykiki2_Loop06
	smpsCall            Snd_Elykiki2_Call05

Snd_Elykiki2_Loop07:
	dc.b	nD5, $24, nD5, $30, smpsNoAttack, $0C, nCs5, $24, nEb5, $30, smpsNoAttack, $0C
	dc.b	nD5, $30, smpsNoAttack, $30, nCs5, $30, smpsNoAttack, $18, nB4, $08, nCs5, $10
	smpsLoop            $00, $02, Snd_Elykiki2_Loop07
	smpsAlterPitch      $FC

Snd_Elykiki2_Loop08:
	smpsCall            Snd_Elykiki2_Call06
	smpsCall            Snd_Elykiki2_Call07
	smpsAlterPitch      $FF
	smpsCall            Snd_Elykiki2_Call06
	smpsCall            Snd_Elykiki2_Call07
	smpsAlterPitch      $01
	smpsLoop            $01, $02, Snd_Elykiki2_Loop08
	smpsAlterPitch      $04
	smpsJump            Snd_Elykiki2_Loop06

Snd_Elykiki2_Call04:
	dc.b	nD5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $30, nCs5, smpsNoAttack, $30, smpsNoAttack
	dc.b	$30, smpsNoAttack, $18, nB4, $08, nCs5, $10
	smpsReturn

Snd_Elykiki2_Call05:
	dc.b	nD5, $30, smpsNoAttack, $30, smpsNoAttack, $30, smpsNoAttack, $18, nD5, $18
	smpsSetvoice        $01
	dc.b	nCs5, $30, smpsNoAttack, $30, nEb5, $30, nEb5, $18, nEb5
	smpsReturn

; PSG1 Data
Snd_Elykiki2_PSG1:
	smpsModSet          $0A, $01, $01, $04

Snd_Elykiki2_Loop23:
	smpsPSGvoice        sTone_0A
	smpsCall            Snd_Elykiki2_Call13
	smpsPSGvoice        sTone_0A
	dc.b	nFs4, $08, nG4, $10
	smpsAlterPitch      $0C
	smpsLoop            $02, $02, Snd_Elykiki2_Loop23
	smpsPSGAlterVol     $01
	smpsPSGvoice        sTone_0A
	smpsAlterPitch      $0C
	dc.b	nA3, $30, smpsNoAttack, $27
	smpsCall            Snd_Elykiki2_Call14
	dc.b	nA3, $04, nRst, nA3, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nA2, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack, $18, nA2, $18, nA3, $30
	dc.b	smpsNoAttack, $27
	smpsCall            Snd_Elykiki2_Call14
	dc.b	nA3, $04, nRst, nA3, nRst, $08, nA4, $04, nRst, $08, nA4, $04
	dc.b	nA4, $30, smpsNoAttack, $0C
	smpsAlterPitch      $F4
	dc.b	nB4, nRst, nA4, nRst, nG4, nRst, nFs4, nRst
	smpsPSGAlterVol     $FF
	smpsAlterPitch      $E8

Snd_Elykiki2_Loop24:
	smpsCall            Snd_Elykiki2_Call15
	smpsPSGvoice        sTone_0A
	dc.b	nD5, $08, nE5, $10
	smpsLoop            $01, $02, Snd_Elykiki2_Loop24
	smpsAlterPitch      $18
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $08

Snd_Elykiki2_Loop25:
	dc.b	nA5, $03, nE5, nD5, nCs5
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, Snd_Elykiki2_Loop25

Snd_Elykiki2_Loop26:
	dc.b	nA5, $03, nE5, nD5, nCs5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Snd_Elykiki2_Loop26

Snd_Elykiki2_Loop27:
	dc.b	nE5, $03, nD5, nCs5, nA4
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, Snd_Elykiki2_Loop27

Snd_Elykiki2_Loop28:
	dc.b	nE5, $03, nD5, nCs5, nA4
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Snd_Elykiki2_Loop28
	smpsLoop            $01, $02, Snd_Elykiki2_Loop25
	smpsPSGAlterVol     $F8
	smpsAlterPitch      $0C
	smpsJump            Snd_Elykiki2_PSG1

Snd_Elykiki2_Call13:
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $05
	dc.b	nA4, $0C

Snd_Elykiki2_Loop3A:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $05, Snd_Elykiki2_Loop3A
	smpsPSGAlterVol     $07
	dc.b	nB4, $03

Snd_Elykiki2_Loop3B:
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, Snd_Elykiki2_Loop3B
	smpsPSGAlterVol     $05
	dc.b	nA4, $06

Snd_Elykiki2_Loop3C:
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $05, Snd_Elykiki2_Loop3C
	smpsPSGAlterVol     $05
	dc.b	nD5, $06

Snd_Elykiki2_Loop3D:
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $05, Snd_Elykiki2_Loop3D
	smpsPSGAlterVol     $07
	dc.b	nCs5, $03

Snd_Elykiki2_Loop3E:
	dc.b	smpsNoAttack, $03
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, Snd_Elykiki2_Loop3E
	smpsPSGAlterVol     $07
	dc.b	nA4, $06

Snd_Elykiki2_Loop3F:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $07, Snd_Elykiki2_Loop3F
	dc.b	smpsNoAttack, $06

Snd_Elykiki2_Loop40:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $06, Snd_Elykiki2_Loop40
	smpsPSGAlterVol     $FA
	smpsReturn

Snd_Elykiki2_Call14:
	dc.b	nA3, $03, nB3, nCs4, nD4, $04, nRst, $08, nCs4, $04, nRst, $08
	dc.b	nB3, $04, nRst, $08, nA3, $04, nRst, $08, nB3, $06, nRst, $0E
	dc.b	nFs3, $06, nRst, $0A, nG3, $0C
	smpsReturn

Snd_Elykiki2_Call15:
	smpsPSGvoice        sTone_0A
	dc.b	nFs5, $0C

Snd_Elykiki2_Loop32:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Snd_Elykiki2_Loop32

Snd_Elykiki2_Loop33:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $03, Snd_Elykiki2_Loop33
	smpsPSGAlterVol     $FF
	dc.b	nE5, $0C

Snd_Elykiki2_Loop34:
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Snd_Elykiki2_Loop34
	smpsPSGAlterVol     $FC
	dc.b	nA5, $0C

Snd_Elykiki2_Loop35:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $04, Snd_Elykiki2_Loop35
	smpsPSGAlterVol     $FC
	smpsPSGAlterVol     $04
	dc.b	nFs5, $0C

Snd_Elykiki2_Loop36:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $04, Snd_Elykiki2_Loop36

Snd_Elykiki2_Loop37:
	dc.b	smpsNoAttack, $0C
	smpsPSGAlterVol     $01
	smpsLoop            $00, $03, Snd_Elykiki2_Loop37
	smpsPSGAlterVol     $FD
	smpsPSGAlterVol     $06
	dc.b	nE5, $06

Snd_Elykiki2_Loop38:
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $06, Snd_Elykiki2_Loop38

Snd_Elykiki2_Loop39:
	dc.b	smpsNoAttack, $06
	smpsPSGAlterVol     $01
	smpsLoop            $00, $05, Snd_Elykiki2_Loop39
	smpsPSGAlterVol     $FB
	smpsReturn

; PSG2 Data
Snd_Elykiki2_PSG2:
	smpsModSet          $06, $01, $02, $05
	dc.b	nRst, $16

Snd_Elykiki2_Jump00:
	smpsPSGvoice        sTone_0A
	smpsCall            Snd_Elykiki2_Call13
	smpsPSGvoice        sTone_0A
	dc.b	nFs4, $08, nG4, $10
	smpsAlterPitch      $0C
	smpsCall            Snd_Elykiki2_Call13
	smpsPSGvoice        sTone_0A
	dc.b	nFs4, $08, nG4, $10
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $02
	smpsPSGvoice        sTone_0A
	smpsAlterPitch      $0C
	dc.b	nA3, $30, smpsNoAttack, $20
	smpsCall            Snd_Elykiki2_Call14
	dc.b	nA3, $04, nRst, nA3, nRst, $08, nA2, $04, nRst, $08, nA2, $04
	dc.b	nA2, $30, smpsNoAttack, $0C, smpsNoAttack, $30, smpsNoAttack, $18, nA2, $18, nA3, $30
	dc.b	smpsNoAttack, $27
	smpsCall            Snd_Elykiki2_Call14
	dc.b	nA3, $04, nRst, nA3, nRst, $08, nBb4, $04, nRst, $08, nBb4, $04
	dc.b	nBb4, $30, smpsNoAttack, $0C
	smpsAlterPitch      $F4
	dc.b	nB4, nRst, nA4, nRst, nG4, nRst, nFs4, nRst
	smpsPSGAlterVol     $FE
	dc.b	nRst, $07
	smpsAlterPitch      $E8

Snd_Elykiki2_Loop1E:
	smpsCall            Snd_Elykiki2_Call15
	smpsPSGvoice        sTone_0A
	dc.b	nD5, $08, nE5, $10
	smpsLoop            $01, $02, Snd_Elykiki2_Loop1E
	smpsAlterPitch      $18
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $08

Snd_Elykiki2_Loop1F:
	dc.b	nA5, $03, nE5, nD5, nCs5
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, Snd_Elykiki2_Loop1F

Snd_Elykiki2_Loop20:
	dc.b	nA5, $03, nE5, nD5, nCs5
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Snd_Elykiki2_Loop20

Snd_Elykiki2_Loop21:
	dc.b	nE5, $03, nD5, nCs5, nA4
	smpsPSGAlterVol     $FF
	smpsLoop            $00, $08, Snd_Elykiki2_Loop21

Snd_Elykiki2_Loop22:
	dc.b	nE5, $03, nD5, nCs5, nA4
	smpsPSGAlterVol     $01
	smpsLoop            $00, $08, Snd_Elykiki2_Loop22
	smpsLoop            $01, $02, Snd_Elykiki2_Loop1F
	smpsPSGAlterVol     $F8
	smpsAlterPitch      $0C
	smpsJump            Snd_Elykiki2_Jump00

; PSG3 Data
Snd_Elykiki2_PSG3:
	smpsPSGform         $E7

Snd_Elykiki2_Loop1A:
	smpsPSGvoice        sTone_02
	dc.b	nG6, $08, $04
	smpsLoop            $00, $1C, Snd_Elykiki2_Loop1A
	dc.b	nG6, $08, $04
	smpsPSGvoice        sTone_08
	dc.b	nG6, $0C
	smpsPSGvoice        sTone_02
	dc.b	nG6, $08, $04
	smpsPSGvoice        sTone_08
	dc.b	nG6, $0C
	smpsPSGvoice        sTone_02
	smpsLoop            $01, $04, Snd_Elykiki2_Loop1A

Snd_Elykiki2_Loop1B:
	dc.b	nG6, $08, $04
	smpsLoop            $00, $18, Snd_Elykiki2_Loop1B

Snd_Elykiki2_Loop1C:
	dc.b	nG6, $08, $04
	smpsLoop            $00, $06, Snd_Elykiki2_Loop1C
	dc.b	nG6, $08
	smpsPSGvoice        sTone_08
	dc.b	nG6, $0C
	smpsPSGvoice        sTone_02
	dc.b	nG6, $04
	smpsLoop            $01, $02, Snd_Elykiki2_Loop1B

Snd_Elykiki2_Loop1D:
	dc.b	nG6, $08, $04
	smpsLoop            $00, $1C, Snd_Elykiki2_Loop1D
	dc.b	nG6, $08, $04
	smpsPSGvoice        sTone_08
	dc.b	nG6, $0C
	smpsPSGvoice        sTone_02
	dc.b	nG6, $08, $04
	smpsPSGvoice        sTone_08
	dc.b	nG6, $0C
	smpsPSGvoice        sTone_02
	smpsLoop            $01, $02, Snd_Elykiki2_Loop1D
	smpsJump            Snd_Elykiki2_Loop1A

; DAC Data
Snd_Elykiki2_DAC:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_DAC
	smpsCall            Snd_Elykiki2_Call01

Snd_Elykiki2_Loop00:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_Loop00
	smpsCall            Snd_Elykiki2_Call02

Snd_Elykiki2_Loop01:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_Loop01
	smpsCall            Snd_Elykiki2_Call01

Snd_Elykiki2_Loop02:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_Loop02
	smpsCall            Snd_Elykiki2_Call03

Snd_Elykiki2_Loop03:
	smpsCall            Snd_Elykiki2_Call00
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $14
	dc.b	$04
	smpsCall            Snd_Elykiki2_Call00
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $08
	dc.b	$0C, $04
	smpsLoop            $00, $02, Snd_Elykiki2_Loop03

Snd_Elykiki2_Loop04:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_Loop04
	smpsCall            Snd_Elykiki2_Call01

Snd_Elykiki2_Loop05:
	smpsCall            Snd_Elykiki2_Call00
	smpsLoop            $00, $03, Snd_Elykiki2_Loop05
	smpsCall            Snd_Elykiki2_Call03
	smpsJump            Snd_Elykiki2_DAC

Snd_Elykiki2_Call00:
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dSnareS3, $18
	smpsReturn

Snd_Elykiki2_Call01:
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $18, dKickS3, $0C, dElectricMidTom, $08
	dc.b	dElectricMidTom, $04, dElectricFloorTom, $0C
	smpsReturn

Snd_Elykiki2_Call02:
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $18, $0C, dSnareS3, $14, dSnareS3
	dc.b	$04
	smpsReturn

Snd_Elykiki2_Call03:
	dc.b	dKickS3, $14, dKickS3, $04, dSnareS3, $0C, dKickS3, $0C, dSnareS3, $08, $0C, $04
	dc.b	nRst, $08, dSnareS3, $04, dKickS3, $08, dSnareS3, $04
	smpsReturn

Snd_Elykiki2_Voices:
;	Voice $00
;	$3B
;	$02, $01, $01, $01, 	$5F, $5F, $5F, $5F, 	$15, $0A, $0A, $0A
;	$08, $0B, $0D, $0A, 	$7E, $0E, $0E, $0E, 	$10, $1E, $10, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $02
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0A, $15
	smpsVcDecayRate2    $0A, $0D, $0B, $08
	smpsVcDecayLevel    $00, $00, $00, $07
	smpsVcReleaseRate   $0E, $0E, $0E, $0E
	smpsVcTotalLevel    $00, $10, $1E, $10

;	Voice $01
;	$24
;	$39, $51, $35, $51, 	$5F, $9E, $9E, $9E, 	$05, $02, $05, $02
;	$09, $09, $09, $09, 	$08, $B8, $08, $B8, 	$36, $80, $36, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $01, $05, $01, $09
	smpsVcRateScale     $02, $02, $02, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $05, $02, $05
	smpsVcDecayRate2    $09, $09, $09, $09
	smpsVcDecayLevel    $0B, $00, $0B, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $36, $00, $36

;	Voice $02
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$13, $08, $08, $08, 	$1D, $8A, $8A, $8A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0E, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $08, $08, $08, $03
	smpsVcTotalLevel    $0A, $0A, $0A, $1D

;	Voice $03
;	$3A
;	$01, $03, $01, $43, 	$12, $59, $12, $5B, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$75, $35, $05, $57, 	$15, $26, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $00, $00, $00
	smpsVcCoarseFreq    $03, $01, $03, $01
	smpsVcRateScale     $01, $00, $01, $00
	smpsVcAttackRate    $1B, $12, $19, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $03, $07
	smpsVcReleaseRate   $07, $05, $05, $05
	smpsVcTotalLevel    $00, $27, $26, $15

;	Voice $04
;	$34
;	$50, $70, $52, $51, 	$3F, $3F, $3F, $3F, 	$0F, $0E, $09, $0F
;	$04, $04, $02, $02, 	$08, $F8, $08, $F8, 	$12, $84, $23, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $05, $07, $05
	smpsVcCoarseFreq    $01, $02, $00, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $3F, $3F, $3F, $3F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $0E, $0F
	smpsVcDecayRate2    $02, $02, $04, $04
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $23, $04, $12

;	Voice $05
;	$05
;	$37, $74, $04, $34, 	$DF, $1F, $5F, $5F, 	$04, $0F, $0F, $02
;	$01, $03, $00, $03, 	$20, $13, $13, $13, 	$11, $85, $85, $85
	smpsVcAlgorithm     $05
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $00, $07, $03
	smpsVcCoarseFreq    $04, $04, $04, $07
	smpsVcRateScale     $01, $01, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $0F, $0F, $04
	smpsVcDecayRate2    $03, $00, $03, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $03, $03, $03, $00
	smpsVcTotalLevel    $05, $05, $05, $11

;	Voice $06
;	$24
;	$36, $53, $35, $52, 	$5F, $9E, $9E, $9E, 	$05, $02, $05, $02
;	$09, $09, $09, $09, 	$08, $B8, $08, $B8, 	$36, $80, $36, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $03, $05, $03
	smpsVcCoarseFreq    $02, $05, $03, $06
	smpsVcRateScale     $02, $02, $02, $01
	smpsVcAttackRate    $1E, $1E, $1E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $02, $05, $02, $05
	smpsVcDecayRate2    $09, $09, $09, $09
	smpsVcDecayLevel    $0B, $00, $0B, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $36, $00, $36

;	Voice $07
;	$3C
;	$34, $72, $76, $33, 	$1B, $1B, $1B, $1B, 	$0F, $0E, $09, $0F
;	$04, $04, $04, $04, 	$08, $F8, $08, $F8, 	$26, $82, $30, $8A
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $03
	smpsVcCoarseFreq    $03, $06, $02, $04
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1B, $1B, $1B, $1B
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $09, $0E, $0F
	smpsVcDecayRate2    $04, $04, $04, $04
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $0A, $30, $02, $26

;	Voice $08
;	$3D
;	$01, $02, $00, $01, 	$1F, $0E, $0E, $0E, 	$07, $1F, $1F, $1F
;	$00, $00, $00, $00, 	$13, $06, $06, $06, 	$1D, $8A, $8A, $8A
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $00, $02, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0E, $0E, $0E, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $1F, $07
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $01
	smpsVcReleaseRate   $06, $06, $06, $03
	smpsVcTotalLevel    $0A, $0A, $0A, $1D

