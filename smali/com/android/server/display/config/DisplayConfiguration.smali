.class public Lcom/android/server/display/config/DisplayConfiguration;
.super Ljava/lang/Object;
.source "DisplayConfiguration.java"


# instance fields
.field private highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

.field private lightSensor:Lcom/android/server/display/config/SensorDetails;

.field private proxSensor:Lcom/android/server/display/config/SensorDetails;

.field private quirks:Lcom/android/server/display/config/DisplayQuirks;

.field private screenBrightnessDefault:Ljava/math/BigDecimal;

.field private screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

.field private screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

.field private screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayConfiguration;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/android/server/display/config/DisplayConfiguration;

    invoke-direct {v0}, Lcom/android/server/display/config/DisplayConfiguration;-><init>()V

    .line 167
    .local v0, "instance":Lcom/android/server/display/config/DisplayConfiguration;
    const/4 v1, 0x0

    .line 168
    .local v1, "raw":Ljava/lang/String;
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 170
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_b

    if-eq v4, v6, :cond_b

    .line 172
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "tagName":Ljava/lang/String;
    const-string/jumbo v5, "screenBrightnessMap"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 175
    invoke-static {p0}, Lcom/android/server/display/config/NitsMap;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/NitsMap;

    move-result-object v5

    .line 176
    .local v5, "value":Lcom/android/server/display/config/NitsMap;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V

    .line 177
    .end local v5    # "value":Lcom/android/server/display/config/NitsMap;
    goto/16 :goto_1

    :cond_1
    const-string/jumbo v5, "screenBrightnessDefault"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 179
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 180
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessDefault(Ljava/math/BigDecimal;)V

    .line 181
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto/16 :goto_1

    :cond_2
    const-string v5, "highBrightnessMode"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 182
    invoke-static {p0}, Lcom/android/server/display/config/HighBrightnessMode;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object v5

    .line 183
    .local v5, "value":Lcom/android/server/display/config/HighBrightnessMode;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V

    .line 184
    .end local v5    # "value":Lcom/android/server/display/config/HighBrightnessMode;
    goto/16 :goto_1

    :cond_3
    const-string/jumbo v5, "quirks"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 185
    invoke-static {p0}, Lcom/android/server/display/config/DisplayQuirks;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/DisplayQuirks;

    move-result-object v5

    .line 186
    .local v5, "value":Lcom/android/server/display/config/DisplayQuirks;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V

    .line 187
    .end local v5    # "value":Lcom/android/server/display/config/DisplayQuirks;
    goto/16 :goto_1

    :cond_4
    const-string/jumbo v5, "screenBrightnessRampFastDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 188
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 190
    .local v5, "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V

    .line 191
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_5
    const-string/jumbo v5, "screenBrightnessRampFastIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 192
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 194
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V

    .line 195
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_6
    const-string/jumbo v5, "screenBrightnessRampSlowDecrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 196
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 198
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V

    .line 199
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_7
    const-string/jumbo v5, "screenBrightnessRampSlowIncrease"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 200
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v5, Ljava/math/BigDecimal;

    invoke-direct {v5, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 202
    .restart local v5    # "value":Ljava/math/BigDecimal;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V

    .line 203
    .end local v5    # "value":Ljava/math/BigDecimal;
    goto :goto_1

    :cond_8
    const-string/jumbo v5, "lightSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 204
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 205
    .local v5, "value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setLightSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 206
    .end local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    goto :goto_1

    :cond_9
    const-string/jumbo v5, "proxSensor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 207
    invoke-static {p0}, Lcom/android/server/display/config/SensorDetails;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;

    move-result-object v5

    .line 208
    .restart local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/DisplayConfiguration;->setProxSensor(Lcom/android/server/display/config/SensorDetails;)V

    .line 209
    .end local v5    # "value":Lcom/android/server/display/config/SensorDetails;
    goto :goto_1

    .line 210
    :cond_a
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 212
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 213
    :cond_b
    if-ne v4, v6, :cond_c

    .line 216
    return-object v0

    .line 214
    :cond_c
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "DisplayConfiguration is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    return-object v0
.end method

.method public final getLightSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public final getProxSensor()Lcom/android/server/display/config/SensorDetails;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    return-object v0
.end method

.method public getQuirks()Lcom/android/server/display/config/DisplayQuirks;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    return-object v0
.end method

.method public final getScreenBrightnessDefault()Ljava/math/BigDecimal;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    return-object v0
.end method

.method hasHighBrightnessMode()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    if-nez v0, :cond_0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasLightSensor()Z
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasProxSensor()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasQuirks()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    if-nez v0, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessDefault()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 36
    const/4 v0, 0x0

    return v0

    .line 38
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessMap()Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    if-nez v0, :cond_0

    .line 21
    const/4 v0, 0x0

    return v0

    .line 23
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastDecrease()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 81
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampFastIncrease()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    return v0

    .line 98
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowDecrease()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasScreenBrightnessRampSlowIncrease()Z
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    if-nez v0, :cond_0

    .line 126
    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setHighBrightnessMode(Lcom/android/server/display/config/HighBrightnessMode;)V
    .locals 0
    .param p1, "highBrightnessMode"    # Lcom/android/server/display/config/HighBrightnessMode;

    .line 57
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->highBrightnessMode:Lcom/android/server/display/config/HighBrightnessMode;

    .line 58
    return-void
.end method

.method public final setLightSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0
    .param p1, "lightSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 147
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->lightSensor:Lcom/android/server/display/config/SensorDetails;

    .line 148
    return-void
.end method

.method public final setProxSensor(Lcom/android/server/display/config/SensorDetails;)V
    .locals 0
    .param p1, "proxSensor"    # Lcom/android/server/display/config/SensorDetails;

    .line 162
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->proxSensor:Lcom/android/server/display/config/SensorDetails;

    .line 163
    return-void
.end method

.method public setQuirks(Lcom/android/server/display/config/DisplayQuirks;)V
    .locals 0
    .param p1, "quirks"    # Lcom/android/server/display/config/DisplayQuirks;

    .line 72
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->quirks:Lcom/android/server/display/config/DisplayQuirks;

    .line 73
    return-void
.end method

.method public final setScreenBrightnessDefault(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessDefault"    # Ljava/math/BigDecimal;

    .line 42
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessDefault:Ljava/math/BigDecimal;

    .line 43
    return-void
.end method

.method public final setScreenBrightnessMap(Lcom/android/server/display/config/NitsMap;)V
    .locals 0
    .param p1, "screenBrightnessMap"    # Lcom/android/server/display/config/NitsMap;

    .line 27
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessMap:Lcom/android/server/display/config/NitsMap;

    .line 28
    return-void
.end method

.method public final setScreenBrightnessRampFastDecrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampFastDecrease"    # Ljava/math/BigDecimal;

    .line 87
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastDecrease:Ljava/math/BigDecimal;

    .line 88
    return-void
.end method

.method public final setScreenBrightnessRampFastIncrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampFastIncrease"    # Ljava/math/BigDecimal;

    .line 102
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampFastIncrease:Ljava/math/BigDecimal;

    .line 103
    return-void
.end method

.method public final setScreenBrightnessRampSlowDecrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowDecrease"    # Ljava/math/BigDecimal;

    .line 117
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowDecrease:Ljava/math/BigDecimal;

    .line 118
    return-void
.end method

.method public final setScreenBrightnessRampSlowIncrease(Ljava/math/BigDecimal;)V
    .locals 0
    .param p1, "screenBrightnessRampSlowIncrease"    # Ljava/math/BigDecimal;

    .line 132
    iput-object p1, p0, Lcom/android/server/display/config/DisplayConfiguration;->screenBrightnessRampSlowIncrease:Ljava/math/BigDecimal;

    .line 133
    return-void
.end method
