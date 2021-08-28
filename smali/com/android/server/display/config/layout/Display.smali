.class public Lcom/android/server/display/config/layout/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field private address:Ljava/math/BigInteger;

.field private enabled:Ljava/lang/Boolean;

.field private isDefault:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Display;
    .locals 7
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/server/display/config/layout/Display;

    invoke-direct {v0}, Lcom/android/server/display/config/layout/Display;-><init>()V

    .line 61
    .local v0, "instance":Lcom/android/server/display/config/layout/Display;
    const/4 v1, 0x0

    .line 62
    .local v1, "raw":Ljava/lang/String;
    const/4 v2, 0x0

    const-string v3, "enabled"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 65
    .local v3, "value":Z
    invoke-virtual {v0, v3}, Lcom/android/server/display/config/layout/Display;->setEnabled(Z)V

    .line 67
    .end local v3    # "value":Z
    :cond_0
    const-string v3, "isDefault"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-eqz v1, :cond_1

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 70
    .local v2, "value":Z
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setIsDefault(Z)V

    .line 72
    .end local v2    # "value":Z
    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 74
    .local v2, "outerDepth":I
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    move v4, v3

    .local v4, "type":I
    const/4 v5, 0x1

    const/4 v6, 0x3

    if-eq v3, v5, :cond_4

    if-eq v4, v6, :cond_4

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    const/4 v5, 0x2

    if-eq v3, v5, :cond_2

    goto :goto_0

    .line 77
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "tagName":Ljava/lang/String;
    const-string v5, "address"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 81
    .local v5, "value":Ljava/math/BigInteger;
    invoke-virtual {v0, v5}, Lcom/android/server/display/config/layout/Display;->setAddress(Ljava/math/BigInteger;)V

    .line 82
    .end local v5    # "value":Ljava/math/BigInteger;
    goto :goto_1

    .line 83
    :cond_3
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 85
    .end local v3    # "tagName":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 86
    :cond_4
    if-ne v4, v6, :cond_5

    .line 89
    return-object v0

    .line 87
    :cond_5
    new-instance v3, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v5, "Display is not closed"

    invoke-direct {v3, v5}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getAddress()Ljava/math/BigInteger;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getEnabled()Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x0

    return v0

    .line 27
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getIsDefault()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->isDefault:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x0

    return v0

    .line 45
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method hasAddress()Z
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    return v0

    .line 16
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasEnabled()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 34
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method hasIsDefault()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/server/display/config/layout/Display;->isDefault:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    return v0

    .line 52
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setAddress(Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "address"    # Ljava/math/BigInteger;

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    .line 21
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    .line 39
    return-void
.end method

.method public setIsDefault(Z)V
    .locals 1
    .param p1, "isDefault"    # Z

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/config/layout/Display;->isDefault:Ljava/lang/Boolean;

    .line 57
    return-void
.end method
