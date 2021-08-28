.class Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "TimeZoneDetectorShellCommand.java"


# instance fields
.field private final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .locals 0
    .param p1, "timeZoneDetectorService"    # Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 50
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 52
    return-void
.end method

.method private runIsAutoDetectionEnabled()I
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 87
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    .line 88
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    move-result v2

    .line 91
    .local v2, "enabled":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 92
    const/4 v3, 0x0

    return v3
.end method

.method private runIsGeoDetectionEnabled()I
    .locals 4

    .line 110
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 111
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, -0x2

    .line 112
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    move-result-object v2

    .line 113
    invoke-virtual {v2}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    move-result v2

    .line 115
    .local v2, "enabled":Z
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    const/4 v3, 0x0

    return v3
.end method

.method private runIsGeoDetectionSupported()I
    .locals 3

    .line 103
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 104
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isGeoTimeZoneDetectionSupported()Z

    move-result v1

    .line 105
    .local v1, "enabled":Z
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 106
    const/4 v2, 0x0

    return v2
.end method

.method private runIsTelephonyDetectionSupported()I
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 97
    .local v0, "pw":Ljava/io/PrintWriter;
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->isTelephonyTimeZoneDetectionSupported()Z

    move-result v1

    .line 98
    .local v1, "enabled":Z
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 99
    const/4 v2, 0x0

    return v2
.end method

.method private runSetAutoDetectionEnabled()I
    .locals 4

    .line 120
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 121
    .local v0, "enabled":Z
    const/4 v1, -0x2

    .line 122
    .local v1, "userId":I
    new-instance v2, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 123
    invoke-virtual {v2, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 125
    .local v2, "configuration":Landroid/app/time/TimeZoneConfiguration;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private runSetGeoDetectionEnabled()I
    .locals 4

    .line 129
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 130
    .local v0, "enabled":Z
    const/4 v1, -0x2

    .line 131
    .local v1, "userId":I
    new-instance v2, Landroid/app/time/TimeZoneConfiguration$Builder;

    invoke-direct {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 132
    invoke-virtual {v2, v0}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    move-result-object v2

    .line 134
    .local v2, "configuration":Landroid/app/time/TimeZoneConfiguration;
    iget-object v3, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    return v3
.end method

.method private runSuggestGeolocationTimeZone()I
    .locals 3

    .line 138
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 140
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 138
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestManualTimeZone()I
    .locals 3

    .line 144
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 146
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 144
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestTelephonyTimeZone()I
    .locals 3

    .line 150
    new-instance v0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;)V

    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 152
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V

    .line 150
    invoke-direct {p0, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    move-result v0

    return v0
.end method

.method private runSuggestTimeZone(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TT;>;)I"
        }
    .end annotation

    .line 156
    .local p1, "suggestionParser":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p2, "invoker":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TT;>;"
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 158
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    .line 159
    .local v2, "suggestion":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 160
    const-string v3, "Error: suggestion not specified"

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    return v1

    .line 163
    :cond_0
    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Suggestion "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " injected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    const/4 v1, 0x0

    return v1

    .line 166
    .end local v2    # "suggestion":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v2

    .line 167
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return v1
.end method


# virtual methods
.method public synthetic lambda$runSuggestGeolocationTimeZone$0$TimeZoneDetectorShellCommand()Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;
    .locals 1

    .line 139
    invoke-static {p0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$runSuggestManualTimeZone$1$TimeZoneDetectorShellCommand()Landroid/app/timezonedetector/ManualTimeZoneSuggestion;
    .locals 1

    .line 145
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/ManualTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$runSuggestTelephonyTimeZone$2$TimeZoneDetectorShellCommand()Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;
    .locals 1

    .line 151
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;

    move-result-object v0

    return-object v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 2
    .param p1, "cmd"    # Ljava/lang/String;

    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 60
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "set_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v1, "is_geo_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "suggest_geo_location_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "suggest_telephony_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const-string v1, "is_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "set_geo_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "is_auto_detection_enabled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_7
    const-string v1, "suggest_manual_time_zone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "is_telephony_detection_supported"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 78
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestTelephonyTimeZone()I

    move-result v0

    return v0

    .line 76
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestManualTimeZone()I

    move-result v0

    return v0

    .line 74
    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSuggestGeolocationTimeZone()I

    move-result v0

    return v0

    .line 72
    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetGeoDetectionEnabled()I

    move-result v0

    return v0

    .line 70
    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionEnabled()I

    move-result v0

    return v0

    .line 68
    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsGeoDetectionSupported()I

    move-result v0

    return v0

    .line 66
    :pswitch_6
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsTelephonyDetectionSupported()I

    move-result v0

    return v0

    .line 64
    :pswitch_7
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSetAutoDetectionEnabled()I

    move-result v0

    return v0

    .line 62
    :pswitch_8
    invoke-direct {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runIsAutoDetectionEnabled()I

    move-result v0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71c6eb88 -> :sswitch_8
        -0x5f15f000 -> :sswitch_7
        -0x4e7e5c54 -> :sswitch_6
        -0x26840a04 -> :sswitch_5
        0x1d9e00c4 -> :sswitch_4
        0x2390c53c -> :sswitch_3
        0x26a0e49d -> :sswitch_2
        0x5298f571 -> :sswitch_1
        0x71625574 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public onHelp()V
    .locals 7

    .line 174
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 175
    .local v0, "pw":Ljava/io/PrintWriter;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "time_zone_detector"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Time Zone Detector (%s) commands:\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 176
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "  help\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 177
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Print this help text.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 178
    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "is_auto_detection_enabled"

    aput-object v3, v2, v4

    const-string v3, "  %s\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 179
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Prints true/false according to the automatic time zone detection setting\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 180
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "set_auto_detection_enabled"

    aput-object v5, v2, v4

    const-string v5, "  %s true|false\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 181
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Sets the automatic time zone detection setting.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 182
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_telephony_detection_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 183
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 185
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_geo_detection_supported"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 186
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 188
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "is_geo_detection_enabled"

    aput-object v6, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 189
    new-array v2, v4, [Ljava/lang/Object;

    const-string v6, "    Prints true/false according to the geolocation time zone detection setting.\n"

    invoke-virtual {v0, v6, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 191
    new-array v2, v1, [Ljava/lang/Object;

    const-string v6, "set_geo_detection_enabled"

    aput-object v6, v2, v4

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 192
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Sets the geolocation time zone detection enabled setting.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 193
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "suggest_geo_location_time_zone"

    aput-object v5, v2, v4

    const-string v5, "  %s <geolocation suggestion opts>\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 195
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "suggest_manual_time_zone"

    aput-object v5, v2, v4

    const-string v5, "  %s <manual suggestion opts>\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 197
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "suggest_telephony_time_zone"

    aput-object v5, v2, v4

    const-string v5, "  %s <telephony suggestion opts>\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 199
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 200
    invoke-static {v0}, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 202
    invoke-static {v0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 203
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 204
    invoke-static {v0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 205
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 206
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "system_time"

    aput-object v5, v2, v4

    const-string v5, "This service is also affected by the following device_config flags in the %s namespace:\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 208
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_feature_supported"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 209
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Set this to false to disable the feature.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 212
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_setting_enabled_default"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 213
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 215
    new-array v2, v4, [Ljava/lang/Object;

    const-string v5, "    The default is when unset is false.\n"

    invoke-virtual {v0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 216
    new-array v2, v1, [Ljava/lang/Object;

    const-string v5, "location_time_zone_detection_setting_enabled_override"

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 217
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 219
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 220
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 222
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 223
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    invoke-virtual {v0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 224
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 225
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "location_time_zone_manager"

    aput-object v2, v1, v4

    const-string v2, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 228
    return-void
.end method
