.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorManagerShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    }
.end annotation


# static fields
.field public static final SHELL_PACKAGE_NAME:Ljava/lang/String; = "com.android.shell"


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/vibrator/VibratorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;

    .line 1480
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 1481
    iput-object p2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mToken:Landroid/os/IBinder;

    .line 1482
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;Lcom/android/server/vibrator/VibratorManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vibrator/VibratorManagerService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Lcom/android/server/vibrator/VibratorManagerService$1;

    .line 1451
    invoke-direct {p0, p1, p2}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;-><init>(Lcom/android/server/vibrator/VibratorManagerService;Landroid/os/IBinder;)V

    return-void
.end method

.method private addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 7
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1588
    const/4 v0, 0x0

    .line 1589
    .local v0, "hasAmplitude":Z
    const/4 v1, 0x0

    .line 1591
    .local v1, "delay":I
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1593
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1594
    const-string v2, "-a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1595
    const/4 v0, 0x1

    goto :goto_0

    .line 1596
    :cond_1
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1597
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1601
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1602
    .local v4, "duration":J
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 1603
    :cond_3
    const/4 v2, -0x1

    :goto_1
    nop

    .line 1604
    .local v2, "amplitude":I
    invoke-static {v4, v5, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v6

    invoke-virtual {p1, v6, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect$Composition;

    .line 1605
    return-void
.end method

.method private addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 5
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1669
    const/4 v0, 0x0

    .line 1670
    .local v0, "shouldFallback":Z
    const/4 v1, 0x0

    .line 1672
    .local v1, "delay":I
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1674
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "nextOption":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 1675
    const-string v2, "-b"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1676
    const/4 v0, 0x1

    goto :goto_0

    .line 1677
    :cond_1
    const-string v2, "-w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1678
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 1682
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1683
    .local v2, "effectId":I
    invoke-static {v2, v0}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v4

    invoke-virtual {p1, v4, v1}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect$Composition;

    .line 1684
    return-void
.end method

.method private addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 4
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1689
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "nextArg":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, "delay":I
    const-string v2, "-w"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1693
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1694
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    .line 1697
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3, v0}, Landroid/os/VibrationEffect$Composition;->addPrimitive(IFI)Landroid/os/VibrationEffect$Composition;

    .line 1698
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1702
    nop

    .line 1703
    .end local v0    # "delay":I
    goto :goto_0

    .line 1699
    .restart local v0    # "delay":I
    :catch_0
    move-exception v2

    .line 1704
    .end local v0    # "delay":I
    :cond_1
    return-void
.end method

.method private addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V
    .locals 16
    .param p1, "composition"    # Landroid/os/VibrationEffect$Composition;

    .line 1608
    const/4 v0, 0x0

    .line 1609
    .local v0, "hasAmplitudes":Z
    const/4 v1, 0x0

    .line 1610
    .local v1, "hasFrequencies":Z
    const/4 v2, 0x0

    .line 1611
    .local v2, "isContinuous":Z
    const/4 v3, -0x1

    .line 1612
    .local v3, "repeat":I
    const/4 v4, 0x0

    .line 1614
    .local v4, "delay":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    .line 1616
    .end local v0    # "hasAmplitudes":Z
    .local v1, "hasAmplitudes":Z
    .local v2, "hasFrequencies":Z
    .local v3, "isContinuous":Z
    .local v4, "repeat":I
    .local v5, "delay":I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .local v6, "nextOption":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1617
    const-string v0, "-a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1618
    const/4 v1, 0x1

    goto :goto_0

    .line 1619
    :cond_1
    const-string v0, "-r"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 1621
    :cond_2
    const-string v0, "-w"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    .line 1623
    :cond_3
    const-string v0, "-f"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1624
    const/4 v2, 0x1

    goto :goto_0

    .line 1625
    :cond_4
    const-string v0, "-c"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1626
    const/4 v3, 0x1

    goto :goto_0

    .line 1629
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 1630
    .local v7, "durations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 1631
    .local v8, "amplitudes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 1633
    .local v9, "frequencies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v0, 0x0

    move v10, v0

    .line 1635
    .local v10, "nextAmplitude":F
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .local v11, "nextArg":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 1637
    :try_start_0
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1642
    nop

    .line 1643
    if-eqz v1, :cond_6

    .line 1644
    nop

    .line 1645
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v12, 0x437f0000    # 255.0f

    div-float/2addr v0, v12

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 1644
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1647
    :cond_6
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1648
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, v10

    move v10, v0

    .line 1650
    :goto_2
    if-eqz v2, :cond_7

    .line 1651
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1653
    :cond_7
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1639
    :catch_0
    move-exception v0

    .line 1657
    :cond_8
    invoke-static {}, Landroid/os/VibrationEffect;->startWaveform()Landroid/os/VibrationEffect$WaveformBuilder;

    move-result-object v0

    .line 1658
    .local v0, "waveform":Landroid/os/VibrationEffect$WaveformBuilder;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_a

    .line 1659
    if-eqz v3, :cond_9

    .line 1660
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/VibrationEffect$WaveformBuilder;->addRamp(FFI)Landroid/os/VibrationEffect$WaveformBuilder;

    goto :goto_4

    .line 1662
    :cond_9
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Float;

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0, v13, v14, v15}, Landroid/os/VibrationEffect$WaveformBuilder;->addStep(FFI)Landroid/os/VibrationEffect$WaveformBuilder;

    .line 1658
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1665
    .end local v12    # "i":I
    :cond_a
    invoke-virtual {v0, v4}, Landroid/os/VibrationEffect$WaveformBuilder;->build(I)Landroid/os/VibrationEffect;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-virtual {v13, v12, v5}, Landroid/os/VibrationEffect$Composition;->addEffect(Landroid/os/VibrationEffect;I)Landroid/os/VibrationEffect$Composition;

    .line 1666
    return-void
.end method

.method private createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .locals 3
    .param p1, "commonOptions"    # Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    .line 1708
    iget-boolean v0, p1, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 1709
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/4 v2, 0x1

    .line 1710
    invoke-virtual {v1, v0, v2}, Landroid/os/VibrationAttributes$Builder;->setFlags(II)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    const/16 v2, 0x12

    .line 1712
    invoke-virtual {v1, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 1713
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 1709
    return-object v1
.end method

.method private nextEffect()Landroid/os/VibrationEffect;
    .locals 3

    .line 1566
    invoke-static {}, Landroid/os/VibrationEffect;->startComposition()Landroid/os/VibrationEffect$Composition;

    move-result-object v0

    .line 1569
    .local v0, "composition":Landroid/os/VibrationEffect$Composition;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nextArg":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 1570
    const-string v1, "oneshot"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1571
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addOneShotToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 1572
    :cond_0
    const-string v1, "waveform"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1573
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addWaveformToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 1574
    :cond_1
    const-string v1, "prebaked"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1575
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrebakedToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 1576
    :cond_2
    const-string v1, "primitives"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->addPrimitivesToComposition(Landroid/os/VibrationEffect$Composition;)V

    goto :goto_0

    .line 1584
    :cond_3
    invoke-virtual {v0}, Landroid/os/VibrationEffect$Composition;->compose()Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private runCancel()I
    .locals 3

    .line 1561
    iget-object v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mToken:Landroid/os/IBinder;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/vibrator/VibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V

    .line 1562
    const/4 v0, 0x0

    return v0
.end method

.method private runListVibrators()I
    .locals 6

    .line 1510
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 1511
    .local v0, "pw":Ljava/io/PrintWriter;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$2300(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1512
    const-string v1, "No vibrator found"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1514
    :cond_0
    iget-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {v1}, Lcom/android/server/vibrator/VibratorManagerService;->access$2300(Lcom/android/server/vibrator/VibratorManagerService;)[I

    move-result-object v1

    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, v1, v4

    .line 1515
    .local v5, "id":I
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 1514
    .end local v5    # "id":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1518
    :cond_1
    :goto_1
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1519
    nop

    .line 1520
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1519
    :cond_2
    return v2

    .line 1510
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method

.method private runMono()I
    .locals 10

    .line 1524
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 1525
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-static {v1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    .line 1526
    .local v1, "effect":Landroid/os/CombinedVibration;
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v9

    .line 1527
    .local v9, "attrs":Landroid/os/VibrationAttributes;
    iget-object v2, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iget-object v7, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mToken:Landroid/os/IBinder;

    const-string v4, "com.android.shell"

    move-object v5, v1

    move-object v6, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/vibrator/VibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1529
    const/4 v2, 0x0

    return v2
.end method

.method private runSequential()I
    .locals 11

    .line 1547
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 1549
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startSequential()Landroid/os/CombinedVibration$SequentialCombination;

    move-result-object v1

    .line 1550
    .local v1, "combination":Landroid/os/CombinedVibration$SequentialCombination;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1551
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1552
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$SequentialCombination;->addNext(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$SequentialCombination;

    .line 1553
    .end local v2    # "vibratorId":I
    goto :goto_0

    .line 1554
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 1555
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/CombinedVibration$SequentialCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mToken:Landroid/os/IBinder;

    const-string v6, "com.android.shell"

    move-object v8, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1557
    const/4 v3, 0x0

    return v3
.end method

.method private runStereo()I
    .locals 11

    .line 1533
    new-instance v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;

    invoke-direct {v0, p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;-><init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V

    .line 1535
    .local v0, "commonOptions":Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
    invoke-static {}, Landroid/os/CombinedVibration;->startParallel()Landroid/os/CombinedVibration$ParallelCombination;

    move-result-object v1

    .line 1536
    .local v1, "combination":Landroid/os/CombinedVibration$ParallelCombination;
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-v"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1538
    .local v2, "vibratorId":I
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->nextEffect()Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/CombinedVibration$ParallelCombination;->addVibrator(ILandroid/os/VibrationEffect;)Landroid/os/CombinedVibration$ParallelCombination;

    .line 1539
    .end local v2    # "vibratorId":I
    goto :goto_0

    .line 1540
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->createVibrationAttributes(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v2

    .line 1541
    .local v2, "attrs":Landroid/os/VibrationAttributes;
    iget-object v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->this$0:Lcom/android/server/vibrator/VibratorManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v1}, Landroid/os/CombinedVibration$ParallelCombination;->combine()Landroid/os/CombinedVibration;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->mToken:Landroid/os/IBinder;

    const-string v6, "com.android.shell"

    move-object v8, v2

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/vibrator/VibratorManagerService;->vibrate(ILjava/lang/String;Landroid/os/CombinedVibration;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1543
    const/4 v3, 0x0

    return v3
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommand "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1488
    :try_start_0
    const-string v0, "list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1489
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runListVibrators()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1489
    return v0

    .line 1491
    :cond_0
    :try_start_1
    const-string v0, "synced"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1492
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runMono()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1492
    return v0

    .line 1494
    :cond_1
    :try_start_2
    const-string v0, "combined"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1495
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runStereo()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1495
    return v0

    .line 1497
    :cond_2
    :try_start_3
    const-string v0, "sequential"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1498
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runSequential()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1498
    return v0

    .line 1500
    :cond_3
    :try_start_4
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1501
    invoke-direct {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->runCancel()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1501
    return v0

    .line 1503
    :cond_4
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1505
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1503
    return v0

    .line 1505
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1506
    throw v0
.end method

.method public onHelp()V
    .locals 7

    .line 1718
    const-string v0, "    (Do Not Disturb) mode; touch feedback strength user setting "

    const-string v1, "    will be used to scale amplitude."

    const-string v2, "    wait time in milliseconds."

    const-string v3, "    If -w is provided, the effect will be played after the specified"

    const-string v4, ""

    invoke-virtual {p0}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v5

    .line 1719
    .local v5, "pw":Ljava/io/PrintWriter;
    :try_start_0
    const-string v6, "Vibrator Manager commands:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1720
    const-string v6, "  help"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1721
    const-string v6, "    Prints this help text."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1723
    const-string v6, "  list"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1724
    const-string v6, "    Prints the id of device vibrators. This does not include any "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1725
    const-string v6, "    connected input device."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1726
    const-string v6, "  synced [options] <effect>..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1727
    const-string v6, "    Vibrates effect on all vibrators in sync."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1728
    const-string v6, "  combined [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    const-string v6, "    Vibrates different effects on each vibrator in sync."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1730
    const-string v6, "  sequential [options] (-v <vibrator-id> <effect>...)..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    const-string v6, "    Vibrates different effects on each vibrator in sequence."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1732
    const-string v6, "  cancel"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1733
    const-string v6, "    Cancels any active vibration"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1734
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    const-string v6, "Effect commands:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1736
    const-string v6, "  oneshot [-w delay] [-a] <duration> [<amplitude>]"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1737
    const-string v6, "    Vibrates for duration milliseconds; ignored when device is on "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1738
    const-string v6, "    DND (Do Not Disturb) mode; touch feedback strength user setting "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1740
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1742
    const-string v6, "    If -a is provided, the command accepts a second argument for "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    const-string v6, "    amplitude, in a scale of 1-255."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    const-string v6, "    waveform [-w delay] [-r index] [-a] [-f] [-c] "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1745
    const-string v6, "(<duration> [<amplitude>] [<frequency>])..."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1746
    const-string v6, "    Vibrates for durations and amplitudes in list; ignored when "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1747
    const-string v6, "    device is on DND (Do Not Disturb) mode; touch feedback strength "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1748
    const-string v6, "    user setting will be used to scale amplitude."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1749
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1750
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    const-string v6, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1752
    const-string v6, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1753
    const-string v6, "    If -a is provided, the command expects amplitude to follow each"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1754
    const-string v6, "    duration; otherwise, it accepts durations only and alternates"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1755
    const-string v6, "    off/on"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1756
    const-string v6, "    If -f is provided, the command expects frequency to follow each"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1757
    const-string v6, "    amplitude or duration; otherwise, it uses resonant frequency"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1758
    const-string v6, "    If -c is provided, the waveform is continuous and will ramp"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1759
    const-string v6, "    between values; otherwise each entry is a fixed step."

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    const-string v6, "    Duration is in milliseconds; amplitude is a scale of 1-255;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1761
    const-string v6, "    frequency is a relative value around resonant frequency 0;"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1762
    const-string v6, "  prebaked [-w delay] [-b] <effect-id>"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1763
    const-string v6, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1764
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v5, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1768
    const-string v1, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    const-string v1, "    the device doesn\'t support the given effect-id."

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1770
    const-string v1, "  primitives ([-w delay] <primitive-id>)..."

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1771
    const-string v1, "    Vibrates with a composed effect; ignored when device is on DND "

    invoke-virtual {v5, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    const-string v0, "    will be used to scale primitive intensities."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    const-string v0, "    If -w is provided, the next primitive will be played after the "

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1775
    const-string v0, "    specified wait time in milliseconds."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1777
    const-string v0, "Common Options:"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1778
    const-string v0, "  -f"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1779
    const-string v0, "    Force. Ignore Do Not Disturb setting."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1780
    const-string v0, "  -d <description>"

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    const-string v0, "    Add description to the vibration."

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1783
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 1784
    .end local v5    # "pw":Ljava/io/PrintWriter;
    :cond_0
    return-void

    .line 1718
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception v0

    if-eqz v5, :cond_1

    :try_start_1
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v0
.end method
