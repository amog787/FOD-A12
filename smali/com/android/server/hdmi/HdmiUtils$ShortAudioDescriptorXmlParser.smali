.class public Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;
.super Ljava/lang/Object;
.source "HdmiUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShortAudioDescriptorXmlParser"
.end annotation


# static fields
.field private static final NS:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 570
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static formatNameToNum(Ljava/lang/String;)I
    .locals 18
    .param p0, "codecAttriValue"    # Ljava/lang/String;

    .line 678
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xf

    const/16 v3, 0xe

    const/16 v4, 0xd

    const/16 v5, 0xc

    const/16 v6, 0xb

    const/16 v7, 0xa

    const/16 v8, 0x9

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v1, "AUDIO_FORMAT_TRUEHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v5

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "AUDIO_FORMAT_DD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v15

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "AUDIO_FORMAT_NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v17

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "AUDIO_FORMAT_LPCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move/from16 v1, v16

    goto/16 :goto_1

    :sswitch_4
    const-string v1, "AUDIO_FORMAT_MP3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v13

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "AUDIO_FORMAT_MAX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto/16 :goto_1

    :sswitch_6
    const-string v1, "AUDIO_FORMAT_DTS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    goto/16 :goto_1

    :sswitch_7
    const-string v1, "AUDIO_FORMAT_DST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :sswitch_8
    const-string v1, "AUDIO_FORMAT_DDP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v7

    goto :goto_1

    :sswitch_9
    const-string v1, "AUDIO_FORMAT_AAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v11

    goto :goto_1

    :sswitch_a
    const-string v1, "AUDIO_FORMAT_ONEBITAUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v8

    goto :goto_1

    :sswitch_b
    const-string v1, "AUDIO_FORMAT_MPEG2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v12

    goto :goto_1

    :sswitch_c
    const-string v1, "AUDIO_FORMAT_MPEG1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v14

    goto :goto_1

    :sswitch_d
    const-string v1, "AUDIO_FORMAT_DTSHD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v6

    goto :goto_1

    :sswitch_e
    const-string v1, "AUDIO_FORMAT_ATRAC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v9

    goto :goto_1

    :sswitch_f
    const-string v1, "AUDIO_FORMAT_WMAPRO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 712
    return v17

    .line 710
    :pswitch_0
    return v2

    .line 708
    :pswitch_1
    return v3

    .line 706
    :pswitch_2
    return v4

    .line 704
    :pswitch_3
    return v5

    .line 702
    :pswitch_4
    return v6

    .line 700
    :pswitch_5
    return v7

    .line 698
    :pswitch_6
    return v8

    .line 696
    :pswitch_7
    return v9

    .line 694
    :pswitch_8
    return v10

    .line 692
    :pswitch_9
    return v11

    .line 690
    :pswitch_a
    return v12

    .line 688
    :pswitch_b
    return v13

    .line 686
    :pswitch_c
    return v14

    .line 684
    :pswitch_d
    return v15

    .line 682
    :pswitch_e
    return v16

    .line 680
    :pswitch_f
    return v17

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f0fd0ff -> :sswitch_f
        -0x475c657e -> :sswitch_e
        -0x47321a60 -> :sswitch_d
        -0x46b54d13 -> :sswitch_c
        -0x46b54d12 -> :sswitch_b
        -0x156509f0 -> :sswitch_a
        -0x10db57fc -> :sswitch_9
        -0x10db4c4f -> :sswitch_8
        -0x10db4a7a -> :sswitch_7
        -0x10db4a5c -> :sswitch_6
        -0x10db2adb -> :sswitch_5
        -0x10db292f -> :sswitch_4
        -0xa8a6ed3 -> :sswitch_3
        -0xa898889 -> :sswitch_2
        0x7b6dc7f -> :sswitch_1
        0x7c210789 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static parse(Ljava/io/InputStream;)Ljava/util/List;
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object v0

    .line 576
    .local v0, "parser":Landroid/util/TypedXmlPullParser;
    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 577
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    .locals 10
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .param p1, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .local v0, "codecSads":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$CodecSad;>;"
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "device"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 634
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eq v1, v3, :cond_4

    .line 635
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 636
    goto :goto_0

    .line 638
    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 641
    .local v1, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "supportedFormat"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 642
    const-string v6, "format"

    invoke-interface {p0, v4, v6}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 643
    .local v6, "codecAttriValue":Ljava/lang/String;
    const-string v7, "descriptor"

    invoke-interface {p0, v4, v7}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 644
    .local v4, "sadAttriValue":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 645
    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->formatNameToNum(Ljava/lang/String;)I

    move-result v7

    .line 646
    .local v7, "format":I
    :goto_1
    invoke-static {v4}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readSad(Ljava/lang/String;)[B

    move-result-object v8

    .line 647
    .local v8, "descriptor":[B
    if-eqz v7, :cond_2

    if-eqz v8, :cond_2

    .line 648
    new-instance v9, Lcom/android/server/hdmi/HdmiUtils$CodecSad;

    invoke-direct {v9, v7, v8}, Lcom/android/server/hdmi/HdmiUtils$CodecSad;-><init>(I[B)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_2
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextTag()I

    .line 651
    sget-object v9, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    invoke-interface {p0, v3, v9, v5}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 652
    .end local v4    # "sadAttriValue":Ljava/lang/String;
    .end local v6    # "codecAttriValue":Ljava/lang/String;
    goto :goto_2

    .line 653
    .end local v7    # "format":I
    .end local v8    # "descriptor":[B
    :cond_3
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    .line 655
    .end local v1    # "tagName":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 656
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_5

    .line 657
    return-object v4

    .line 659
    :cond_5
    new-instance v1, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    invoke-direct {v1, p1, v0}, Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1
.end method

.method private static readDevices(Landroid/util/TypedXmlPullParser;)Ljava/util/List;
    .locals 5
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 602
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;>;"
    sget-object v1, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->NS:Ljava/lang/String;

    const/4 v2, 0x2

    const-string v3, "config"

    invoke-interface {p0, v2, v1, v3}, Landroid/util/TypedXmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 603
    :goto_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    .line 604
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 605
    goto :goto_0

    .line 607
    :cond_0
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "name":Ljava/lang/String;
    const-string v3, "device"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 610
    const/4 v3, 0x0

    const-string/jumbo v4, "type"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 611
    .local v3, "deviceType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 612
    .local v4, "config":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    if-eqz v3, :cond_1

    .line 613
    invoke-static {p0, v3}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->readDeviceConfig(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;

    move-result-object v4

    .line 615
    :cond_1
    if-eqz v4, :cond_2

    .line 616
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    .end local v3    # "deviceType":Ljava/lang/String;
    .end local v4    # "config":Lcom/android/server/hdmi/HdmiUtils$DeviceConfig;
    :cond_2
    goto :goto_1

    .line 619
    :cond_3
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiUtils$ShortAudioDescriptorXmlParser;->skip(Landroid/util/TypedXmlPullParser;)V

    .line 621
    .end local v1    # "name":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 622
    :cond_4
    return-object v0
.end method

.method private static readSad(Ljava/lang/String;)[B
    .locals 4
    .param p0, "sad"    # Ljava/lang/String;

    .line 665
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 668
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 669
    .local v1, "sadBytes":[B
    array-length v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SAD byte array length is not 3. Length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HdmiUtils"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    return-object v0

    .line 673
    :cond_1
    return-object v1

    .line 666
    .end local v1    # "sadBytes":[B
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static skip(Landroid/util/TypedXmlPullParser;)V
    .locals 2
    .param p0, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 582
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 585
    const/4 v0, 0x1

    .line 586
    .local v0, "depth":I
    :goto_0
    if-eqz v0, :cond_0

    .line 587
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 589
    :pswitch_0
    add-int/lit8 v0, v0, -0x1

    .line 590
    goto :goto_1

    .line 592
    :pswitch_1
    add-int/lit8 v0, v0, 0x1

    .line 593
    :goto_1
    goto :goto_0

    .line 596
    :cond_0
    return-void

    .line 583
    .end local v0    # "depth":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
