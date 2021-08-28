.class public final Lcom/android/server/hdmi/HdmiCecMessage;
.super Ljava/lang/Object;
.source "HdmiCecMessage.java"


# static fields
.field public static final EMPTY_PARAM:[B


# instance fields
.field private final mDestination:I

.field private final mOpcode:I

.field private final mParams:[B

.field private final mSource:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    sput-object v0, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 1
    .param p1, "source"    # I
    .param p2, "destination"    # I
    .param p3, "opcode"    # I
    .param p4, "params"    # [B

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 47
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 48
    and-int/lit16 v0, p3, 0xff

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 49
    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 50
    return-void
.end method

.method private static filterMessageParameters(I)Z
    .locals 1
    .param p0, "opcode"    # I

    .line 289
    sparse-switch p0, :sswitch_data_0

    .line 300
    const/4 v0, 0x0

    return v0

    .line 298
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x45 -> :sswitch_0
        0x47 -> :sswitch_0
        0x64 -> :sswitch_0
        0x89 -> :sswitch_0
        0x8a -> :sswitch_0
        0x8b -> :sswitch_0
        0xa0 -> :sswitch_0
    .end sparse-switch
.end method

.method private static opcodeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "opcode"    # I

    .line 132
    sparse-switch p0, :sswitch_data_0

    .line 284
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Opcode: %02X"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :sswitch_0
    const-string v0, "Abort"

    return-object v0

    .line 280
    :sswitch_1
    const-string v0, "Cdc Message"

    return-object v0

    .line 278
    :sswitch_2
    const-string v0, "Terminate ARC"

    return-object v0

    .line 268
    :sswitch_3
    const-string v0, "Request ARC Termination"

    return-object v0

    .line 266
    :sswitch_4
    const-string v0, "Request ARC Initiation"

    return-object v0

    .line 264
    :sswitch_5
    const-string v0, "Report ARC Terminated"

    return-object v0

    .line 262
    :sswitch_6
    const-string v0, "Report ARC Initiated"

    return-object v0

    .line 260
    :sswitch_7
    const-string v0, "Initiate ARC"

    return-object v0

    .line 276
    :sswitch_8
    const-string v0, "Report Current Latency"

    return-object v0

    .line 274
    :sswitch_9
    const-string v0, "Request Current Latency"

    return-object v0

    .line 272
    :sswitch_a
    const-string v0, "Report Features"

    return-object v0

    .line 270
    :sswitch_b
    const-string v0, "Give Features"

    return-object v0

    .line 258
    :sswitch_c
    const-string v0, "Request Short Audio Descriptor"

    return-object v0

    .line 256
    :sswitch_d
    const-string v0, "Report Short Audio Descriptor"

    return-object v0

    .line 254
    :sswitch_e
    const-string v0, "Set External Timer"

    return-object v0

    .line 252
    :sswitch_f
    const-string v0, "Clear External Timer"

    return-object v0

    .line 250
    :sswitch_10
    const-string v0, "Vendor Command With Id"

    return-object v0

    .line 248
    :sswitch_11
    const-string v0, "Get Cec Version"

    return-object v0

    .line 246
    :sswitch_12
    const-string v0, "Cec Version"

    return-object v0

    .line 244
    :sswitch_13
    const-string v0, "InActive Source"

    return-object v0

    .line 242
    :sswitch_14
    const-string v0, "Set Audio Rate"

    return-object v0

    .line 240
    :sswitch_15
    const-string v0, "Clear Digital Timer"

    return-object v0

    .line 238
    :sswitch_16
    const-string v0, "Set Digital Timer"

    return-object v0

    .line 236
    :sswitch_17
    const-string v0, "Select Digital Service"

    return-object v0

    .line 234
    :sswitch_18
    const-string v0, "Select Analog Service"

    return-object v0

    .line 232
    :sswitch_19
    const-string v0, "Get Menu Language"

    return-object v0

    .line 230
    :sswitch_1a
    const-string v0, "Report Power Status"

    return-object v0

    .line 228
    :sswitch_1b
    const-string v0, "Give Device Power Status"

    return-object v0

    .line 226
    :sswitch_1c
    const-string v0, "Menu Status"

    return-object v0

    .line 224
    :sswitch_1d
    const-string v0, "Menu Request"

    return-object v0

    .line 222
    :sswitch_1e
    const-string v0, "Give Device Vendor Id"

    return-object v0

    .line 220
    :sswitch_1f
    const-string v0, "Vendor Remote Button Up"

    return-object v0

    .line 218
    :sswitch_20
    const-string v0, "Vendor Remote Button Down"

    return-object v0

    .line 216
    :sswitch_21
    const-string v0, "Vendor Command"

    return-object v0

    .line 214
    :sswitch_22
    const-string v0, "Device Vendor Id"

    return-object v0

    .line 212
    :sswitch_23
    const-string v0, "Set Stream Path"

    return-object v0

    .line 210
    :sswitch_24
    const-string v0, "Request Active Source"

    return-object v0

    .line 208
    :sswitch_25
    const-string v0, "Report Physical Address"

    return-object v0

    .line 206
    :sswitch_26
    const-string v0, "Give Physical Address"

    return-object v0

    .line 204
    :sswitch_27
    const-string v0, "Active Source"

    return-object v0

    .line 202
    :sswitch_28
    const-string v0, "Routing Information"

    return-object v0

    .line 200
    :sswitch_29
    const-string v0, "Routing Change"

    return-object v0

    .line 198
    :sswitch_2a
    const-string v0, "System Audio Mode Status"

    return-object v0

    .line 196
    :sswitch_2b
    const-string v0, "Give System Audio Mode Status"

    return-object v0

    .line 194
    :sswitch_2c
    const-string v0, "Report Audio Status"

    return-object v0

    .line 192
    :sswitch_2d
    const-string v0, "Set System Audio Mode"

    return-object v0

    .line 190
    :sswitch_2e
    const-string v0, "Give Audio Status"

    return-object v0

    .line 188
    :sswitch_2f
    const-string v0, "System Audio Mode Request"

    return-object v0

    .line 186
    :sswitch_30
    const-string v0, "Set Timer Program Title"

    return-object v0

    .line 184
    :sswitch_31
    const-string v0, "Set Osd String"

    return-object v0

    .line 182
    :sswitch_32
    const-string v0, "Set Osd Name"

    return-object v0

    .line 180
    :sswitch_33
    const-string v0, "Give Osd Name"

    return-object v0

    .line 178
    :sswitch_34
    const-string v0, "User Control Release"

    return-object v0

    .line 176
    :sswitch_35
    const-string v0, "User Control Pressed"

    return-object v0

    .line 174
    :sswitch_36
    const-string v0, "Timer Cleared Status"

    return-object v0

    .line 172
    :sswitch_37
    const-string v0, "Deck Control"

    return-object v0

    .line 170
    :sswitch_38
    const-string v0, "Play"

    return-object v0

    .line 168
    :sswitch_39
    const-string v0, "Standby"

    return-object v0

    .line 166
    :sswitch_3a
    const-string v0, "Timer Status"

    return-object v0

    .line 164
    :sswitch_3b
    const-string v0, "Set Analog Timer"

    return-object v0

    .line 162
    :sswitch_3c
    const-string v0, "Clear Analog Timer"

    return-object v0

    .line 160
    :sswitch_3d
    const-string v0, "Set Menu Language"

    return-object v0

    .line 158
    :sswitch_3e
    const-string v0, "Deck Status"

    return-object v0

    .line 156
    :sswitch_3f
    const-string v0, "Give Deck Status"

    return-object v0

    .line 154
    :sswitch_40
    const-string v0, "Record Tv Screen"

    return-object v0

    .line 152
    :sswitch_41
    const-string v0, "Text View On"

    return-object v0

    .line 150
    :sswitch_42
    const-string v0, "Record Off"

    return-object v0

    .line 148
    :sswitch_43
    const-string v0, "Record Status"

    return-object v0

    .line 146
    :sswitch_44
    const-string v0, "Record On"

    return-object v0

    .line 144
    :sswitch_45
    const-string v0, "Give Tuner Device Status"

    return-object v0

    .line 142
    :sswitch_46
    const-string v0, "Tuner Device Status"

    return-object v0

    .line 140
    :sswitch_47
    const-string v0, "Tuner Step Decrement"

    return-object v0

    .line 138
    :sswitch_48
    const-string v0, "Tuner Step Increment"

    return-object v0

    .line 136
    :sswitch_49
    const-string v0, "Image View On"

    return-object v0

    .line 134
    :sswitch_4a
    const-string v0, "Feature Abort"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4a
        0x4 -> :sswitch_49
        0x5 -> :sswitch_48
        0x6 -> :sswitch_47
        0x7 -> :sswitch_46
        0x8 -> :sswitch_45
        0x9 -> :sswitch_44
        0xa -> :sswitch_43
        0xb -> :sswitch_42
        0xd -> :sswitch_41
        0xf -> :sswitch_40
        0x1a -> :sswitch_3f
        0x1b -> :sswitch_3e
        0x32 -> :sswitch_3d
        0x33 -> :sswitch_3c
        0x34 -> :sswitch_3b
        0x35 -> :sswitch_3a
        0x36 -> :sswitch_39
        0x41 -> :sswitch_38
        0x42 -> :sswitch_37
        0x43 -> :sswitch_36
        0x44 -> :sswitch_35
        0x45 -> :sswitch_34
        0x46 -> :sswitch_33
        0x47 -> :sswitch_32
        0x64 -> :sswitch_31
        0x67 -> :sswitch_30
        0x70 -> :sswitch_2f
        0x71 -> :sswitch_2e
        0x72 -> :sswitch_2d
        0x7a -> :sswitch_2c
        0x7d -> :sswitch_2b
        0x7e -> :sswitch_2a
        0x80 -> :sswitch_29
        0x81 -> :sswitch_28
        0x82 -> :sswitch_27
        0x83 -> :sswitch_26
        0x84 -> :sswitch_25
        0x85 -> :sswitch_24
        0x86 -> :sswitch_23
        0x87 -> :sswitch_22
        0x89 -> :sswitch_21
        0x8a -> :sswitch_20
        0x8b -> :sswitch_1f
        0x8c -> :sswitch_1e
        0x8d -> :sswitch_1d
        0x8e -> :sswitch_1c
        0x8f -> :sswitch_1b
        0x90 -> :sswitch_1a
        0x91 -> :sswitch_19
        0x92 -> :sswitch_18
        0x93 -> :sswitch_17
        0x97 -> :sswitch_16
        0x99 -> :sswitch_15
        0x9a -> :sswitch_14
        0x9d -> :sswitch_13
        0x9e -> :sswitch_12
        0x9f -> :sswitch_11
        0xa0 -> :sswitch_10
        0xa1 -> :sswitch_f
        0xa2 -> :sswitch_e
        0xa3 -> :sswitch_d
        0xa4 -> :sswitch_c
        0xa5 -> :sswitch_b
        0xa6 -> :sswitch_a
        0xa7 -> :sswitch_9
        0xa8 -> :sswitch_8
        0xc0 -> :sswitch_7
        0xc1 -> :sswitch_6
        0xc2 -> :sswitch_5
        0xc3 -> :sswitch_4
        0xc4 -> :sswitch_3
        0xc5 -> :sswitch_2
        0xf8 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 56
    .local v0, "that":Lcom/android/server/hdmi/HdmiCecMessage;
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 57
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 58
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 59
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 56
    :goto_0
    return v1

    .line 61
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiCecMessage;
    :cond_1
    return v1
.end method

.method public getDestination()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    return v0
.end method

.method public getParams()[B
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    .line 70
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 66
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .local v0, "s":Ljava/lang/StringBuilder;
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    .line 118
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->opcodeToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mDestination:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    .line 117
    const-string v2, "<%s> %X%X:%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v1, v1

    if-lez v1, :cond_1

    .line 120
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->filterMessageParameters(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, " <Redacted len=%d>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    array-length v2, v1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_1

    aget-byte v6, v1, v5

    .line 124
    .local v6, "data":B
    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, ":%02X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v6    # "data":B
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
