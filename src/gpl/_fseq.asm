;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.4.1 #9072 (Jan 24 2019) (Linux)
; This file was generated Thu Jan 24 08:46:15 2019
;--------------------------------------------------------
	.module _fseq
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___fseq
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area _RSEG (ABS)
	.org 0x0000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _CODE
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _CODE
	.map	src/gpl/_fseq.c, 57, "__fseq (float a1, float a2)"
;	---------------------------------
; Function __fseq
; ---------------------------------
___fseq_start::
___fseq:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl,#-12
	add	hl,sp
	ld	sp,hl
	.map	src/gpl/_fseq.c, 61, "fl1.f = a1;"
	ld	hl,#0x0004
	add	hl,sp
	ld	e, l
	ld	d, h
	ld	hl, #0x0010
	add	hl, sp
	ld	bc, #0x0004
	ldir
	.map	src/gpl/_fseq.c, 62, "fl2.f = a2;"
	ld	hl,#0x0000
	add	hl,sp
	ld	e, l
	ld	d, h
	ld	hl, #0x0014
	add	hl, sp
	ld	bc, #0x0004
	ldir
	.map	src/gpl/_fseq.c, 64, "if (fl1.l == fl2.l)"
	ld	hl,#0x0004
	add	hl,sp
	ld	e, l
	ld	d, h
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl,#0x0000
	add	hl,sp
	ld	d,(hl)
	inc	hl
	ld	e,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(ix + -4)
	sub	a, d
	jp	NZ,00102$
	ld	a,(ix + -3)
	sub	a, e
	jp	NZ,00102$
	ld	a,(ix + -2)
	sub	a, c
	jp	NZ,00102$
	ld	a,(ix + -1)
	sub	a, b
	jp	NZ,00102$
	.map	src/gpl/_fseq.c, 65, "return (1);"
	ld	l,#0x01
	jp	00105$
00102$:
	.map	src/gpl/_fseq.c, 66, "if (((fl1.l | fl2.l) & 0x7FFFFFFF) == 0)"
	ld	hl,#0x0004
	add	hl,sp
	ld	e, l
	ld	d, h
	ld	hl, #0x0008
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
	ld	hl,#0x0000
	add	hl,sp
	ld	e,(hl)
	inc	hl
	ld	d,(hl)
	inc	hl
	ld	c,(hl)
	inc	hl
	ld	b,(hl)
	ld	a,(ix + -4)
	or	a, e
	ld	e,a
	ld	a,(ix + -3)
	or	a, d
	ld	d,a
	ld	a,(ix + -2)
	or	a, c
	ld	l,a
	ld	a,(ix + -1)
	or	a, b
	ld	h,a
	ld	a,e
	or	a,a
	jp	NZ,00104$
	or	a,d
	jp	NZ,00104$
	cp	a, a
	adc	hl, hl
	jp	NZ,00104$
	.map	src/gpl/_fseq.c, 67, "return (1);"
	ld	l,#0x01
	jp	00105$
00104$:
	.map	src/gpl/_fseq.c, 68, "return (0);"
	ld	l,#0x00
00105$:
	ld	sp, ix
	pop	ix
	ret
	___fseq_end::
.function	___fseq, ___fseq_start, ___fseq_end
	.area _CODE
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
