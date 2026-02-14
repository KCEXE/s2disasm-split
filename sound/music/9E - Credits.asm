Snd_CreditsS2_Header:
	smpsHeaderStartSong 2
	smpsHeaderVoice     Snd_CreditsS2_Voices
	smpsHeaderChan      $06, $03
	smpsHeaderTempo     $01, $F0

	smpsHeaderDAC       Snd_CreditsS2_DAC
	smpsHeaderFM        Snd_CreditsS2_FM1,	$00, $0E
	smpsHeaderFM        Snd_CreditsS2_FM2,	$18, $0A
	smpsHeaderFM        Snd_CreditsS2_FM3,	$00, $14
	smpsHeaderFM        Snd_CreditsS2_FM4,	$00, $16
	smpsHeaderFM        Snd_CreditsS2_FM5,	$0C, $16
	smpsHeaderPSG       Snd_CreditsS2_PSG1,	$E8, $06, $00, fTone_0B
	smpsHeaderPSG       Snd_CreditsS2_PSG2,	$DC, $07, $00, fTone_0B
	smpsHeaderPSG       Snd_CreditsS2_PSG3,	$00, $02, $00, fTone_03

; FM1 Data
Snd_CreditsS2_FM1:
	smpsAlterPitch      $F4
	smpsAlterVol        $FE
	smpsCall            Snd_CreditsS2_Call03
	smpsAlterPitch      $0C
	smpsAlterVol        $02

Snd_CreditsS2_Loop24:
	dc.b	nRst, $30
	smpsLoop            $00, $08, Snd_CreditsS2_Loop24
	smpsSetvoice        $03
	smpsCall            Snd_CreditsS2_Call21
	dc.b	nA3, $06, nA2
	smpsCall            Snd_CreditsS2_Call21
	smpsAlterVol        $FD

Snd_CreditsS2_Loop25:
	smpsSetvoice        $00
	dc.b	nFs4, $06, nA4
	smpsCall            Snd_CreditsS2_Call22
	smpsLoop            $00, $02, Snd_CreditsS2_Loop25
	dc.b	nRst, $06, nRst, nRst, $30, nRst
	smpsSetvoice        $0B
	smpsAlterPitch      $18
	smpsAlterVol        $02

Snd_CreditsS2_Loop26:
	dc.b	nG1, $0C, nD1, nF1, nD1, $06, nG1, $05, $07, $06, nD1, $0C
	dc.b	nF1, nD1
	smpsLoop            $00, $05, Snd_CreditsS2_Loop26
	dc.b	nRst, $30, nRst
	smpsSetvoice        $0E
	smpsAlterVol        $FF
	smpsAlterPitch      $E8
	smpsCall            Snd_CreditsS2_Call23
	dc.b	nRst, $12, nE1, nG1, $06, nRst, $18, nA1, $12, nCs2, $06, nRst
	dc.b	nRst, $12, nD1, nFs1, $08, nRst, $16, nA1, $06, nE1, nF1, nG1
	dc.b	nA1
	smpsCall            Snd_CreditsS2_Call23
	dc.b	nRst, $12, nE2, nCs2, $08, nRst, $16, nA1, $12, nE2, $08, nRst
	dc.b	$04
	smpsSetvoice        $12
	smpsModSet          $18, $01, $0A, $04
	dc.b	$30, nRst
	smpsCall            Snd_CreditsS2_Call24
	dc.b	smpsNoAttack, $24, smpsNoAttack, nAb5, $01, smpsNoAttack, nG5, smpsNoAttack, nFs5, smpsNoAttack, nF5, smpsNoAttack
	dc.b	nE5, smpsNoAttack, nEb5, smpsNoAttack, nD5, smpsNoAttack, nCs5, smpsNoAttack, nC5, smpsNoAttack, nB4, smpsNoAttack
	dc.b	nBb4, smpsNoAttack, nA4, nRst, $60
	smpsSetvoice        $01
	smpsAlterPitch      $F4
	smpsAlterVol        $FA
	smpsModOff
	smpsCall            Snd_CreditsS2_Call25
	dc.b	nC4, $03
	smpsCall            Snd_CreditsS2_Call25
	dc.b	nRst, $63
	smpsAlterVol        $0A
	smpsAlterNote       $01
	smpsSetvoice        $1B
	dc.b	nE5, $0C
	smpsNoteFill        $06
	dc.b	nC5, $06, nA4, nC5, $0C, nRst, nRst
	smpsSetvoice        $1C
	smpsAlterVol        $FA
	smpsNoteFill        $00
	dc.b	nB4, $0C, $12, $06
	smpsSetvoice        $1B
	smpsAlterVol        $06
	smpsNoteFill        $06
	dc.b	nF5, nF5, nRst, nF5, nRst, nF5
	smpsNoteFill        $00
	dc.b	nFs5, $0C, nG5, nRst
	smpsNoteFill        $06
	dc.b	nG5, $06, $06, nA5, nG5
	smpsNoteFill        $00
	dc.b	nE5, $0C
	smpsNoteFill        $06
	dc.b	nC5, $06, nA4, nC5, $0C, nRst, nRst
	smpsNoteFill        $00
	smpsSetvoice        $1C
	smpsAlterVol        $FA
	dc.b	nE5, nG5, nE5
	smpsSetvoice        $1A
	smpsAlterVol        $06
	smpsNoteFill        $06
	dc.b	nF5, $06, nF5, nRst, nF5, nRst, nF5
	smpsNoteFill        $00
	dc.b	nFs5, $0C, nG5, $06, nRst, nRst, $54, $30
	smpsSetvoice        $1F
	smpsAlterPitch      $18
	smpsAlterVol        $F7
	smpsAlterNote       $00
	dc.b	$06, nG3, nA3, nRst, nC4, nRst, nD4, nRst, nEb4, nRst, nD4, nRst
	dc.b	nC4, nD4, nRst, nC4
	smpsAlterPitch      $F4
	smpsSetvoice        $00
	dc.b	nRst, $0C, nG3, $06, nA3, nC4, nRst, $12, nG3, $06, nA3, nC4
	dc.b	nRst, nEb4, nC4, nRst, nC4
	smpsAlterPitch      $0C
	smpsSetvoice        $1F
	dc.b	nRst, nG4, $12, nEb4, $06, nRst, nD4, nRst, nEb4, nRst, nD4, nRst
	dc.b	nC4, nA3, nRst, nC4
	smpsAlterPitch      $F4
	smpsSetvoice        $00
	dc.b	nRst, nBb3, $12, nA3, $06, nRst, $12, nBb3, $06, nRst, nA3, nRst
	dc.b	nBb3, nC4, nRst, nC4, nRst, $30, nRst
	smpsSetvoice        $21
	smpsAlterPitch      $0C
	dc.b	$30, $08, nG2, $04, nF2, $0C, nE2, nD2, nC2, $08, $04, nE1
	dc.b	$0C, nF1, nFs1, nG1, nB1, nC2, nD2, nE2, nB1, nAb1, nFs1, nE1
	dc.b	nB1, nE2, nE1, nA1, nB1, nC2, nB1, nA1, nC2, nE2, nA1, nAb1
	dc.b	nBb1, nC2, nBb1, nAb1, nA1, nBb1, nB1, nC2, nB1, nC2, nD2, nE2
	dc.b	$08, $04, nB1, $0C, nE1, nAb1, nA1, nB1, nC2, nE2, nF2, $08
	dc.b	nA1, $10, nBb1, $0C, nB1
	smpsCall            Snd_CreditsS2_Call26
	dc.b	nF2
	smpsAlterVol        $04
	smpsCall            Snd_CreditsS2_Call26
	dc.b	nF2
	smpsAlterVol        $FC
	smpsCall            Snd_CreditsS2_Call26
	dc.b	nF2, $08, nC2, $04
	smpsSetvoice        $23
	smpsAlterPitch      $E8
	smpsAlterVol        $07
	dc.b	nRst, $60
	smpsCall            Snd_CreditsS2_Call0A
	dc.b	nRst, $60
	smpsAlterVol        $FB
	dc.b	$0C, nE6, $06, nRst, nB6, nE6, $06, nRst, $0C, nE6, $06, nRst
	dc.b	nB6, nE6, $06, nRst, $18
	smpsAlterVol        $05
	dc.b	$0C, nA3, nRst, nA3, nRst, $24
	smpsAlterNote       $02
	smpsAlterVol        $08
	dc.b	nA2, $6C
	smpsStop

Snd_CreditsS2_Call03:
	smpsSetvoice        $07
	dc.b	nRst, $54, nBb5, $04, nB5, nC6, nCs6, $24, nE6, nA6, $18, nG6
	dc.b	$24, nFs6, nD6, $18, $0C, nCs6, nRst, nE6, $60, smpsNoAttack, $3C, nCs6
	dc.b	$24, nE6, nA6, $18, nB6, $24, nG6, nB6, $18, $24, nCs7, $60
	dc.b	smpsNoAttack, $3C
	smpsReturn

Snd_CreditsS2_Call21:
	dc.b	nC3, $0C, nC4, $06, nRst, nC4, $0C, nG3, nD4, $12, nC4, $0C
	dc.b	nG3, $06, nA3, nC4, nD3, $0C, nD4, $06, nRst, nD4, $0C, nA3
	dc.b	nE4, $12, nD4, $06, nRst, nA3, nB3, nD4, nBb2, $0C, nBb3, $06
	dc.b	nRst, nBb3, $0C, nF3, nC4, $12, nBb3, $0C, nF3, $06, nG3, nBb3
	dc.b	nA2, $0C, nA3, $06, nA2, nB2, $0C, nB3, $06, nB2, nC3, $0C
	dc.b	nC4, $06, nC3, nA2, $0C
	smpsReturn

Snd_CreditsS2_Call22:
	dc.b	nCs5, $0C, nB4, $06, nA4, nB4, nA4, $0C, $04, nRst, $0E
	smpsSetvoice        $07
	dc.b	nFs4, $06, nCs4, nE4, nFs4
	smpsSetvoice        $00
	dc.b	nFs4, nA4, nCs5, $0C, nB4, $06, nA4, nB4, nA4, $0C, nB4, $04
	dc.b	nRst, $08, nA4, $04, nRst, $08, nB4, $04, nRst, $08, nCs5, $12
	dc.b	nA4, $06, nFs4, nRst, nFs4, nRst, $24
	smpsSetvoice        $07
	dc.b	nFs4, $06, nCs4, nE4, nFs4, nRst, $3C, nCs5, $06, nCs5, nA4, $04
	dc.b	nRst, $08, nB4, $06, nCs5
	smpsReturn

Snd_CreditsS2_Call23:
	dc.b	nRst, $12, nG1, nBb1, $06, nRst, $18, nC2, $12, nG1, $06, nRst
	dc.b	nRst, $12, nF1, nA1, $06, nRst, $18, nBb1, $12, nF1, $06, nRst
	smpsReturn

Snd_CreditsS2_Call24:
	dc.b	nFs5, $01, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $2D
	smpsAlterPitch      $02
	dc.b	nFs5, $01, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $2D
	smpsAlterPitch      $01
	dc.b	nFs5, $01, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $2D
	smpsAlterPitch      $FC
	dc.b	nFs5, $01, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $2D
	smpsAlterPitch      $01
	dc.b	nFs5, $01, smpsNoAttack, nG5, smpsNoAttack, nAb5, smpsNoAttack, nA5, $5D, smpsNoAttack, $30
	smpsReturn

Snd_CreditsS2_Call25:
	dc.b	nD3, $0C, nD4, $06, nRst, nC4, nRst, nD4, $0C, nD3, $03, nRst
	dc.b	$06, nD3, $03, nD4, $0C, nC4, nD4, $09, nA3, $03, nG3, $06
	dc.b	nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C, nBb3, $06, nRst, $27
	smpsReturn

Snd_CreditsS2_Call26:
	dc.b	nRst, nC2, nRst, nC2, nRst, nF2, nRst
	smpsReturn

Snd_CreditsS2_Call0A:
	dc.b	nRst, $0C, nCs6, $15, nRst, $03, nCs6, $06, nRst, nD6, $0F, nRst
	dc.b	$03, nB5, $18, nRst, $06, nCs6, nRst, nCs6, nRst, nCs6, nRst, nA5
	dc.b	nRst, nG5, $0F, nRst, $03, nB5, $18, nRst, $06
	smpsLoop            $00, $02, Snd_CreditsS2_Call0A
	smpsReturn

; FM2 Data
Snd_CreditsS2_FM2:
	dc.b	nRst, $60
	smpsSetvoice        $01
	smpsNoteFill        $06
	smpsCall            Snd_CreditsS2_Call1A
	smpsCall            Snd_CreditsS2_Call1A

Snd_CreditsS2_Loop17:
	dc.b	nE0, $0C
	smpsLoop            $00, $0C, Snd_CreditsS2_Loop17
	dc.b	nA0, nFs0, nG0, nAb0
	smpsCall            Snd_CreditsS2_Call1A

Snd_CreditsS2_Loop18:
	dc.b	nG0
	smpsLoop            $00, $0B, Snd_CreditsS2_Loop18

Snd_CreditsS2_Loop19:
	dc.b	nA0
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop19
	smpsNoteFill        $00
	smpsAlterVol        $FC
	dc.b	nA0, nBb0, nB0
	smpsAlterVol        $04
	smpsNoteFill        $09

Snd_CreditsS2_Loop1A:
	dc.b	nC1, $0C
	smpsLoop            $00, $0C, Snd_CreditsS2_Loop1A
	smpsNoteFill        $00
	dc.b	nC1, nA0, nBb0, nB0
	smpsNoteFill        $09

Snd_CreditsS2_Loop1B:
	dc.b	nC1, $0C
	smpsLoop            $00, $0C, Snd_CreditsS2_Loop1B
	dc.b	$06, nC2
	smpsNoteFill        $00
	dc.b	nA0, $0C, nBb0, nB0
	smpsAlterPitch      $E8
	smpsAlterVol        $0C
	smpsSetvoice        $04

Snd_CreditsS2_Loop1C:
	smpsCall            Snd_CreditsS2_Call14
	smpsLoop            $00, $02, Snd_CreditsS2_Loop1C
	smpsAlterVol        $F9
	smpsSetvoice        $08

Snd_CreditsS2_Loop20:
	smpsCall            Snd_CreditsS2_Call1B

Snd_CreditsS2_Loop1D:
	dc.b	nFs2, $04, nRst, $08, nFs2, $0C
	smpsLoop            $00, $02, Snd_CreditsS2_Loop1D
	dc.b	$06, nEb2, $12, nE2, $0C, nF2
	smpsCall            Snd_CreditsS2_Call1B

Snd_CreditsS2_Loop1E:
	dc.b	nE2, $04, nRst, $08, nE2, $0C
	smpsLoop            $00, $02, Snd_CreditsS2_Loop1E

Snd_CreditsS2_Loop1F:
	dc.b	nEb2, $04, nRst, $08, nEb2, $0C
	smpsLoop            $00, $02, Snd_CreditsS2_Loop1F
	smpsLoop            $01, $02, Snd_CreditsS2_Loop20
	dc.b	nRst, $60, $48
	smpsSetvoice        $0C
	smpsAlterVol        $13
	smpsCall            Snd_CreditsS2_Call06
	dc.b	$24, nRst, $60
	smpsSetvoice        $0F
	smpsAlterVol        $F3
	smpsModSet          $04, $02, $03, $02
	smpsCall            Snd_CreditsS2_Call16
	dc.b	nG5, $18, nFs5, $48, nRst, $0C
	smpsCall            Snd_CreditsS2_Call16
	dc.b	nCs5
	smpsSetvoice        $13
	smpsAlterVol        $F5
	smpsModOff
	dc.b	nRst, $60

Snd_CreditsS2_Loop21:
	smpsCall            Snd_CreditsS2_Call1C
	dc.b	nEb3, $0C, nE3, $08, nAb2, $10
	smpsCall            Snd_CreditsS2_Call1C
	dc.b	nEb3, $08, nE3, $04, nRst, $18
	smpsLoop            $00, $02, Snd_CreditsS2_Loop21
	dc.b	$60
	smpsSetvoice        $17
	smpsAlterNote       $02
	smpsAlterPitch      $F4
	smpsAlterVol        $0A
	smpsCall            Snd_CreditsS2_Call10
	dc.b	nF6, $15, nE6, $03, nD6, $06, nRst, nC6, $0C, nE6, $06, nRst
	dc.b	nC6, $0C, nD6, $06, nRst, $72
	smpsSetvoice        $1B
	smpsAlterNote       $00
	smpsNoteFill        $06
	dc.b	$3C, nG4, $06, $06, nA4, nC5, nC5, nA4
	smpsSetvoice        $1D
	smpsAlterVol        $FA
	smpsNoteFill        $00
	smpsCall            Snd_CreditsS2_Call1D
	dc.b	nRst
	smpsCall            Snd_CreditsS2_Call1E
	smpsCall            Snd_CreditsS2_Call1D
	smpsSetvoice        $1C
	dc.b	nC5
	smpsSetvoice        $1D
	smpsCall            Snd_CreditsS2_Call1E
	dc.b	nRst, $30, nRst
	smpsSetvoice        $01
	smpsAlterPitch      $18
	smpsAlterVol        $F9

Snd_CreditsS2_Loop22:
	dc.b	nC2, $0C, nC3, $06, nRst, nA1, $0C, nA2, $06, nRst, nBb1, $0C
	dc.b	nBb2, $06, nRst, nB1, $0C, nEb3, $06, nD3, nC2, $06, $12, nA1
	dc.b	$0C, nA2, $06, nRst, nBb1, $0C, nBb2, $06, nRst, nB1, $0C, nB2
	dc.b	$06, nRst
	smpsLoop            $00, $02, Snd_CreditsS2_Loop22
	dc.b	$60
	smpsSetvoice        $22
	smpsAlterPitch      $E8
	smpsAlterVol        $03
	smpsModSet          $1C, $01, $06, $04
	dc.b	$50, nG3, $04, nA3, $08, nC4, $04, nE4, $30, nRst, $0C, nE4
	dc.b	$08, nRst, $04, nF4, $08, nE4, $10, nAb4, $08, $04, nRst, $08
	dc.b	nE4, $34, nRst, $0C, nE4, nA4, $08, $04, nRst, $08, nE4, $04
	dc.b	nC4, $24, nRst, $0C, nC4, $08, nRst, $04, nD4, $08, nC4, $04
	dc.b	nEb4, $0C, nD4, $08, nC4, $4C, nRst, $0C, nE4, $08, nRst, $04
	dc.b	nF4, $08, nRst, $04, nE4, $08, nRst, $04, nAb4, $08, $04, nRst
	dc.b	$08, nE4, $1C, nRst, $0C, nA4, $18, nB4, $08, nA4, $04, nC5
	dc.b	$18, nRst, $0C, nA4, $04, nRst, $08, nG4, $18, nE4, nC4, nD4
	dc.b	$0C
	smpsAlterVol        $04
	smpsCall            Snd_CreditsS2_Call1F
	dc.b	nD4, $0C
	smpsAlterVol        $FC
	smpsCall            Snd_CreditsS2_Call1F
	dc.b	nD4, $14, nC4, $04
	smpsAlterVol        $FF
	smpsSetvoice        $24
	smpsModOff
	dc.b	nRst, $60

Snd_CreditsS2_Loop23:
	smpsCall            Snd_CreditsS2_Call20
	dc.b	nG3, $12, nFs3, $0C, nG3, $06, nFs3, $0C
	smpsCall            Snd_CreditsS2_Call20
	dc.b	nD4, $12, nCs4, $0C, nD4, $06, nCs4, $0C
	smpsLoop            $00, $02, Snd_CreditsS2_Loop23
	dc.b	nG3, $06, nRst, nE3, nRst, nF3, nRst, nFs3, nRst, nG3, nG3, nE3
	dc.b	nRst, nF3, nRst, nG3, nRst, nE3, nRst, nE3, nRst, nAb3, nRst, nAb3
	dc.b	nRst, nB3, nRst, nB3, nRst, nD4, nRst, nD4, nRst, nRst, $0C, nA2
	dc.b	$12, nRst, $06, nA2, $12, nAb3, nA3, $06, nRst
	smpsAlterVol        $FD
	dc.b	nA2, $6C
	smpsStop

Snd_CreditsS2_Call1A:
	dc.b	nA0, $0C
	smpsLoop            $00, $08, Snd_CreditsS2_Call1A
	smpsReturn

Snd_CreditsS2_Call14:
	dc.b	nRst, $0C, nG5, $06, nRst, nA5, nRst, nG5, nRst, nC6, nRst, nC6
	dc.b	nRst, nD6, nE6, nRst, $0C, nRst, nD6, $18, nA5, $06, nRst, nC6
	dc.b	nC6, nRst, nD6, $0C, nRst, $30, nBb5, $06, nC6, nBb5, nD6, nRst
	dc.b	nC6, nRst, nBb5, nC6, nRst, nA5, smpsNoAttack, $48, nRst, $18
	smpsReturn

Snd_CreditsS2_Call1B:
	dc.b	nFs2, $04, nRst, $08, nFs2, $0C
	smpsLoop            $00, $03, Snd_CreditsS2_Call1B
	dc.b	$06, nFs3, nFs2, $0C
	smpsReturn

Snd_CreditsS2_Call06:
	dc.b	nG4, $08, nA4, nB4, nF4, $60, smpsNoAttack, $30, nRst, $18, nG4, $08
	dc.b	nA4, nB4, nF4, $60, smpsNoAttack, $30, smpsNoAttack
	smpsReturn

Snd_CreditsS2_Call16:
	dc.b	nD5, $06, nC5, nD5, $12, nF5, nD5, $0C, nE5, nRst, $18, nG5
	dc.b	$0C, nF5, $06, nRst, nC6, nA5, $3C, nRst, $12, nBb5, nA5, nG5
	dc.b	$06, nF5, nE5, $18
	smpsReturn

Snd_CreditsS2_Call1C:
	dc.b	nA2, $0C, nA3, nG3, $08, nA3, $04, nG3, $08, nE3, $04, nD3
	dc.b	$08, $04
	smpsReturn

Snd_CreditsS2_Call10:
	dc.b	nF6, $15, nE6, $03, nD6, $06, nRst, nC6, $0C, nE6, $06, nRst
	dc.b	nC6, $0C, nD6, $06, nRst, $72
	smpsReturn

Snd_CreditsS2_Call1D:
	dc.b	nRst, $0C, nC4, nA3, $06, $06, nG3, $0C, nRst, nB3, nA3, $06
	dc.b	$06, nG3, $0C
	smpsReturn

Snd_CreditsS2_Call1E:
	dc.b	nA3, nG3, $06, $06, nF3, $0C, nRst, nG3, $0C, $06, $06, nA3
	dc.b	nG3
	smpsReturn

Snd_CreditsS2_Call1F:
	dc.b	nA4, $04, nRst, $08, nG4, $18, nE4, nC4
	smpsReturn

Snd_CreditsS2_Call20:
	dc.b	nA3, $06, nRst, nA3, nRst, nE3, nRst, nE3, nRst
	smpsReturn

; FM3 Data
Snd_CreditsS2_FM3:
	dc.b	nRst, $60
	smpsCall            Snd_CreditsS2_Call0C
	smpsAlterPitch      $18
	smpsSetvoice        $02
	smpsCall            Snd_CreditsS2_Call13
	dc.b	nG4, $3C
	smpsCall            Snd_CreditsS2_Call13
	dc.b	nC5, $3C
	smpsAlterPitch      $E8
	smpsAlterVol        $02
	smpsAlterNote       $03
	smpsSetvoice        $04
	smpsPan             panLeft, $00

Snd_CreditsS2_Loop12:
	smpsCall            Snd_CreditsS2_Call14
	smpsLoop            $00, $02, Snd_CreditsS2_Loop12
	smpsSetvoice        $09
	smpsAlterPitch      $0C
	smpsAlterVol        $FD
	smpsPan             panRight, $00
	smpsModSet          $06, $01, $05, $04
	smpsAlterNote       $00

Snd_CreditsS2_Loop13:
	dc.b	nFs2, $0C, nFs3, $06, nRst, nE3, nRst, nFs3, nFs2, nRst, nFs2, nFs3
	dc.b	nRst, nE3, nRst, nFs3, $0C
	smpsLoop            $00, $03, Snd_CreditsS2_Loop13
	dc.b	nE2, nE3, $06, nRst, nEb3, nRst, nE3, nEb2, nRst, nEb2, nEb3, nRst
	dc.b	nCs3, nRst, nEb3, $0C
	smpsLoop            $01, $02, Snd_CreditsS2_Loop13
	dc.b	nRst, $60
	smpsSetvoice        $0D
	smpsAlterVol        $FB
	smpsPan             panCenter, $00
	smpsModOff
	dc.b	$60

Snd_CreditsS2_Loop14:
	smpsCall            Snd_CreditsS2_Call15
	smpsLoop            $00, $02, Snd_CreditsS2_Loop14
	dc.b	nRst, $60
	smpsSetvoice        $0F
	smpsPan             panLeft, $00
	smpsAlterVol        $0B
	smpsCall            Snd_CreditsS2_Call16
	dc.b	nG5, $18, nFs5, $48, nRst, $0C
	smpsCall            Snd_CreditsS2_Call16
	dc.b	nCs5, $0C
	smpsModSet          $18, $01, $03, $04
	smpsAlterVol        $F3
	smpsPan             panCenter, $00
	smpsSetvoice        $14
	dc.b	nA2, $14, nB2, $04, nC3, nRst, $08, nE3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $08, nE3, $04, nRst, $08, nG3, nE3, $10

Snd_CreditsS2_Loop15:
	dc.b	nRst, $30
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop15
	smpsSetvoice        $18
	smpsAlterPitch      $F4
	smpsAlterVol        $08
	smpsModOff
	smpsPan             panRight, $00
	dc.b	$60, $30, nA5, $06, nRst, nF5, $0C, nG5, $09, nF5, $03, nD5
	dc.b	$0C, nRst, $60, $3C, $60
	smpsSetvoice        $1B
	smpsAlterVol        $FB
	smpsPan             panCenter, $00
	smpsNoteFill        $06
	dc.b	nG5, $06, $06, nA5, nC6, nC6, nA5
	smpsNoteFill        $00
	dc.b	nE6, $0C
	smpsNoteFill        $06
	dc.b	nC6, $06, nA5, nC6, $0C, nRst, nRst, $12
	smpsSetvoice        $1C
	smpsNoteFill        $00
	dc.b	nC5, nA4, $0C
	smpsNoteFill        $06
	smpsSetvoice        $1B
	dc.b	nF6, $06, nF6, nRst, nF6, nRst, nF6
	smpsNoteFill        $00
	dc.b	nFs6, $0C, nG6, nRst
	smpsNoteFill        $06
	dc.b	nG6, $06, $06, nA6, nG6
	smpsNoteFill        $00
	dc.b	nE6, $0C
	smpsNoteFill        $06
	dc.b	nC6, $06, nA5, nC6, $0C
	smpsNoteFill        $00
	smpsSetvoice        $1C
	dc.b	nRst, $1E, nF5, $0C, nF5, nC5, $06, nRst, $60, $60
	smpsSetvoice        $00
	smpsAlterPitch      $18
	dc.b	$60, $0C, nG3, $06, nA3, nC4, nRst, $12, nG3, $06, nA3, nC4
	dc.b	nRst, nEb4, nC4, nRst, nC4, nRst, $66, nBb3, $12, nA3, $06, nRst
	dc.b	$12, nBb3, $06, nRst, nA3, nRst, nBb3, nC4, nRst, nC4, nRst, $60
	smpsSetvoice        $22
	smpsAlterPitch      $DC
	smpsAlterVol        $FF
	smpsPan             panLeft, $00
	dc.b	$60
	smpsCall            Snd_CreditsS2_Call17
	dc.b	nE6, $30, nD6, $18, nE6, $0C, nD6, nC6, $30, nF6
	smpsCall            Snd_CreditsS2_Call18
	smpsAlterVol        $04
	smpsCall            Snd_CreditsS2_Call18
	smpsAlterVol        $FC
	dc.b	nRst, nG5, nRst, nG5, nRst, nA5, $18, $08, nG5, $04
	smpsAlterPitch      $0C
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $60

Snd_CreditsS2_Loop16:
	smpsCall            Snd_CreditsS2_Call19
	dc.b	nD6, $12, $1E
	smpsCall            Snd_CreditsS2_Call19
	dc.b	nG6, $12, $1E
	smpsLoop            $00, $02, Snd_CreditsS2_Loop16
	dc.b	nRst, $0C, nD6, $12, nRst, $06, nD6, nRst, nCs6, $12, nD6, nCs6
	dc.b	$0C, nAb5, $18, nB5, nD6, nAb6, nRst, $0C, nE6, nRst, nE6, $12
	dc.b	nEb6, nE6, $06, nRst
	smpsAlterVol        $F8
	smpsSetvoice        $01
	smpsAlterNote       $03
	dc.b	nA2, $6C
	smpsStop

Snd_CreditsS2_Call0C:
	smpsSetvoice        $05
	smpsAlterPitch      $F4
	dc.b	nA5, $60, nD6, nE6, smpsNoAttack, nE6, nA5, $60, nG6, nG6, $24, nA6
	dc.b	$60, smpsNoAttack, $3C
	smpsReturn

Snd_CreditsS2_Call13:
	dc.b	nRst, $18, nG4, $0B, nRst, $0D, nA4, $0C, $0B, nRst, $19, nC5
	dc.b	$0C, $0B, nRst, $0D
	smpsReturn

Snd_CreditsS2_Call15:
	dc.b	nRst, $60, nB4, $06, nC5, nB4, nG4, nA4, nF4, $0C, nG4, nD4
	dc.b	nD4, $06, nF4, $0C, nG4
	smpsReturn

Snd_CreditsS2_Call17:
	dc.b	nRst, $0C, nE6, $04, nRst, $10, nE6, $04, nRst, $0C, nE6, nF6
	dc.b	$08, nE6, $04, nRst, $24, nD6, $04, nRst, $10, nD6, $04, nRst
	dc.b	$0C, nD6, nE6, $08, nD6, $04, nRst, $18

Snd_CreditsS2_Loop44:
	dc.b	nRst, $0C, nC6, $04, nRst, $10, nC6, $04, nRst, $0C, nC6, nD6
	dc.b	$08, nC6, $04, nRst, $18
	smpsLoop            $00, $02, Snd_CreditsS2_Loop44
	smpsReturn

Snd_CreditsS2_Call18:
	dc.b	nRst, $0C, nG5, nRst, nG5, nRst, nA5, nRst, nA5
	smpsReturn

Snd_CreditsS2_Call19:
	dc.b	nE6, $06, nRst, nE6, nRst, nCs6, nRst, nCs6, nRst
	smpsReturn

; FM4 Data
Snd_CreditsS2_FM4:
	dc.b	nRst, $60
	smpsAlterPitch      $FB
	smpsAlterVol        $FE
	smpsCall            Snd_CreditsS2_Call0C
	smpsAlterPitch      $1D
	smpsAlterVol        $02
	smpsSetvoice        $02
	smpsCall            Snd_CreditsS2_Call0D
	dc.b	nE4, $3C
	smpsCall            Snd_CreditsS2_Call0D
	dc.b	nG4, $3C
	smpsAlterVol        $06
	smpsSetvoice        $05
	smpsModSet          $02, $01, $FE, $04

Snd_CreditsS2_Loop0D:
	dc.b	nE5, $60, nFs5, nD5, $60, nC5
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0D
	smpsSetvoice        $0A
	smpsAlterPitch      $F4
	smpsAlterVol        $F7
	smpsModSet          $0C, $01, $FB, $04

Snd_CreditsS2_Loop0E:
	smpsCall            Snd_CreditsS2_Call0E
	dc.b	nRst, $25, nFs5, $06, nFs5, nRst, $0C, nFs5, $06, $05, nRst, $0D
	dc.b	nFs5, $06, nAb5, $36
	smpsCall            Snd_CreditsS2_Call0E
	dc.b	nRst, $31, $60
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0E
	dc.b	$60, $48
	smpsSetvoice        $0C
	smpsAlterVol        $05
	smpsModOff
	smpsAlterNote       $02
	smpsPan             panLeft, $00
	smpsCall            Snd_CreditsS2_Call06
	dc.b	$24, nRst, $6C
	smpsSetvoice        $10
	smpsAlterVol        $F7
	smpsAlterNote       $00
	smpsPan             panRight, $00
	smpsCall            Snd_CreditsS2_Call0F
	dc.b	nD4, nFs4, $06, nA3, $0C, nC4, nD4, nFs4, $06, nRst, nFs4, nA3
	dc.b	$0C, nC4
	smpsCall            Snd_CreditsS2_Call0F
	smpsSetvoice        $15
	smpsAlterVol        $01
	smpsCall            Snd_CreditsS2_Call07

Snd_CreditsS2_Loop0F:
	smpsSetvoice        $14
	dc.b	nRst, $4E
	smpsPan             panRight, $00
	dc.b	nAb2, $12, nA2, $06
	smpsPan             panCenter, $00
	smpsSetvoice        $16
	dc.b	nRst, $36, nA4, $08, nAb4, $04, nG4, $08, nFs4, $04, nF4, $08
	dc.b	nE4, $04
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0F
	dc.b	nRst, $60
	smpsSetvoice        $17
	smpsAlterPitch      $F4
	smpsAlterVol        $02
	smpsPan             panCenter, $00
	smpsModSet          $01, $01, $03, $03

Snd_CreditsS2_Loop10:
	smpsCall            Snd_CreditsS2_Call10
	smpsLoop            $00, $02, Snd_CreditsS2_Loop10
	dc.b	nRst, $60
	smpsSetvoice        $1E
	smpsPan             panRight, $00
	smpsAlterVol        $FE
	smpsAlterPitch      $F4
	smpsModOff
	smpsNoteFill        $06
	dc.b	$0C, nE5, $06, $12, $18, nG5, $06, $12, $0C
	smpsSetvoice        $1C
	smpsPan             panCenter, $00
	smpsAlterVol        $FA
	smpsNoteFill        $00
	dc.b	nA5
	smpsNoteFill        $06
	smpsAlterVol        $06
	smpsSetvoice        $1E
	smpsPan             panRight, $00
	dc.b	nF5, $06, $12, $18, nG5, $06, $12, $18, nE5, $06, $12, $18
	dc.b	nG5, $06, $12, $0C
	smpsSetvoice        $1A
	smpsPan             panCenter, $00
	smpsAlterPitch      $0C
	dc.b	nA5, $06, nA5, nRst, nA5, nRst, nA5
	smpsNoteFill        $00
	dc.b	nBb5, $0C, nB5, $06
	smpsSetvoice        $1E
	smpsPan             panRight, $00
	smpsAlterPitch      $F4
	smpsNoteFill        $06
	dc.b	nRst, nG5, $06, $12, $0C, nRst, $60
	smpsSetvoice        $20
	smpsAlterPitch      $18
	smpsAlterVol        $FA
	smpsPan             panCenter, $00
	smpsNoteFill        $00
	dc.b	nEb4, $03, smpsNoAttack, nF4, $5D, nD4, $03, smpsNoAttack, nE4, $5D, nC4, $03
	dc.b	smpsNoAttack, nD4, $5D, $03, smpsNoAttack, nE4, $5D, nRst, $60
	smpsSetvoice        $22
	smpsPan             panRight, $00
	smpsAlterPitch      $E8
	smpsAlterVol        $04
	dc.b	$30, nRst
	smpsCall            Snd_CreditsS2_Call11
	dc.b	nC6, $30, nB5, $18, nC6, $0C, nB5, nA5, $30, nC6, nRst, $0C
	dc.b	nE5, nRst, nE5, nRst, nF5, nRst, nF5
	smpsAlterVol        $04
	dc.b	nRst, nE5, nRst, nE5, nRst, nF5, nRst, nF5
	smpsAlterVol        $FC
	dc.b	nRst, nE5, nRst, nE5, nRst, nF5, $18, $08, nE5, $04
	smpsAlterPitch      $0C
	smpsAlterVol        $FF
	smpsPan             panCenter, $00
	smpsSetvoice        $00
	dc.b	nRst, $60

Snd_CreditsS2_Loop11:
	smpsCall            Snd_CreditsS2_Call12
	dc.b	nB5, $12, $1E
	smpsCall            Snd_CreditsS2_Call12
	dc.b	nD6, $12, $1E
	smpsLoop            $00, $02, Snd_CreditsS2_Loop11
	smpsAlterNote       $03
	smpsAlterVol        $08
	smpsCall            Snd_CreditsS2_Call0B
	smpsAlterVol        $F0
	smpsSetvoice        $01
	smpsModSet          $00, $01, $06, $04
	dc.b	nA2, $6C
	smpsStop

Snd_CreditsS2_Call0D:
	dc.b	nRst, $18, nE4, $0B, nRst, $0D, nFs4, $0C, $0B, nRst, $19, nA4
	dc.b	$0C, $0B, nRst, $0D
	smpsReturn

Snd_CreditsS2_Call0E:
	dc.b	nFs5, $05, nRst, $13, nFs5, $12, $05
	smpsReturn

Snd_CreditsS2_Call0F:
	dc.b	nBb3, $0C, nD4, $06, nF4, $0C, nBb3, nC4, $06, nRst, nC4, $0C
	dc.b	nE4, $06, nG4, $0C, nC4, $06, nRst, nF4, $0C, nA4, $06, nC4
	dc.b	$0C, nE4, nF4, nA4, $06, nRst, nA4, nBb3, $0C, nD4, nE4, nG4
	dc.b	$06, nCs4, $0C, nD4, nE4, nG4, $06, nRst, nG4, nCs4, $0C, nE4
	smpsReturn

Snd_CreditsS2_Call07:
	dc.b	nA2, $14, nB2, $04, nC3, nRst, $08, nE3, $04, nRst, $08, nEb3
	dc.b	$04, nRst, $08, nE3, $04, nRst, $08, nG3, nE3, $10
	smpsReturn

Snd_CreditsS2_Call11:
	dc.b	nRst, $0C, nC6, $04, nRst, $10, nC6, $04, nRst, $0C, nC6, nD6
	dc.b	$08, nC6, $04, nRst, $24, nB5, $04, nRst, $10, nB5, $04, nRst
	dc.b	$0C, nB5, nC6, $08, nB5, $04, nRst, $24, nA5, $04, nRst, $10
	dc.b	nA5, $04, nRst, $0C, nA5, nB5, $08, nA5, $04, nRst, $24, nAb5
	dc.b	$04, nRst, $10, nAb5, $04, nRst, $0C, nAb5, nBb5, $08, nAb5, $04
	dc.b	nRst, $18
	smpsReturn

Snd_CreditsS2_Call12:
	dc.b	nCs6, $06, nRst, nCs6, nRst, nA5, nRst, nA5, nRst
	smpsReturn

Snd_CreditsS2_Call0B:
	smpsSetvoice        $25
	dc.b	nRst, $0C, nG6, nB6, nD7, nFs7, $0C, nRst, $06, nFs7, $0C, nG7
	dc.b	$06, nFs7, $0C, nAb7, $60, nA7, $0C, nRst, nA7, nRst, nRst, $06
	dc.b	nAb7, $12, nA7, $0C
	smpsReturn

; FM5 Data
Snd_CreditsS2_FM5:
	smpsAlterPitch      $E8
	smpsAlterVol        $F8
	smpsAlterNote       $05
	smpsCall            Snd_CreditsS2_Call03
	smpsAlterPitch      $18
	smpsAlterVol        $08
	smpsAlterNote       $00
	smpsSetvoice        $02
	smpsModSet          $0C, $01, $FC, $04
	smpsCall            Snd_CreditsS2_Call04
	dc.b	nC4, $3C
	smpsCall            Snd_CreditsS2_Call04
	dc.b	nE4, $3C
	smpsAlterPitch      $F4
	smpsAlterVol        $07
	smpsModSet          $30, $01, $04, $04
	smpsSetvoice        $06

Snd_CreditsS2_Loop0A:
	dc.b	nG5, $60, nA5, nF5, $60, nE5
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0A
	smpsSetvoice        $0A
	smpsAlterVol        $F6
	smpsModSet          $0C, $01, $05, $04
	smpsPan             panLeft, $00

Snd_CreditsS2_Loop0B:
	smpsCall            Snd_CreditsS2_Call05
	dc.b	nRst, $25, nA5, $06, nA5, nRst, $0C, nA5, $06, $05, nRst, $0D
	dc.b	nA5, $06, nB5, $36
	smpsCall            Snd_CreditsS2_Call05
	dc.b	nRst, $31, $60
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0B
	dc.b	$60, $48
	smpsAlterVol        $05
	smpsModOff
	dc.b	$01
	smpsSetvoice        $0C
	smpsAlterNote       $FE
	smpsPan             panRight, $00
	smpsCall            Snd_CreditsS2_Call06
	dc.b	$23, nRst, $6C
	smpsSetvoice        $11
	smpsAlterPitch      $F4
	smpsAlterVol        $F4
	smpsAlterNote       $00
	smpsPan             panCenter, $00
	smpsModSet          $06, $01, $06, $05
	dc.b	$60, $30, nF5, $06, nF5, nC6, nA5, $1E, nRst, $66, nD6, $06
	dc.b	nRst, nD6, nC6, nRst, nC6, nRst, nBb5, nRst, nBb5, nRst, nA5, $03
	dc.b	nRst, nA5, nRst, $6F, $30, nF5, $06, nF5, nC6, nA5, $1E, nRst
	dc.b	$60
	smpsSetvoice        $16
	smpsAlterPitch      $0C
	smpsAlterVol        $04
	smpsModOff
	smpsPan             panLeft, $00
	dc.b	$01
	smpsCall            Snd_CreditsS2_Call07
	dc.b	nRst, $2F
	smpsCall            Snd_CreditsS2_Call08
	dc.b	nRst, $30
	smpsCall            Snd_CreditsS2_Call08
	dc.b	nRst, $60
	smpsSetvoice        $19
	smpsAlterPitch      $F4
	smpsPan             panCenter, $00
	smpsCall            Snd_CreditsS2_Call09
	dc.b	nRst, $27, nC4, $03
	smpsCall            Snd_CreditsS2_Call09
	dc.b	nRst, $2A, $60
	smpsSetvoice        $1E
	smpsAlterPitch      $F4
	smpsNoteFill        $06

Snd_CreditsS2_Loop0C:
	dc.b	nRst, $0C, nG5, $06, $12, $18, nB5, $06, $12, $0C, nRst, nA5
	dc.b	$06, $12, $18, nB5, $06, $12, $0C
	smpsLoop            $00, $02, Snd_CreditsS2_Loop0C
	dc.b	nRst, $60
	smpsSetvoice        $20
	smpsNoteFill        $00
	smpsAlterPitch      $18
	smpsAlterVol        $FA
	dc.b	nG4, $03, smpsNoAttack, nA4, $5D, nF4, $03, smpsNoAttack, nG4, $5D, nEb4, $03
	dc.b	smpsNoAttack, nF4, $5D, $03, smpsNoAttack, nG4, $5D, nRst, $60
	smpsSetvoice        $22
	smpsAlterPitch      $F4
	smpsAlterVol        $05
	smpsModSet          $1C, $01, $06, $04
	dc.b	$50, nD3, $04, nE3, $08, nG3, $04, nC4, $30, nRst, $0C, nC4
	dc.b	$08, nRst, $04, nD4, $08, nC4, $10, nE4, $08, $04, nRst, $08
	dc.b	nB3, $34, nRst, $0C, nB3, nE4, $08, $04, nRst, $08, nC4, $04
	dc.b	nA3, $24, nRst, $0C, nA3, $08, nRst, $04, nB3, $08, nA3, $04
	dc.b	nC4, $0C, nBb3, $08, nAb3, $4C, nRst, $0C, nC4, $08, nRst, $04
	dc.b	nD4, $08, nRst, $04, nC4, $08, nRst, $04, nE4, $08, $04, nRst
	dc.b	$08, nB3, $1C, nRst, $0C, nE4, $18, nG4, $08, nE4, $04, nA4
	dc.b	$18, nRst, $0C, nF4, $04, nRst, $08, nE4, $18, nC4, nA3, nB3
	dc.b	$0C
	smpsAlterVol        $04
	dc.b	nF4, $04, nRst, $08, nE4, $18, nC4, nA3, nB3, $0C
	smpsAlterVol        $F8
	dc.b	nF4, $04, nRst, $08, nE4, $18, nC4, nA3, nF3, $14, nE3, $04
	smpsAlterVol        $03
	smpsSetvoice        $23
	smpsAlterNote       $03
	dc.b	nRst, $60
	smpsCall            Snd_CreditsS2_Call0A
	smpsAlterVol        $09
	smpsModSet          $00, $01, $06, $04
	smpsCall            Snd_CreditsS2_Call0B
	smpsStop

Snd_CreditsS2_Call04:
	dc.b	nRst, $18, nC4, $0B, nRst, $0D, nD4, $0C, $0B, nRst, $19, nF4
	dc.b	$0C, $0B, nRst, $0D
	smpsReturn

Snd_CreditsS2_Call05:
	dc.b	nA5, $05, nRst, $13, nA5, $12, $05
	smpsReturn

Snd_CreditsS2_Call08:
	dc.b	nRst, $1E
	smpsSetvoice        $14
	dc.b	nB2, $12, nC3, $06
	smpsSetvoice        $16
	dc.b	nRst, $36, nC5, $08, nB4, $04, nBb4, $08, nA4, $04, nAb4, $08
	dc.b	nG4, $04
	smpsReturn

Snd_CreditsS2_Call09:
	dc.b	nRst, $60, nG3, $06, nRst, nG3, $0C, nA3, $06, nRst, nA3, $0C
	dc.b	nBb3, $06
	smpsReturn

; PSG1 Data
Snd_CreditsS2_PSG1:
	dc.b	nRst, $30
	smpsLoop            $00, $1A, Snd_CreditsS2_PSG1

Snd_CreditsS2_Loop3E:
	dc.b	nG5, $60, nA5, nF5, $60, nE5
	smpsLoop            $00, $02, Snd_CreditsS2_Loop3E

Snd_CreditsS2_Loop3F:
	dc.b	nRst, $30
	smpsLoop            $00, $10, Snd_CreditsS2_Loop3F
	dc.b	$60

Snd_CreditsS2_Loop40:
	dc.b	nRst, $30
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop40
	dc.b	$60
	smpsAlterPitch      $F4
	smpsAlterVol        $FE
	smpsPSGvoice        fTone_01
	smpsCall            Snd_CreditsS2_Call28
	dc.b	nA3, nD4, $06, nG3, $0C, nA3, nA3, nD4, $06, nRst, nD4, nFs3
	dc.b	$0C, nA3
	smpsCall            Snd_CreditsS2_Call28
	smpsPSGvoice        fTone_0B
	dc.b	nRst, $64
	smpsCall            Snd_CreditsS2_Call24
	dc.b	smpsNoAttack, $20, smpsNoAttack, nAb5, $01, smpsNoAttack, nG5, smpsNoAttack, nFs5, smpsNoAttack, nF5, smpsNoAttack
	dc.b	nE5, smpsNoAttack, nEb5, smpsNoAttack, nD5, smpsNoAttack, nCs5, smpsNoAttack, nC5, smpsNoAttack, nB4, smpsNoAttack
	dc.b	nBb4, smpsNoAttack, nA4, nRst, $60
	smpsPSGvoice        $00
	smpsNoteFill        $06
	smpsAlterPitch      $F4
	smpsCall            Snd_CreditsS2_Call29
	dc.b	nF5, nRst, nF5
	smpsCall            Snd_CreditsS2_Call29
	dc.b	nF5, $04, nRst, nF5, nRst, $0C, nF5, nRst, $60
	smpsPSGvoice        fTone_08
	smpsAlterPitch      $04
	smpsPSGAlterVol     $02
	smpsNoteFill        $06

Snd_CreditsS2_Loop41:
	smpsCall            Snd_CreditsS2_Call27
	smpsLoop            $00, $02, Snd_CreditsS2_Loop41

Snd_CreditsS2_Loop42:
	dc.b	nRst, $30
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop42
	dc.b	$60
	smpsPSGvoice        $00
	smpsAlterPitch      $F0
	smpsPSGAlterVol     $FF
	dc.b	$60
	smpsCall            Snd_CreditsS2_Call17
	smpsAlterPitch      $18
	smpsPSGAlterVol     $02
	dc.b	nE4, $30, nD4, $18, nE4, $0C, nD4, nC4, $30, nF4
	smpsPSGAlterVol     $FE
	dc.b	nRst, $0C, nG4, nRst, nG4, nRst, nA4, nRst, nA4
	smpsPSGAlterVol     $03
	dc.b	nG5, $18, nE5, nC5, nD5, $0C, nRst
	smpsPSGAlterVol     $FC
	dc.b	nRst, nG4, nRst, nG4, nRst, nA4, $18, $08, nG4, $04
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $01
	smpsPSGvoice        fTone_05

Snd_CreditsS2_Loop43:
	dc.b	nRst, $60
	smpsLoop            $00, $05, Snd_CreditsS2_Loop43
	dc.b	$0C, nB5, $12, nRst, $06, nB5, nRst, nA5, $12, nB5, nA5, $0C
	dc.b	nE5, $18, nAb5, nB5, nD6, nRst, $0C, nCs6, nRst, nCs6, $12, nC6
	dc.b	nCs6, $06, nRst, $09
	smpsAlterPitch      $30
	smpsPSGAlterVol     $FC
	smpsJump            Snd_CreditsS2_Jump00

Snd_CreditsS2_Call28:
	dc.b	nG3, $0C, nBb3, $06, nD4, $0C, nG3, nG3, $06, nRst, nG3, $0C
	dc.b	nBb3, $06, nE4, $0C, nG3, $06, nRst, nC4, $0C, nF4, $06, nA3
	dc.b	$0C, nC4, nD4, nF4, $06, nRst, nF4, nF3, $0C, nBb3, nBb3, nE4
	dc.b	$06, nG3, $0C, nBb3, nCs4, nE4, $06, nRst, nE4, nA3, $0C, nCs4
	smpsReturn

Snd_CreditsS2_Call29:
	dc.b	nRst, $6C, nF5, $0C, nRst, nF5, nRst
	smpsReturn

Snd_CreditsS2_Call27:
	dc.b	nRst, $0C, nC5, $06, $12, $18, nG5, $06, $12, $0C, nRst, nF5
	dc.b	$06, $12, $18, nG5, $06, $12, $0C
	smpsReturn

; PSG2 Data
Snd_CreditsS2_PSG2:
	dc.b	nRst, $30
	smpsLoop            $00, $1A, Snd_CreditsS2_PSG2

Snd_CreditsS2_Loop34:
	dc.b	nE5, $60, nFs5, nD5, $60, nC5
	smpsLoop            $00, $02, Snd_CreditsS2_Loop34

Snd_CreditsS2_Loop35:
	dc.b	nRst, $30
	smpsLoop            $00, $10, Snd_CreditsS2_Loop35
	dc.b	$60
	smpsAlterPitch      $0C
	smpsPSGAlterVol     $FD
	smpsPSGvoice        fTone_04
	dc.b	nRst

Snd_CreditsS2_Loop36:
	smpsCall            Snd_CreditsS2_Call15
	smpsLoop            $00, $02, Snd_CreditsS2_Loop36
	dc.b	nRst, $60
	smpsModSet          $03, $02, $01, $05
	smpsPSGvoice        fTone_0A
	smpsAlterPitch      $E8
	smpsPSGAlterVol     $02
	dc.b	$30, nRst, nRst, nC5, $06, nD5, nA5, nF5, $1E, nRst, $66, nA5
	dc.b	$06, nRst, nA5, nG5, nRst, nG5, nRst, nFs5, nRst, nFs5, nRst, nD5
	dc.b	$03, nRst, nD5, nRst, $6F, $30, nC5, $06, nD5, nA5, nF5, $1E
	dc.b	nRst, $60
	smpsModOff

Snd_CreditsS2_Loop37:
	dc.b	nRst, $30
	smpsLoop            $00, $0C, Snd_CreditsS2_Loop37
	smpsPSGvoice        $00
	smpsPSGAlterVol     $FE
	smpsNoteFill        $06
	dc.b	$6C, nD5, $0C, nRst, nD5, nRst, nD5, nRst, nD5, nRst, $6C, nD5
	dc.b	$0C, nRst, nD5, nRst, nD5, $04, nRst, nD5, nRst, $0C, nD5, nRst
	dc.b	$60
	smpsPSGAlterVol     $02

Snd_CreditsS2_Loop38:
	smpsCall            Snd_CreditsS2_Call27
	smpsLoop            $00, $02, Snd_CreditsS2_Loop38

Snd_CreditsS2_Loop39:
	dc.b	nRst, $30
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop39
	dc.b	$60
	smpsPSGvoice        $00
	smpsAlterPitch      $F4
	smpsPSGAlterVol     $FF
	smpsAlterPitch      $E8
	dc.b	$60
	smpsCall            Snd_CreditsS2_Call11
	smpsAlterPitch      $18
	smpsPSGAlterVol     $02
	dc.b	nC4, $30, nB3, $18, nC4, $0C, nB3, nA3, $30, nC4
	smpsPSGAlterVol     $FE
	dc.b	nRst, $0C, nE4, nRst, nE4, nRst, nF4, nRst, nF4
	smpsPSGAlterVol     $03

Snd_CreditsS2_Loop3A:
	dc.b	nRst, nC4
	smpsLoop            $00, $04, Snd_CreditsS2_Loop3A
	smpsPSGAlterVol     $FC
	dc.b	nRst, nC4, nRst, nC4, nRst, nC4, $18, $08, $04
	smpsPSGAlterVol     $01
	smpsAlterPitch      $18
	smpsPSGvoice        fTone_05
	smpsAlterNote       $01
	dc.b	nRst, $60, nRst, nRst, nRst, nRst, nRst

Snd_CreditsS2_Loop3B:
	dc.b	nRst, $0C, nE6, $06, nRst, nB6, nE6
	smpsLoop            $00, $02, Snd_CreditsS2_Loop3B
	dc.b	nRst, $6C
	smpsAlterPitch      $24
	smpsPSGAlterVol     $FD

Snd_CreditsS2_Jump00:
	smpsPSGvoice        fTone_03
	dc.b	nRst, $06

Snd_CreditsS2_Loop3C:
	dc.b	nD5, $03, nE5, nFs5
	smpsPSGAlterVol     $01
	smpsAlterPitch      $FF
	smpsLoop            $00, $05, Snd_CreditsS2_Loop3C

Snd_CreditsS2_Loop3D:
	dc.b	nD5, $03, nE5, nFs5
	smpsPSGAlterVol     $01
	smpsAlterPitch      $01
	smpsLoop            $00, $07, Snd_CreditsS2_Loop3D
	smpsStop

; PSG3 Data
Snd_CreditsS2_PSG3:
	smpsPSGform         $E7
	dc.b	nRst, $60
	smpsPSGvoice        fTone_02

Snd_CreditsS2_Loop27:
	dc.b	nMaxPSG, $0C, $0C, $0C, $06, $06, $0C, $0C, $06, $06, $0C
	smpsLoop            $00, $08, Snd_CreditsS2_Loop27

Snd_CreditsS2_Loop28:
	dc.b	nRst, $30
	smpsLoop            $00, $08, Snd_CreditsS2_Loop28

Snd_CreditsS2_Loop29:
	dc.b	nMaxPSG, $0C, $06, $06
	smpsLoop            $00, $1F, Snd_CreditsS2_Loop29
	dc.b	$0C
	smpsPSGvoice        fTone_03
	dc.b	nMaxPSG
	smpsPSGvoice        fTone_02

Snd_CreditsS2_Loop2A:
	dc.b	nMaxPSG, $0C, $06, $06
	smpsLoop            $00, $07, Snd_CreditsS2_Loop2A
	dc.b	$06, $06, $06, $06
	smpsLoop            $01, $04, Snd_CreditsS2_Loop2A

Snd_CreditsS2_Loop2B:
	dc.b	nRst, $30
	smpsLoop            $00, $0C, Snd_CreditsS2_Loop2B
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $02

Snd_CreditsS2_Loop2C:
	smpsNoteFill        $03
	dc.b	nMaxPSG, $06, $06
	smpsNoteFill        $00
	dc.b	$0C
	smpsLoop            $00, $04, Snd_CreditsS2_Loop2C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FD

Snd_CreditsS2_Loop2D:
	dc.b	nRst, $0C, nMaxPSG, $06, nRst, $07, nMaxPSG, $06, nRst, $11, nMaxPSG, $0C
	dc.b	nRst, $06, nMaxPSG, $0C, nRst, $06, nMaxPSG, nRst
	smpsLoop            $00, $07, Snd_CreditsS2_Loop2D
	smpsPSGAlterVol     $02

Snd_CreditsS2_Loop2E:
	dc.b	nMaxPSG, $0C, $08, $04
	smpsLoop            $00, $18, Snd_CreditsS2_Loop2E

Snd_CreditsS2_Loop2F:
	dc.b	nMaxPSG, $0C, $0C, $0C, $08, $04
	smpsLoop            $00, $08, Snd_CreditsS2_Loop2F
	dc.b	nRst, $60
	smpsPSGvoice        fTone_04
	smpsPSGAlterVol     $02

Snd_CreditsS2_Loop30:
	dc.b	nMaxPSG, $06, $06, $0C
	smpsLoop            $00, $10, Snd_CreditsS2_Loop30

Snd_CreditsS2_Loop31:
	dc.b	nRst, $30
	smpsLoop            $00, $0A, Snd_CreditsS2_Loop31
	dc.b	$60
	smpsPSGAlterVol     $FF

Snd_CreditsS2_Loop32:
	smpsPSGvoice        fTone_01
	dc.b	nMaxPSG, $0C
	smpsPSGvoice        fTone_02
	smpsPSGAlterVol     $FF
	dc.b	$08
	smpsPSGvoice        fTone_01
	smpsPSGAlterVol     $01
	dc.b	$04
	smpsLoop            $00, $27, Snd_CreditsS2_Loop32
	smpsPSGAlterVol     $FF
	smpsPSGvoice        fTone_04

Snd_CreditsS2_Loop33:
	smpsNoteFill        $03
	dc.b	nMaxPSG, $0C
	smpsNoteFill        $0C
	dc.b	$0C
	smpsLoop            $00, $1E, Snd_CreditsS2_Loop33
	smpsNoteFill        $03
	dc.b	$06
	smpsNoteFill        $0E
	dc.b	$12
	smpsNoteFill        $03
	dc.b	$0C
	smpsNoteFill        $0F
	dc.b	$0C
	smpsStop

; DAC Data
Snd_CreditsS2_DAC:
	dc.b	dSnare, $06, dSnare, dSnare, dSnare, dSnare, $0C, $06, $0C, $06, $0C, $0C
	dc.b	$0C

Snd_CreditsS2_Loop00:
	dc.b	dKick, $18, dSnare
	smpsLoop            $00, $0E, Snd_CreditsS2_Loop00
	dc.b	dKick, $0C

Snd_CreditsS2_Loop01:
	dc.b	dSnare
	smpsLoop            $00, $07, Snd_CreditsS2_Loop01
	smpsSetTempoMod     $EA
	smpsCall            Snd_CreditsS2_Call00
	dc.b	dKick, $0C, $8D, dSnare, dKick, dKick, $8E, dSnare, $84, $04, $06, $02
	dc.b	dKick, $0C, dSnare, $06, dSnare, dSnare, dSnare, dKick, $0C, dSnare, $06, dSnare
	dc.b	dKick, dKick, dSnare, dSnare, dSnare, dSnare

Snd_CreditsS2_Loop02:
	dc.b	dKick, $18, dSnare, dKick, dSnare
	smpsLoop            $00, $07, Snd_CreditsS2_Loop02
	dc.b	dKick, $0C, dSnare, dSnare, dSnare, dSnare, $06, dSnare, $8C, $8C, $8D, $8D
	dc.b	$8E, $8E
	smpsCall            Snd_CreditsS2_Call01
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, dSnare, $0C, dSnare, dSnare, $06, dSnare
	smpsCall            Snd_CreditsS2_Call01
	dc.b	dKick, $0C, dSnare, dSnare, dSnare, $8D, $06, $8D, $8E, $8E, dSnare, $06
	dc.b	dSnare, $8D, $0C, dSnare, dSnare, $06, dSnare, nRst, dSnare, dSnare, $0C, $0C
	dc.b	dSnare, dSnare, $06, dSnare, $8D, $8D

Snd_CreditsS2_Loop03:
	dc.b	dKick, $0C, $8F, $06, $90, dSnare, $0C, $90, $06, $91, dKick, $0C
	dc.b	$8F, $06, $91, dSnare, $0C, $8F, $06, $91
	smpsLoop            $00, $04, Snd_CreditsS2_Loop03
	dc.b	dKick, $0C, $8F, $06, $91, dSnare, $0C, $8F, $06, $91, $8C, $06
	dc.b	$03, $03, $8D, $06, $8D, $8D, $8E, $8E, $8E, dKick, $06, $0C
	dc.b	dSnare, $06, nRst, $0C, dKick, dSnare, $8E, dSnare, $06, dSnare, dSnare, dSnare

Snd_CreditsS2_Loop04:
	dc.b	dKick, $0C, dSnare, $06, dKick, $12, $06, $12, $8C, $06, dSnare, $0C
	dc.b	dClap, $06, dKick, nRst
	smpsLoop            $00, $06, Snd_CreditsS2_Loop04
	dc.b	dKick, $0C, dSnare, $06, dKick, $12, $06, $06, dSnare, dKick, $0C, $06
	dc.b	dSnare, $0C, $08, $04
	smpsSetTempoMod     $CD
	dc.b	$30, $0C, dSnare, dSnare, dSnare, $08, $04
	smpsCall            Snd_CreditsS2_Call02
	smpsCall            Snd_CreditsS2_Call02
	dc.b	dKick, $08, $0C, $04, dSnare, $0C, dKick, $08, $04, dSnare, $08, $04
	dc.b	$08, $04, $04, $04, $04, $08, $04
	smpsSetTempoMod     $C5

Snd_CreditsS2_Loop05:
	dc.b	dKick, $09, $03, $0C, dSnare, dKick, dKick, $18, dSnare
	smpsLoop            $00, $03, Snd_CreditsS2_Loop05
	dc.b	dKick, $09, $03, $0C, dSnare, dKick, dKick, $18, dSnare, $0C, $06, $06
	dc.b	dKick, $0C, dSnare, $06, dSnare, dSnare, dSnare, $8D, $0C, dSnare, $0C, $0C
	dc.b	$0C, $06, $06

Snd_CreditsS2_Loop06:
	dc.b	dKick, $0C, dKick, dSnare, nRst, dKick, dKick, dSnare, dClap
	smpsLoop            $00, $03, Snd_CreditsS2_Loop06
	dc.b	dKick, dSnare, dSnare, dSnare, dSnare, $06, $06, $06, $06, $0C, $06, $06
	dc.b	dKick, dKick, dSnare, dSnare, dKick, dSnare, dKick, dKick, dSnare, $02, $04, dKick
	dc.b	$0C, $06, dSnare, $0C, $06, $06, dKick, $18, dSnare, $0C, dKick, dKick
	dc.b	$18, dSnare, dKick, $06, $12, dSnare, $0C, dKick, dKick, $18, dSnare, dKick
	dc.b	$18, dSnare, $0C, dKick, dKick, $18, dSnare, dKick, $06, $12, dSnare, $0C
	dc.b	$0C, $06, $06, $06, $06, $0C, $06, $06, $02, $04, dKick, $0C
	dc.b	$06, $0C, dSnare, $02, $04, dKick, $0C, $06, $0C, dSnare, $06, dSnare
	dc.b	dSnare, dSnare
	smpsSetTempoMod     $C0
	dc.b	dKick, $0C, dSnare, dKick, dSnare, dKick, dSnare, dKick, $08, dSnare, $04, $0C

Snd_CreditsS2_Loop07:
	dc.b	dKick, $0C, dSnare
	smpsLoop            $00, $0F, Snd_CreditsS2_Loop07
	dc.b	dKick, $08, dSnare, $04, $0C

Snd_CreditsS2_Loop08:
	dc.b	dKick, $0C, dSnare
	smpsLoop            $00, $13, Snd_CreditsS2_Loop08
	dc.b	$08, $0C, $04, dKick, $0C, dSnare, dKick, dSnare, dKick, $0C, dSnare, dKick
	dc.b	$06, nRst, $02, dSnare, dSnare, dSnare, $09, $03

Snd_CreditsS2_Loop09:
	dc.b	dKick, $0C, dSnare
	smpsLoop            $00, $06, Snd_CreditsS2_Loop09
	dc.b	dKick, dSnare, dKick, $06, nRst, $02, dSnare, dSnare, dSnare, $09, $03
	smpsLoop            $01, $03, Snd_CreditsS2_Loop09
	dc.b	dKick, $0C, dSnare, dKick, dSnare, dKick, $06, dSnare, $12, $0C, dKick
	smpsStop

Snd_CreditsS2_Call00:
	dc.b	dKick, $0C, $8D, dSnare, dKick, dKick, $8E, dSnare, $84, $04, $06, $02
	dc.b	dKick, $0C, $8D, dSnare, dKick, dKick, $8E, dSnare, dClap
	smpsReturn

Snd_CreditsS2_Call01:
	dc.b	dKick, $18, dSnare, $0C, dKick, $18, $0C, dSnare, dKick, dKick, $18, dSnare
	dc.b	$0C, dKick, $12, dKick, dSnare, $18, dKick, dSnare, $0C, dKick, $18, $0C
	dc.b	dSnare, dKick
	smpsReturn

Snd_CreditsS2_Call02:
	dc.b	dKick, $08, $0C, $04, dSnare, $0C, dKick, $08, $0C, dSnare, $04, dKick
	dc.b	$0C, dSnare, dKick, dKick, $08, $0C, $04, dSnare, $0C, dKick, $08, $0C
	dc.b	dSnare, $04, dKick, $0C, dSnare, dSnare, $08, $04
	smpsReturn

Snd_CreditsS2_Voices:
;	Voice $00
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $01, 	$1F, $FF, $1F, $0F, 	$17, $28, $27, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $01, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $27, $28, $17

;	Voice $01
;	$08
;	$09, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$25, $30, $0E, $84
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $04, $0E, $30, $25

;	Voice $02
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$10, $0B, $10, $0D, 	$19, $80, $0B, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0D, $00, $0B, $00
	smpsVcTotalLevel    $00, $0B, $00, $19

;	Voice $03
;	$08
;	$0A, $70, $30, $00, 	$1F, $1F, $5F, $5F, 	$12, $0E, $0A, $0A
;	$00, $04, $04, $03, 	$2F, $2F, $2F, $2F, 	$24, $2D, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $07, $00
	smpsVcCoarseFreq    $00, $00, $00, $0A
	smpsVcRateScale     $01, $01, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0A, $0E, $12
	smpsVcDecayRate2    $03, $04, $04, $00
	smpsVcDecayLevel    $02, $02, $02, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $2D, $24

;	Voice $04
;	$3D
;	$01, $21, $51, $01, 	$12, $14, $14, $0F, 	$0A, $05, $05, $05
;	$00, $00, $00, $00, 	$2B, $2B, $2B, $1B, 	$19, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $02, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $0F, $14, $14, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $0B, $0B, $0B, $0B
	smpsVcTotalLevel    $00, $00, $00, $19

;	Voice $05
;	$04
;	$57, $02, $70, $50, 	$1F, $1F, $1F, $1F, 	$00, $00, $00, $00
;	$06, $0A, $00, $0A, 	$00, $0F, $00, $0F, 	$1A, $80, $10, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $05, $07, $00, $05
	smpsVcCoarseFreq    $00, $00, $02, $07
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $0A, $00, $0A, $06
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $0F, $00, $0F, $00
	smpsVcTotalLevel    $00, $10, $00, $1A

;	Voice $06
;	$35
;	$01, $01, $13, $00, 	$1F, $1D, $18, $19, 	$00, $09, $06, $0D
;	$00, $00, $02, $03, 	$00, $06, $15, $16, 	$1E, $80, $83, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $00
	smpsVcCoarseFreq    $00, $03, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $18, $1D, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0D, $06, $09, $00
	smpsVcDecayRate2    $03, $02, $00, $00
	smpsVcDecayLevel    $01, $01, $00, $00
	smpsVcReleaseRate   $06, $05, $06, $00
	smpsVcTotalLevel    $00, $03, $00, $1E

;	Voice $07
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1A, $88, $16, $88
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $08, $16, $08, $1A

;	Voice $08
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$14, $37, $0F, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $0F, $37, $14

;	Voice $09
;	$3B
;	$0F, $06, $01, $02, 	$DF, $1F, $1F, $DF, 	$0C, $00, $0A, $03
;	$0F, $00, $00, $01, 	$F3, $05, $55, $5C, 	$22, $20, $22, $80
	smpsVcAlgorithm     $03
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $06, $0F
	smpsVcRateScale     $03, $00, $00, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0A, $00, $0C
	smpsVcDecayRate2    $01, $00, $00, $0F
	smpsVcDecayLevel    $05, $05, $00, $0F
	smpsVcReleaseRate   $0C, $05, $05, $03
	smpsVcTotalLevel    $00, $22, $20, $22

;	Voice $0A
;	$3C
;	$31, $52, $50, $30, 	$52, $53, $52, $53, 	$08, $00, $08, $00
;	$04, $00, $04, $00, 	$1F, $0F, $1F, $0F, 	$1C, $84, $14, $80
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $05, $03
	smpsVcCoarseFreq    $00, $00, $02, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $13, $12, $13, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $08, $00, $08
	smpsVcDecayRate2    $00, $04, $00, $04
	smpsVcDecayLevel    $00, $01, $00, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $04, $1C

;	Voice $0B
;	$3A
;	$69, $70, $50, $60, 	$1C, $18, $1A, $18, 	$10, $0C, $02, $09
;	$08, $06, $06, $03, 	$F9, $56, $06, $06, 	$28, $15, $14, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $05, $07, $06
	smpsVcCoarseFreq    $00, $00, $00, $09
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1A, $18, $1C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $02, $0C, $10
	smpsVcDecayRate2    $03, $06, $06, $08
	smpsVcDecayLevel    $00, $00, $05, $0F
	smpsVcReleaseRate   $06, $06, $06, $09
	smpsVcTotalLevel    $00, $14, $15, $28

;	Voice $0C
;	$3D
;	$00, $01, $02, $01, 	$4C, $0F, $50, $12, 	$0C, $02, $00, $05
;	$01, $00, $00, $00, 	$28, $29, $2A, $19, 	$1A, $00, $06, $00
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $02, $01, $00
	smpsVcRateScale     $00, $01, $00, $01
	smpsVcAttackRate    $12, $10, $0F, $0C
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $00, $02, $0C
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $02, $02, $02
	smpsVcReleaseRate   $09, $0A, $09, $08
	smpsVcTotalLevel    $00, $06, $00, $1A

;	Voice $0D
;	$2C
;	$71, $71, $31, $31, 	$1F, $16, $1F, $16, 	$00, $0F, $00, $0F
;	$00, $0F, $00, $0F, 	$00, $FA, $00, $FA, 	$15, $00, $14, $00
	smpsVcAlgorithm     $04
	smpsVcFeedback      $05
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $16, $1F, $16, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $00, $0F, $00
	smpsVcDecayRate2    $0F, $00, $0F, $00
	smpsVcDecayLevel    $0F, $00, $0F, $00
	smpsVcReleaseRate   $0A, $00, $0A, $00
	smpsVcTotalLevel    $00, $14, $00, $15

;	Voice $0E
;	$18
;	$37, $32, $31, $31, 	$9E, $DC, $1C, $9C, 	$0D, $06, $04, $01
;	$08, $0A, $03, $05, 	$B6, $B6, $36, $28, 	$2C, $22, $14, $00
	smpsVcAlgorithm     $00
	smpsVcFeedback      $03
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $01, $02, $07
	smpsVcRateScale     $02, $00, $03, $02
	smpsVcAttackRate    $1C, $1C, $1C, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $01, $04, $06, $0D
	smpsVcDecayRate2    $05, $03, $0A, $08
	smpsVcDecayLevel    $02, $03, $0B, $0B
	smpsVcReleaseRate   $08, $06, $06, $06
	smpsVcTotalLevel    $00, $14, $22, $2C

;	Voice $0F
;	$3D
;	$01, $02, $02, $02, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$24, $18, $18, $18, 	$1C, $82, $82, $82
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $08, $08, $08, $04
	smpsVcTotalLevel    $02, $02, $02, $1C

;	Voice $10
;	$32
;	$71, $0D, $33, $01, 	$5F, $99, $5F, $94, 	$05, $05, $05, $07
;	$02, $02, $02, $02, 	$11, $11, $11, $72, 	$23, $2D, $26, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $03, $00, $07
	smpsVcCoarseFreq    $01, $03, $0D, $01
	smpsVcRateScale     $02, $01, $02, $01
	smpsVcAttackRate    $14, $1F, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $07, $05, $05, $05
	smpsVcDecayRate2    $02, $02, $02, $02
	smpsVcDecayLevel    $07, $01, $01, $01
	smpsVcReleaseRate   $02, $01, $01, $01
	smpsVcTotalLevel    $00, $26, $2D, $23

;	Voice $11
;	$3A
;	$32, $01, $52, $31, 	$1F, $1F, $1F, $18, 	$01, $1F, $00, $00
;	$00, $0F, $00, $00, 	$5A, $0F, $03, $1A, 	$3B, $30, $4F, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $05, $00, $03
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $18, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $1F, $01
	smpsVcDecayRate2    $00, $00, $0F, $00
	smpsVcDecayLevel    $01, $00, $00, $05
	smpsVcReleaseRate   $0A, $03, $0F, $0A
	smpsVcTotalLevel    $00, $4F, $30, $3B

;	Voice $12
;	$3C
;	$42, $41, $32, $41, 	$12, $12, $12, $12, 	$00, $00, $00, $00
;	$00, $00, $00, $00, 	$06, $08, $06, $08, 	$24, $08, $24, $08
	smpsVcAlgorithm     $04
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $04, $04
	smpsVcCoarseFreq    $01, $02, $01, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $12, $12, $12, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $00, $00, $00, $00
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $00, $00
	smpsVcReleaseRate   $08, $06, $08, $06
	smpsVcTotalLevel    $08, $24, $08, $24

;	Voice $13
;	$31
;	$34, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$0C, $07, $0C, $09
;	$07, $07, $07, $08, 	$2F, $1F, $1F, $2F, 	$17, $32, $14, $80
	smpsVcAlgorithm     $01
	smpsVcFeedback      $06
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $04
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $09, $0C, $07, $0C
	smpsVcDecayRate2    $08, $07, $07, $07
	smpsVcDecayLevel    $02, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $14, $32, $17

;	Voice $14
;	$3D
;	$01, $01, $01, $01, 	$10, $50, $50, $50, 	$07, $08, $08, $08
;	$01, $00, $00, $00, 	$20, $1A, $1A, $1A, 	$19, $84, $84, $84
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $01, $01
	smpsVcRateScale     $01, $01, $01, $00
	smpsVcAttackRate    $10, $10, $10, $10
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $08, $08, $07
	smpsVcDecayRate2    $00, $00, $00, $01
	smpsVcDecayLevel    $01, $01, $01, $02
	smpsVcReleaseRate   $0A, $0A, $0A, $00
	smpsVcTotalLevel    $04, $04, $04, $19

;	Voice $15
;	$24
;	$70, $74, $30, $38, 	$12, $1F, $1F, $1F, 	$05, $03, $05, $03
;	$05, $03, $05, $03, 	$36, $2C, $26, $2C, 	$0A, $08, $06, $08
	smpsVcAlgorithm     $04
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $07, $07
	smpsVcCoarseFreq    $08, $00, $04, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $05, $03, $05
	smpsVcDecayRate2    $03, $05, $03, $05
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0C, $06, $0C, $06
	smpsVcTotalLevel    $08, $06, $08, $0A

;	Voice $16
;	$3A
;	$01, $01, $01, $02, 	$8D, $07, $07, $52, 	$09, $00, $00, $03
;	$01, $02, $02, $00, 	$5F, $0F, $0F, $2F, 	$18, $22, $18, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $01, $01, $01
	smpsVcRateScale     $01, $00, $00, $02
	smpsVcAttackRate    $12, $07, $07, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $00, $09
	smpsVcDecayRate2    $00, $02, $02, $01
	smpsVcDecayLevel    $02, $00, $00, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $18, $22, $18

;	Voice $17
;	$3A
;	$01, $07, $01, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$18, $4E, $16, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $01, $07, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $4E, $18

;	Voice $18
;	$3A
;	$03, $08, $03, $01, 	$8E, $8E, $8D, $53, 	$0E, $0E, $0E, $03
;	$00, $00, $00, $00, 	$1F, $FF, $1F, $0F, 	$17, $28, $20, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $01, $03, $08, $03
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $13, $0D, $0E, $0E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $0E, $0E, $0E
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $01, $0F, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $20, $28, $17

;	Voice $19
;	$20
;	$7A, $31, $00, $00, 	$9F, $D8, $DC, $DF, 	$10, $0A, $04, $04
;	$0F, $08, $08, $08, 	$5F, $5F, $BF, $BF, 	$14, $2B, $17, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $03, $07
	smpsVcCoarseFreq    $00, $00, $01, $0A
	smpsVcRateScale     $03, $03, $03, $02
	smpsVcAttackRate    $1F, $1C, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $04, $0A, $10
	smpsVcDecayRate2    $08, $08, $08, $0F
	smpsVcDecayLevel    $0B, $0B, $05, $05
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $17, $2B, $14

;	Voice $1A
;	$3A
;	$61, $08, $51, $02, 	$5D, $5D, $5D, $50, 	$04, $0F, $1F, $1F
;	$00, $00, $00, $00, 	$1F, $5F, $0F, $0F, 	$22, $1E, $22, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $06
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $01, $01, $01, $01
	smpsVcAttackRate    $10, $1D, $1D, $1D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $1F, $1F, $0F, $04
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $00, $00, $05, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $22, $1E, $22

;	Voice $1B
;	$02
;	$01, $55, $02, $04, 	$92, $8D, $8E, $54, 	$0D, $0C, $00, $03
;	$00, $00, $00, $00, 	$FF, $2F, $0F, $5F, 	$16, $2A, $1D, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $05, $00
	smpsVcCoarseFreq    $04, $02, $05, $01
	smpsVcRateScale     $01, $02, $02, $02
	smpsVcAttackRate    $14, $0E, $0D, $12
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $03, $00, $0C, $0D
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $05, $00, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $1D, $2A, $16

;	Voice $1C
;	$02
;	$75, $71, $73, $31, 	$1F, $58, $96, $9F, 	$01, $1B, $03, $08
;	$01, $04, $01, $05, 	$FF, $2F, $3F, $2F, 	$24, $29, $30, $80
	smpsVcAlgorithm     $02
	smpsVcFeedback      $00
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $07, $07, $07
	smpsVcCoarseFreq    $01, $03, $01, $05
	smpsVcRateScale     $02, $02, $01, $00
	smpsVcAttackRate    $1F, $16, $18, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $03, $1B, $01
	smpsVcDecayRate2    $05, $01, $04, $01
	smpsVcDecayLevel    $02, $03, $02, $0F
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $30, $29, $24

;	Voice $1D
;	$20
;	$66, $65, $60, $60, 	$DF, $DF, $9F, $1F, 	$00, $06, $09, $0C
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$1C, $3A, $16, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $06, $06, $06, $06
	smpsVcCoarseFreq    $00, $00, $05, $06
	smpsVcRateScale     $00, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0C, $09, $06, $00
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $16, $3A, $1C

;	Voice $1E
;	$0D
;	$32, $08, $06, $01, 	$1F, $19, $19, $19, 	$0A, $05, $05, $05
;	$00, $02, $02, $02, 	$3F, $2F, $2F, $2F, 	$28, $80, $86, $8D
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $06, $08, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $19, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $0D, $06, $00, $28

;	Voice $1F
;	$38
;	$3A, $0A, $11, $02, 	$D4, $14, $50, $0E, 	$05, $08, $02, $08
;	$00, $00, $00, $00, 	$99, $09, $09, $1A, 	$2D, $2C, $19, $86
	smpsVcAlgorithm     $00
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $01, $00, $03
	smpsVcCoarseFreq    $02, $01, $0A, $0A
	smpsVcRateScale     $00, $01, $00, $03
	smpsVcAttackRate    $0E, $10, $14, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $08, $02, $08, $05
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $09
	smpsVcReleaseRate   $0A, $09, $09, $09
	smpsVcTotalLevel    $06, $19, $2C, $2D

;	Voice $20
;	$0D
;	$32, $04, $02, $01, 	$1F, $19, $19, $19, 	$0A, $05, $05, $05
;	$00, $02, $02, $02, 	$3F, $2F, $2F, $2F, 	$28, $86, $8B, $93
	smpsVcAlgorithm     $05
	smpsVcFeedback      $01
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $03
	smpsVcCoarseFreq    $01, $02, $04, $02
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $19, $19, $19, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $05, $05, $0A
	smpsVcDecayRate2    $02, $02, $02, $00
	smpsVcDecayLevel    $02, $02, $02, $03
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $13, $0B, $06, $28

;	Voice $21
;	$3A
;	$20, $23, $60, $01, 	$1E, $1F, $1F, $1F, 	$0A, $0A, $0B, $0A
;	$05, $07, $0A, $08, 	$A4, $85, $96, $78, 	$21, $25, $28, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $06, $02, $02
	smpsVcCoarseFreq    $01, $00, $03, $00
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $1F, $1F, $1F, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0A, $0B, $0A, $0A
	smpsVcDecayRate2    $08, $0A, $07, $05
	smpsVcDecayLevel    $07, $09, $08, $0A
	smpsVcReleaseRate   $08, $06, $05, $04
	smpsVcTotalLevel    $00, $28, $25, $21

;	Voice $22
;	$3A
;	$32, $56, $32, $42, 	$8D, $4F, $15, $52, 	$06, $08, $07, $04
;	$02, $00, $00, $00, 	$18, $18, $28, $28, 	$19, $20, $2A, $00
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $04, $03, $05, $03
	smpsVcCoarseFreq    $02, $02, $06, $02
	smpsVcRateScale     $01, $00, $01, $02
	smpsVcAttackRate    $12, $15, $0F, $0D
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $04, $07, $08, $06
	smpsVcDecayRate2    $00, $00, $00, $02
	smpsVcDecayLevel    $02, $02, $01, $01
	smpsVcReleaseRate   $08, $08, $08, $08
	smpsVcTotalLevel    $00, $2A, $20, $19

;	Voice $23
;	$3A
;	$51, $08, $51, $02, 	$1E, $1E, $1E, $10, 	$1F, $1F, $1F, $0F
;	$00, $00, $00, $02, 	$0F, $0F, $0F, $1F, 	$18, $24, $22, $81
	smpsVcAlgorithm     $02
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $05, $00, $05
	smpsVcCoarseFreq    $02, $01, $08, $01
	smpsVcRateScale     $00, $00, $00, $00
	smpsVcAttackRate    $10, $1E, $1E, $1E
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $0F, $1F, $1F, $1F
	smpsVcDecayRate2    $02, $00, $00, $00
	smpsVcDecayLevel    $01, $00, $00, $00
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $01, $22, $24, $18

;	Voice $24
;	$20
;	$36, $35, $30, $31, 	$DF, $DF, $9F, $9F, 	$07, $06, $09, $06
;	$07, $06, $06, $08, 	$2F, $1F, $1F, $FF, 	$19, $37, $13, $80
	smpsVcAlgorithm     $00
	smpsVcFeedback      $04
	smpsVcUnusedBits    $00
	smpsVcDetune        $03, $03, $03, $03
	smpsVcCoarseFreq    $01, $00, $05, $06
	smpsVcRateScale     $02, $02, $03, $03
	smpsVcAttackRate    $1F, $1F, $1F, $1F
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $06, $09, $06, $07
	smpsVcDecayRate2    $08, $06, $06, $07
	smpsVcDecayLevel    $0F, $01, $01, $02
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $13, $37, $19

;	Voice $25
;	$3D
;	$01, $02, $02, $02, 	$14, $0E, $8C, $0E, 	$08, $05, $02, $05
;	$00, $00, $00, $00, 	$1F, $1F, $1F, $1F, 	$1A, $80, $80, $80
	smpsVcAlgorithm     $05
	smpsVcFeedback      $07
	smpsVcUnusedBits    $00
	smpsVcDetune        $00, $00, $00, $00
	smpsVcCoarseFreq    $02, $02, $02, $01
	smpsVcRateScale     $00, $02, $00, $00
	smpsVcAttackRate    $0E, $0C, $0E, $14
	smpsVcAmpMod        $00, $00, $00, $00
	smpsVcDecayRate1    $05, $02, $05, $08
	smpsVcDecayRate2    $00, $00, $00, $00
	smpsVcDecayLevel    $01, $01, $01, $01
	smpsVcReleaseRate   $0F, $0F, $0F, $0F
	smpsVcTotalLevel    $00, $00, $00, $1A

