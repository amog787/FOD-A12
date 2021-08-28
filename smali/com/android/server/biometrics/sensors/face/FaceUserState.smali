.class public Lcom/android/server/biometrics/sensors/face/FaceUserState;
.super Lcom/android/server/biometrics/sensors/BiometricUserState;
.source "FaceUserState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/biometrics/sensors/BiometricUserState<",
        "Landroid/hardware/face/Face;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_DEVICE_ID:Ljava/lang/String; = "deviceId"

.field private static final ATTR_FACE_ID:Ljava/lang/String; = "faceId"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "FaceState"

.field private static final TAG_FACE:Ljava/lang/String; = "face"

.field private static final TAG_FACES:Ljava/lang/String; = "faces"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "fileName"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/BiometricUserState;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method protected doWriteState(Landroid/util/TypedXmlSerializer;)V
    .locals 8
    .param p1, "serializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/face/FaceUserState;->getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const-string v1, "faces"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 82
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 83
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/Face;

    .line 85
    .local v4, "f":Landroid/hardware/face/Face;
    const-string v5, "face"

    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 86
    const-string v5, "faceId"

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v6

    invoke-interface {p1, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 87
    const-string/jumbo v5, "name"

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v2, v5, v6}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 88
    const-string v5, "deviceId"

    invoke-virtual {v4}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v6

    invoke-interface {p1, v2, v5, v6, v7}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 89
    const-string v5, "face"

    invoke-interface {p1, v2, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    .end local v4    # "f":Landroid/hardware/face/Face;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "i":I
    :cond_0
    const-string v3, "faces"

    invoke-interface {p1, v2, v3}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 93
    return-void

    .line 78
    .end local v0    # "faces":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    .end local v1    # "count":I
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected getBiometricsTag()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "faces"

    return-object v0
.end method

.method protected getCopy(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/face/Face;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .line 65
    .local p1, "array":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/face/Face;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/face/Face;

    .line 67
    .local v2, "f":Landroid/hardware/face/Face;
    new-instance v3, Landroid/hardware/face/Face;

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getBiometricId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/face/Face;->getDeviceId()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v2    # "f":Landroid/hardware/face/Face;
    goto :goto_0

    .line 69
    :cond_0
    return-object v0
.end method

.method protected getNameTemplateResource()I
    .locals 1

    .line 60
    const v0, 0x1040368

    return v0
.end method

.method protected parseBiometricsLocked(Landroid/util/TypedXmlPullParser;)V
    .locals 9
    .param p1, "parser"    # Landroid/util/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 99
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 101
    .local v0, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    move v2, v1

    .local v2, "type":I
    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v1, 0x3

    if-ne v2, v1, :cond_1

    .line 102
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    .line 103
    :cond_1
    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-ne v2, v1, :cond_2

    .line 104
    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 108
    .local v1, "tagName":Ljava/lang/String;
    const-string v3, "face"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 109
    const/4 v3, 0x0

    const-string/jumbo v4, "name"

    invoke-interface {p1, v3, v4}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "name":Ljava/lang/String;
    const-string v5, "faceId"

    invoke-interface {p1, v3, v5}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 111
    .local v5, "faceId":I
    const-string v6, "deviceId"

    invoke-interface {p1, v3, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 112
    .local v6, "deviceId":J
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/face/FaceUserState;->mBiometrics:Ljava/util/ArrayList;

    new-instance v8, Landroid/hardware/face/Face;

    invoke-direct {v8, v4, v5, v6, v7}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v1    # "tagName":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "faceId":I
    .end local v6    # "deviceId":J
    :cond_3
    goto :goto_0

    .line 115
    :cond_4
    return-void
.end method
