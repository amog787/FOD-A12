.class public Lcom/android/server/display/config/HighBrightnessMode;
.super Ljava/lang/Object;
.source "HighBrightnessMode.java"


# instance fields
.field private allowInLowPowerMode_all:Ljava/lang/Boolean;

.field private enabled:Ljava/lang/Boolean;

.field private minimumLux_all:Ljava/math/BigDecimal;

.field private refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

.field private thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

.field private timing_all:Lcom/android/server/display/config/HbmTiming;

.field private transitionPoint_all:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/android/server/display/config/HighBrightnessMode;

    invoke-direct {v0}, Lcom/android/server/display/config/HighBrightnessMode;-><init>()V

    .line 125
    .local v0, "instance":Lcom/android/server/display/config/HighBrightnessMode;
    const/4 v1, 0x0

    .line 126
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_0

    .line 128
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 129
    .local v2, "value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/HighBrightnessMode;->setEnabled(Z)V

    .line 131
    .end local v2    # "value":Z
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 133
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_8

    if-eq v4, v6, :cond_8

    .line 135
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "transitionPoint"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 138
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 139
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 140
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTransitionPoint_all(Ljava/math/BigDecimal;)V

    .line 141
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_2
    const-string/jumbo v5, "minimumLux"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 143
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 144
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setMinimumLux_all(Ljava/math/BigDecimal;)V

    .line 145
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_3
    const-string/jumbo v5, "timing"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 146
    invoke-static {p0}, Lcom/android/server/display/config/HbmTiming;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HbmTiming;

    move-result-object v5

    .line 147
    .local v5, "value":Lcom/android/server/display/config/HbmTiming;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setTiming_all(Lcom/android/server/display/config/HbmTiming;)V

    .line 148
    .end local v5    # "value":Lcom/android/server/display/config/HbmTiming;
    goto :goto_1

    :cond_4
    const-string/jumbo v5, "refreshRate"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 149
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v5

    .line 150
    .local v5, "value":Lcom/android/server/display/config/RefreshRateRange;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V

    .line 151
    .end local v5    # "value":Lcom/android/server/display/config/RefreshRateRange;
    goto :goto_1

    :cond_5
    const-string/jumbo v5, "thermalStatusLimit"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 152
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 153
    invoke-static {v1}, Lcom/android/server/display/config/ThermalStatus;->fromString(Ljava/lang/String;)Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 154
    .local v5, "value":Lcom/android/server/display/config/ThermalStatus;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V

    .line 155
    .end local v5    # "value":Lcom/android/server/display/config/ThermalStatus;
    goto :goto_1

    :cond_6
    const-string v5, "allowInLowPowerMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 156
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 158
    .local v5, "value":Z
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/HighBrightnessMode;->setAllowInLowPowerMode_all(Z)V

    .line 159
    .end local v5    # "value":Z
    goto :goto_1

    .line 160
    :cond_7
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 162
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 163
    :cond_8
    if-ne v4, v6, :cond_9

    .line 166
    return-object v0

    .line 164
    :cond_9
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "HighBrightnessMode is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final getAllowInLowPowerMode_all()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return v0

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return v0

    .line 109
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final getMinimumLux_all()Ljava/math/BigDecimal;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    return-object v0
.end method

.method public final getThermalStatusLimit_all()Lcom/android/server/display/config/ThermalStatus;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    return-object v0
.end method

.method public getTiming_all()Lcom/android/server/display/config/HbmTiming;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    return-object v0
.end method

.method public final getTransitionPoint_all()Ljava/math/BigDecimal;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasAllowInLowPowerMode_all()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEnabled()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 114
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasMinimumLux_all()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasRefreshRate_all()Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasThermalStatusLimit_all()Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTiming_all()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasTransitionPoint_all()Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    return v0

    .line 20
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setAllowInLowPowerMode_all(Z)V
    .locals 1
    .param p1, "allowInLowPowerMode_all"    # Z

    .line 102
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->allowInLowPowerMode_all:Ljava/lang/Boolean;

    .line 103
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 120
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/HighBrightnessMode;->enabled:Ljava/lang/Boolean;

    .line 121
    return-void
.end method

.method public final setMinimumLux_all(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "minimumLux_all"    # Ljava/math/BigDecimal;

    .line 39
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->minimumLux_all:Ljava/math/BigDecimal;

    .line 40
    return-void
.end method

.method public final setRefreshRate_all(Lcom/android/server/display/config/RefreshRateRange;)V
    .locals 0
    .param p1, "refreshRate_all"    # Lcom/android/server/display/config/RefreshRateRange;

    .line 69
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->refreshRate_all:Lcom/android/server/display/config/RefreshRateRange;

    .line 70
    return-void
.end method

.method public final setThermalStatusLimit_all(Lcom/android/server/display/config/ThermalStatus;)V
    .locals 0
    .param p1, "thermalStatusLimit_all"    # Lcom/android/server/display/config/ThermalStatus;

    .line 84
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->thermalStatusLimit_all:Lcom/android/server/display/config/ThermalStatus;

    .line 85
    return-void
.end method

.method public setTiming_all(Lcom/android/server/display/config/HbmTiming;)V
    .locals 0
    .param p1, "timing_all"    # Lcom/android/server/display/config/HbmTiming;

    .line 54
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->timing_all:Lcom/android/server/display/config/HbmTiming;

    .line 55
    return-void
.end method

.method public final setTransitionPoint_all(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "transitionPoint_all"    # Ljava/math/BigDecimal;

    .line 24
    iput-object p1, p0, Lcom/android/server/display/config/HighBrightnessMode;->transitionPoint_all:Ljava/math/BigDecimal;

    .line 25
    return-void
.end method
