class FileSystemService < ActiveRecord::Base

  # Validates if the attachment is a valid AUDIO file with the extensions: .flac .mp3 .ogg .spx .wav
  # Nil attachments are valid too
  def self.is_valid_audio_file(attachment)
    if attachment.nil?
      return true
    end

    extension = File.extname(attachment.original_filename)
    %w(.0CC .2SF .2SFLIB .3GA .3GPA	3GPP .4MP .5XB .5XE .5XS .669 .6CM .8CM .8MED .8SVX .A2B .A2I .A2M .A2P .A2T .A2W .A52 .AA .AA3 .AAC .AAX .AB .ABC .ABM .AC3 .ACB .ACD .ACD-BAK .ACD-ZIP .ACM .ACP .ACT .ADG .ADT .ADTS .ADV .ADX .AFC .AGM .AGR .AHX .AIF .AIFC .AIFF .AIS .AKP .ALAC .ALC .ALS .AMR .AMS .AMZ .AOB .APF .ARIA .ARIAX .ASD .ASE .AT3 .ATRAC .AU .AU .AUD .AUDIONOTE .AUP .AVASTSOUNDS .AVR .AWB .AWB .AWC .AXA .AY .B4S .BAND .BAP .BCS .BCSTM .BDD .BFSTM .BIDULE .BMML .BNK .BONK .BOX .BRR .BRSTM .BUN .BWF .BWG .BWW .C01 .CAF .CAFF .CDA .CDDA .CDLX .CDO .CDR .CEL .CFA .CFXR .CGRP .CIDB .CKB .CKF .CMF .CONFORM .COPY .CPR .CPT .CSH .CTS .CWB .CWP .CWS .CWT .D00 .D01 .DCF .DCM .DCT .DDT .DEWF .DF2 .DFC .DFF .DIG .DIG .DJR .DLS .DM .DMC .DMF .DMSA .DMSE .DRA .DRG .DS .DS2 .DSF .DSM .DSP .DSS .DTM .DTS .DTSHD .DVF .DW .DWA .DWD .EAR .EDL .EFA .EFE .EFK .EFQ .EFS .EFV .EMD .EMP .EMX .EMY .EOP .ERB .ESPS .EVR .EVRC .EXPRESSIONMAP .EXS .F2R .F32 .F3R .F4A .F64 .FAR .FDA .FDP .FEV .FFF .FLAC .FLM .FLP .FLP .FLS .FPA .FPR .FRG .FSB .FSC .FSM .FTI .FTM .FTM .FTMX .FUZ .FZB .FZF .FZV .G721 .G723 .G726 .GBPROJ .GBS .GIG .GIO .GIO .GM .GMC .GP5 .GPBANK .GPK .GPX .GRO .GROOVE .GSF .GSFLIB .GSM .GSM .GYM .H0 .H3B .H3E .H4B .H4E .H5B .H5E .H5S .HBB .HBE .HBS .HCA .HDP .HMA .HMI .HPS .HSB .IAA .ICS .IFF .IGP .IGR .IMF .IMP .INS .INS .INS .ISMA .IT .ITI .ITLS .ITS .JAM .JAM .JO .JO-7Z .JSPF .K25 .K26 .KAR .KFN .KIN .KIT .KMP .KOZ .KOZ .KPL .KRZ .KSC .KSD .KSF .KSM .KT2 .KT3 .KTP .L .LA .LOF .LOGIC .LOGICX .LQT .LSO .LVP .LWV .M .M1A .M2 .M3U .M3U8 .M4A .M4B .M4P .M4R .M5P .MA1 .MBR .MDC .MDL .MDR .MED .MGV .MID .MIDI .MINI2SF .MINIGSF .MININCSF .MINIPSF .MINIPSF2 .MINIUSF .MKA .MLP .MMF .MMLP .MMM .MMP .MMP .MMPZ .MO3 .MOD .MOGG .MP1 .MP2 .MP3 .MP_ .MPA .MPC .MPDP .MPGA .MPU .MSCX .MSCZ .MSMPL_ALL .MSMPL_BANK .MSV .MT2 .MT9 .MTE .MTF .MTI .MTM .MTP .MTS .MU3 .MUI .MUS .MUS .MUS .MUSA .MUSX .MUX .MUX .MUZ .MWAND .MWS .MX3 .MX4 .MX5 .MX5TEMPLATE .MXL .MXMF .MYR .MZP .NAAC .NAP .NARRATIVE .NBS .NCW .NFA .NKB .NKC .NKI .NKM .NKS .NKX .NML .NMSV .NOTE .NPL .NRA .NRT .NSA .NSF .NST .NTN .NUS3BANK .NVF .NWC .OBW .ODM .OFR .OGA .OGG .OKT .OMA .OMF .OMG .OMX .OPUS .ORC .OTA .OTS .OVE .OVW .OVW .PAC .PAF .PANDORA .PAT .PBF .PCA .PCAST .PCG .PCM .PD .PEAK .PEK .PHO .PHY .PJUNOXL .PK .PKF .PLA .PLS .PLST .PLY .PMPL .PNA .PNO .PPC .PPCX .PRG .PRG .PSF .PSF1 .PSF2 .PSM .PSY .PTCOP .PTF .PTM .PTS .PTT .PTX .PTXT .PVC .PVF .Q1 .Q2 .QCP .R .R1M .RA .RAD .RAM .RAW .RAX .RBS .RBS .RCY .RECORD .REX .RFL .RGRP .RIP .RMF .RMI .RMJ .RMM .RMX .RNG .RNS .ROL .RSF .RSN .RSO .RTA .RTI .RTM .RTS .RVX .RX2 .S16 .S3I .S3M .S3Z .SABL .SAF .SAM .SAP .SB .SBG .SBI .SBK .SC2 .SCS11 .SD .SD .SD2 .SD2F .SDAT .SDII .SDS .SDT .SDX .SEG .SEQ .SES .SESX .SF .SF2 .SFAP0 .SFK .SFL .SFPACK .SFS .SFX .SFZ .SGP .SHN .SIB .SID .SLP .SLX .SMA .SMF .SMP .SMP .SMPX .SND .SND .SND .SNG .SNG .SNGX .SNS .SNSF .SONG .SOU .SPH .SPPACK .SPRG .SPX .SSEQ .SSEQ .SSM .SSND .ST3 .STAP .STH .STI .STM .STW .STX .STY .STY .SVD .SVQ .SVX .SW .SWA .SWAV .SXT .SYH .SYN .SYN .SYW .SYX .TAK .TAK .TD0 .TFMX .TG .THX .TM2 .TM8 .TMC .TOC .TRAK .TSP .TTA .TUN .TXW .U .U8 .UAX .UB .ULAW .ULT .ULW .UNI .USF .USFLIB .UST .UW .UWF .V2M .VAG .VAL .VAP .VB .VC3 .VCE .VDJ .VGM .VGZ .VIP .VLC .VMD .VMF .VMF .VMO .VOC .VOC .VOI .VOX .VOXAL .VPL .VPM .VPR .VPW .VQF .VRF .VSQ .VSQX .VTX .VYF .W01 .W64 .WAND .WAV .WAV .WAVE .WAX .WEM .WFB .WFD .WFM .WFP .WMA .WOW .WPK .WPP .WPROJ .WRK .WTPL .WTPT .WUS .WUT .WV .WVC .WVE .WWU .WYZ .XA .XA .XBMML .XFS .XI .XM .XMA .XMF .XMI .XMS .XMU .XMZ .XP .XPF .XRNS .XSB .XSP .XSPF .XT .XWB .YM .YOOKOO .ZAB .ZGR .ZPA .ZPL .ZVD .ZVR).include?(extension.upcase)
  end

  # Validates if the attachment is a valid IMAGE file with the extensions: .png .jpeg .jpg
  # Nil attachments are valid too
  def self.is_valid_image_file(attachment)
    if attachment.nil?
      return true
    end

    extension = File.extname(attachment.original_filename)
    %w(.png .jpeg .jpg).include?(extension.downcase)
  end

  # Saves a file in the file system
  # Returns the path where the file was stored
  def self.save(attachment, file_name, where_to_save)
    # Create the file path
    path = File.join(where_to_save, file_name)

    # Write the file
    File.open(path, "wb") {|f| f.write(attachment.read)}

    return path
  end

  # Deletes a file in the file system
  def self.delete(path)
    File.delete(path)
  end
end