.class public Lcom/android/server/hdmi/HdmiCecMessageValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;,
        Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    }
.end annotation


# static fields
.field private static final DEST_ALL:I = 0x3

.field private static final DEST_BROADCAST:I = 0x2

.field private static final DEST_DIRECT:I = 0x1

.field static final ERROR_DESTINATION:I = 0x2

.field static final ERROR_PARAMETER:I = 0x3

.field static final ERROR_PARAMETER_SHORT:I = 0x4

.field static final ERROR_SOURCE:I = 0x1

.field static final OK:I = 0x0

.field private static final SRC_UNREGISTERED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "HdmiCecMessageValidator"


# instance fields
.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field final mValidationInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/hdmi/HdmiControlService;

    .line 65
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    .line 66
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 69
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    .line 70
    .local v2, "physicalAddressValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
    const/16 v4, 0x82

    const/4 v5, 0x6

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 72
    const/16 v4, 0x9d

    const/4 v6, 0x1

    invoke-direct {v0, v4, v2, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 73
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;

    invoke-direct {v4, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v7, 0x84

    invoke-direct {v0, v7, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 75
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;

    invoke-direct {v4, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v7, 0x80

    invoke-direct {v0, v7, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 77
    const/16 v4, 0x81

    invoke-direct {v0, v4, v2, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 79
    const/16 v4, 0x86

    const/4 v7, 0x2

    invoke-direct {v0, v4, v2, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 81
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;

    invoke-direct {v4, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v8, 0x70

    invoke-direct {v0, v8, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 85
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 86
    .local v4, "noneValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v9, 0xff

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 87
    const/16 v9, 0x9f

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 88
    const/16 v9, 0x91

    const/4 v10, 0x5

    invoke-direct {v0, v9, v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 90
    const/16 v9, 0x71

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 91
    const/16 v9, 0x8f

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 92
    const/16 v9, 0x8c

    invoke-direct {v0, v9, v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 94
    const/16 v9, 0x46

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 95
    const/16 v9, 0x83

    invoke-direct {v0, v9, v4, v10}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 97
    const/16 v9, 0x7d

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 99
    const/4 v9, 0x4

    invoke-direct {v0, v9, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 100
    const/16 v11, 0xc0

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 101
    const/16 v11, 0xb

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 102
    const/16 v11, 0xf

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 103
    const/16 v11, 0xc1

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 104
    const/16 v11, 0xc2

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 105
    const/16 v11, 0xc3

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 106
    const/16 v11, 0xc4

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 107
    const/16 v11, 0x85

    invoke-direct {v0, v11, v4, v5}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 109
    const/16 v11, 0x36

    const/4 v12, 0x7

    invoke-direct {v0, v11, v4, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 110
    const/16 v11, 0xc5

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 111
    const/16 v11, 0xd

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 112
    invoke-direct {v0, v5, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 113
    invoke-direct {v0, v10, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 114
    const/16 v11, 0x45

    invoke-direct {v0, v11, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 115
    const/16 v11, 0x8b

    const/4 v13, 0x3

    invoke-direct {v0, v11, v4, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 120
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/16 v14, 0x8

    invoke-direct {v11, v6, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v15, 0x9

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 122
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0xa

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 125
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0x33

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 127
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0x99

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 129
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0xa1

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 131
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0x34

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 133
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$DigitalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0x97

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 135
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;

    invoke-direct {v11, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v15, 0xa2

    invoke-direct {v0, v15, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 137
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    const/16 v15, 0xe

    invoke-direct {v11, v0, v6, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v5, 0x67

    invoke-direct {v0, v5, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 139
    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;

    invoke-direct {v5, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerClearedStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v11, 0x43

    invoke-direct {v0, v11, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 143
    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;

    invoke-direct {v5, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v11, 0x35

    invoke-direct {v0, v11, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 146
    new-instance v5, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    .line 147
    .local v5, "oneByteValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
    const/16 v11, 0x9e

    invoke-direct {v0, v11, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 148
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v11, v0, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)V

    const/16 v10, 0x32

    invoke-direct {v0, v10, v11, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 151
    new-instance v10, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v10, v0, v6, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    .line 152
    .local v10, "statusRequestValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    new-instance v11, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v11, v0, v6, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v9, 0x42

    invoke-direct {v0, v9, v11, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 154
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/16 v11, 0x11

    const/16 v7, 0x1f

    invoke-direct {v9, v0, v11, v7}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v7, 0x1b

    invoke-direct {v0, v7, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 156
    const/16 v7, 0x1a

    invoke-direct {v0, v7, v10, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 157
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;

    invoke-direct {v7, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PlayModeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v9, 0x41

    invoke-direct {v0, v9, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 159
    invoke-direct {v0, v14, v10, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 161
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;

    invoke-direct {v7, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v9, 0x92

    invoke-direct {v0, v9, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 165
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;

    invoke-direct {v7, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectDigitalServiceValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v9, 0x93

    invoke-direct {v0, v9, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 169
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;

    invoke-direct {v7, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TunerDeviceStatusValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    invoke-direct {v0, v12, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 175
    new-instance v7, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v7, v8, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    .line 176
    .local v7, "maxLengthValidator":Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v9, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v11, 0x87

    const/4 v14, 0x2

    invoke-direct {v0, v11, v9, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 180
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v9, v6, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v11, 0x89

    const/4 v14, 0x5

    invoke-direct {v0, v11, v9, v14}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 182
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v11, 0x4

    invoke-direct {v9, v11, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v11, 0xa0

    invoke-direct {v0, v11, v9, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 184
    const/16 v9, 0x8a

    invoke-direct {v0, v9, v7, v12}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 188
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;

    invoke-direct {v9, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v11, 0x64

    invoke-direct {v0, v11, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 189
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;

    invoke-direct {v9, v0, v6, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v11, 0x47

    invoke-direct {v0, v11, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 192
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/4 v11, 0x2

    invoke-direct {v9, v0, v8, v11}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v11, 0x8d

    invoke-direct {v0, v11, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 194
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v9, v0, v8, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v11, 0x8e

    invoke-direct {v0, v11, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 198
    new-instance v9, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;

    invoke-direct {v9, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;Lcom/android/server/hdmi/HdmiCecMessageValidator$1;)V

    const/16 v3, 0x44

    invoke-direct {v0, v3, v9, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 204
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v3, v0, v8, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v9, 0x90

    invoke-direct {v0, v9, v3, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 210
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    const/4 v9, 0x2

    invoke-direct {v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    invoke-direct {v0, v8, v3, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 214
    const/16 v3, 0x7a

    invoke-direct {v0, v3, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 215
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;

    invoke-direct {v3, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;-><init>(I)V

    const/16 v9, 0xa3

    invoke-direct {v0, v9, v3, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 217
    const/16 v3, 0xa4

    invoke-direct {v0, v3, v5, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 219
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v3, v0, v8, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v9, 0x72

    invoke-direct {v0, v9, v3, v13}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 223
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    invoke-direct {v3, v0, v8, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v9, 0x7e

    invoke-direct {v0, v9, v3, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 229
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;

    const/4 v9, 0x6

    invoke-direct {v3, v0, v8, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OneByteRangeValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator;II)V

    const/16 v8, 0x9a

    invoke-direct {v0, v8, v3, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 235
    const/16 v3, 0xa5

    const/4 v6, 0x5

    invoke-direct {v0, v3, v4, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 237
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    const/4 v6, 0x4

    invoke-direct {v3, v6, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v8, 0xa6

    const/4 v9, 0x2

    invoke-direct {v0, v8, v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 241
    const/16 v3, 0xa7

    invoke-direct {v0, v3, v2, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 243
    new-instance v3, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;

    invoke-direct {v3, v6, v15}, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;-><init>(II)V

    const/16 v6, 0xa8

    invoke-direct {v0, v6, v3, v9}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 249
    const/16 v3, 0xf8

    const/4 v6, 0x6

    invoke-direct {v0, v3, v7, v6}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    .line 251
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Z)I
    .locals 1
    .param p0, "x0"    # Z

    .line 25
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->toErrorCode(Z)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/hdmi/HdmiCecMessageValidator;III)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BII)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAsciiString([BII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDisplayControl(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMonthOfYear(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidHour(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidRecordingSequence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalSource([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTimerStatusData([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPlayMode(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/hdmi/HdmiCecMessageValidator;[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidTunerDeviceInfo([B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/hdmi/HdmiCecMessageValidator;[BI)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiBroadcastType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/hdmi/HdmiCecMessageValidator;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/hdmi/HdmiCecMessageValidator;
    .param p1, "x1"    # I

    .line 25
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidUiSoundPresenationControl(I)Z

    move-result v0

    return v0
.end method

.method private addValidationInfo(ILcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V
    .locals 2
    .param p1, "opcode"    # I
    .param p2, "validator"    # Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;
    .param p3, "addrType"    # I

    .line 254
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    invoke-direct {v1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;I)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 255
    return-void
.end method

.method private isAribDbs(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 519
    if-eqz p1, :cond_1

    const/16 v0, 0x8

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isAtscDbs(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 530
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    const/16 v2, 0x12

    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isDvbDbs(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 541
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    const/16 v1, 0x1b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidAnalogueBroadcastType(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 484
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidAnalogueFrequency(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 496
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 497
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidAsciiString([BII)Z
    .locals 4
    .param p1, "params"    # [B
    .param p2, "offset"    # I
    .param p3, "maxLength"    # I

    .line 395
    move v0, p2

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    if-ge v0, p3, :cond_1

    .line 396
    aget-byte v1, p1, v0

    const/16 v2, 0x20

    const/16 v3, 0x7e

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    const/4 v1, 0x0

    return v1

    .line 395
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isValidBroadcastSystem(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 508
    const/4 v0, 0x0

    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidChannelIdentifier([BI)Z
    .locals 5
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .line 567
    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xfc

    .line 568
    .local v0, "channelNumberFormat":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 570
    array-length v2, p1

    sub-int/2addr v2, p2

    const/4 v4, 0x3

    if-lt v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 571
    :cond_1
    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 573
    array-length v4, p1

    sub-int/2addr v4, p2

    if-lt v4, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    return v1

    .line 575
    :cond_3
    return v3
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 411
    const/4 v0, 0x1

    const/16 v1, 0x1f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidDigitalBroadcastSystem(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 553
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidDigitalServiceIdentification([BI)Z
    .locals 6
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .line 589
    aget-byte v0, p1, p2

    const/16 v1, 0x80

    and-int/2addr v0, v1

    .line 591
    .local v0, "serviceIdentificationMethod":I
    aget-byte v2, p1, p2

    and-int/lit8 v2, v2, 0x7f

    .line 592
    .local v2, "digitalBroadcastSystem":I
    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 593
    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 595
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAribDbs(I)Z

    move-result v1

    const/4 v5, 0x6

    if-eqz v1, :cond_1

    .line 597
    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v5, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    .line 598
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isAtscDbs(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 600
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v5, 0x4

    if-lt v1, v5, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3

    .line 601
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isDvbDbs(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 603
    array-length v1, p1

    sub-int/2addr v1, p2

    if-lt v1, v5, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    return v3

    .line 605
    :cond_5
    if-ne v0, v1, :cond_6

    .line 607
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalBroadcastSystem(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidChannelIdentifier([BI)Z

    move-result v1

    return v1

    .line 611
    :cond_6
    return v4
.end method

.method private isValidDisplayControl(I)Z
    .locals 1
    .param p1, "value"    # I

    .line 380
    and-int/lit16 p1, p1, 0xff

    .line 381
    if-eqz p1, :cond_1

    const/16 v0, 0x40

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isValidDurationHours(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 455
    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidExternalPlug(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 622
    const/4 v0, 0x1

    const/16 v1, 0xff

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidExternalSource([BI)Z
    .locals 3
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .line 633
    aget-byte v0, p1, p2

    .line 634
    .local v0, "externalSourceSpecifier":I
    add-int/lit8 p2, p2, 0x1

    .line 635
    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 637
    aget-byte v1, p1, p2

    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidExternalPlug(I)Z

    move-result v1

    return v1

    .line 638
    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 641
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 642
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidPhysicalAddress([BI)Z

    move-result v1

    return v1

    .line 645
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private isValidHour(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 433
    const/4 v0, 0x0

    const/16 v1, 0x17

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidMinute(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 444
    const/4 v0, 0x0

    const/16 v1, 0x3b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidMonthOfYear(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 422
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidNotProgrammedErrorInfo(I)Z
    .locals 2
    .param p1, "nonProgramedErrorInfo"    # I

    .line 653
    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidPhysicalAddress([BI)Z
    .locals 6
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .line 324
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 325
    .local v0, "physicalAddress":I
    :goto_0
    const/4 v1, 0x0

    const v2, 0xffff

    if-eqz v0, :cond_1

    .line 326
    const v3, 0xf000

    and-int/2addr v3, v0

    .line 327
    .local v3, "maskedAddress":I
    shl-int/lit8 v4, v0, 0x4

    and-int v0, v4, v2

    .line 328
    if-nez v3, :cond_0

    if-eqz v0, :cond_0

    .line 329
    return v1

    .line 331
    .end local v3    # "maskedAddress":I
    :cond_0
    goto :goto_0

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 335
    return v4

    .line 337
    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v3

    .line 338
    .local v3, "path":I
    if-eq v3, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiControlService;->getPhysicalAddress()I

    move-result v2

    if-ne v3, v2, :cond_3

    .line 339
    return v4

    .line 341
    :cond_3
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->pathToPortId(I)I

    move-result v2

    .line 342
    .local v2, "portId":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_4

    .line 343
    return v1

    .line 345
    :cond_4
    return v4
.end method

.method private isValidPlayMode(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 696
    const/4 v0, 0x5

    const/4 v1, 0x7

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    const/16 v1, 0xb

    .line 697
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x15

    const/16 v1, 0x17

    .line 698
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x19

    const/16 v1, 0x1b

    .line 699
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x24

    const/16 v1, 0x25

    .line 700
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 696
    :goto_1
    return v0
.end method

.method private isValidProgrammedInfo(I)Z
    .locals 2
    .param p1, "programedInfo"    # I

    .line 649
    const/4 v0, 0x0

    const/16 v1, 0xb

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    return v0
.end method

.method private isValidRecordingSequence(I)Z
    .locals 3
    .param p1, "value"    # I

    .line 466
    and-int/lit16 p1, p1, 0xff

    .line 468
    and-int/lit16 v0, p1, 0x80

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 469
    return v1

    .line 472
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method private isValidTimerStatusData([BI)Z
    .locals 6
    .param p1, "params"    # [B
    .param p2, "offset"    # I

    .line 657
    aget-byte v0, p1, p2

    const/16 v1, 0x10

    and-int/2addr v0, v1

    .line 658
    .local v0, "programedIndicator":I
    const/4 v2, 0x0

    .line 659
    .local v2, "durationAvailable":Z
    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 661
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0xf

    .line 662
    .local v1, "programedInfo":I
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidProgrammedInfo(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    const/16 v4, 0x9

    if-eq v1, v4, :cond_1

    const/16 v4, 0xb

    if-ne v1, v4, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    return v3

    .line 664
    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 669
    .end local v1    # "programedInfo":I
    :cond_2
    goto :goto_1

    .line 671
    :cond_3
    aget-byte v1, p1, p2

    and-int/lit8 v1, v1, 0xf

    .line 672
    .local v1, "nonProgramedErrorInfo":I
    invoke-direct {p0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidNotProgrammedErrorInfo(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 673
    const/16 v4, 0xe

    if-ne v1, v4, :cond_4

    .line 674
    const/4 v2, 0x1

    goto :goto_1

    .line 676
    :cond_4
    return v3

    .line 680
    .end local v1    # "nonProgramedErrorInfo":I
    :cond_5
    :goto_1
    add-int/2addr p2, v3

    .line 682
    const/4 v1, 0x0

    if-eqz v2, :cond_7

    array-length v4, p1

    sub-int/2addr v4, p2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    .line 683
    aget-byte v4, p1, p2

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDurationHours(I)Z

    move-result v4

    if-eqz v4, :cond_6

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    invoke-direct {p0, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidMinute(I)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    move v3, v1

    :goto_2
    return v3

    .line 685
    :cond_7
    return v1
.end method

.method private isValidTunerDeviceInfo([B)Z
    .locals 6
    .param p1, "params"    # [B

    .line 756
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit8 v1, v1, 0x7f

    .line 757
    .local v1, "tunerDisplayInfo":I
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 759
    array-length v4, p1

    if-lt v4, v2, :cond_3

    .line 760
    invoke-direct {p0, p1, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidDigitalServiceIdentification([BI)Z

    move-result v0

    return v0

    .line 762
    :cond_0
    if-ne v1, v3, :cond_1

    .line 764
    return v3

    .line 765
    :cond_1
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 767
    array-length v5, p1

    if-lt v5, v2, :cond_3

    .line 768
    aget-byte v2, p1, v3

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueBroadcastType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 769
    invoke-static {p1, v4}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidAnalogueFrequency(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    .line 770
    invoke-direct {p0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidBroadcastSystem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    nop

    .line 768
    :goto_0
    return v0

    .line 773
    :cond_3
    return v0
.end method

.method static isValidType(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 358
    if-ltz p0, :cond_0

    const/4 v0, 0x7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isValidUiBroadcastType(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 713
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x10

    if-eq p1, v1, :cond_1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_1

    const/16 v1, 0x30

    if-eq p1, v1, :cond_1

    const/16 v1, 0x40

    if-eq p1, v1, :cond_1

    const/16 v1, 0x50

    if-eq p1, v1, :cond_1

    const/16 v1, 0x60

    if-eq p1, v1, :cond_1

    const/16 v1, 0x70

    if-eq p1, v1, :cond_1

    const/16 v1, 0x80

    if-eq p1, v1, :cond_1

    const/16 v1, 0x90

    if-eq p1, v1, :cond_1

    const/16 v1, 0x91

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isValidUiSoundPresenationControl(I)Z
    .locals 2
    .param p1, "value"    # I

    .line 737
    and-int/lit16 p1, p1, 0xff

    .line 738
    const/16 v0, 0x20

    if-eq p1, v0, :cond_1

    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x90

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xb1

    const/16 v1, 0xb3

    .line 743
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc1

    const/16 v1, 0xc3

    .line 744
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isWithinRange(III)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 738
    :goto_1
    return v0
.end method

.method private isWithinRange(III)Z
    .locals 1
    .param p1, "value"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 368
    and-int/lit16 p1, p1, 0xff

    .line 369
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static toErrorCode(Z)I
    .locals 1
    .param p0, "success"    # Z

    .line 364
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method


# virtual methods
.method isValid(Lcom/android/server/hdmi/HdmiCecMessage;)I
    .locals 7
    .param p1, "message"    # Lcom/android/server/hdmi/HdmiCecMessage;

    .line 258
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    .line 259
    .local v0, "opcode":I
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator;->mValidationInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;

    .line 260
    .local v1, "info":Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No validation information for the message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    return v2

    .line 266
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    const/4 v4, 0x1

    const/16 v5, 0xf

    if-ne v3, v5, :cond_1

    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/lit8 v3, v3, 0x4

    if-nez v3, :cond_1

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected source: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    return v4

    .line 272
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v5, :cond_2

    .line 273
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v3, v6

    if-nez v3, :cond_3

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected broadcast message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    return v6

    .line 278
    :cond_2
    iget v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->addressType:I

    and-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected direct message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    return v6

    .line 285
    :cond_3
    iget-object v3, v1, Lcom/android/server/hdmi/HdmiCecMessageValidator$ValidationInfo;->parameterValidator:Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;->isValid([B)I

    move-result v3

    .line 286
    .local v3, "errorCode":I
    if-eqz v3, :cond_4

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v2}, Lcom/android/server/hdmi/HdmiLogger;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    return v3

    .line 290
    :cond_4
    return v2
.end method
