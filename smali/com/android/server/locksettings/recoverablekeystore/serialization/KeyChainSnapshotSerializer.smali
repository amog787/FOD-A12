.class public Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;
.super Ljava/lang/Object;
.source "KeyChainSnapshotSerializer.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Landroid/security/keystore/recovery/KeyChainSnapshot;Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "keyChainSnapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 72
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object v0

    .line 73
    .local v0, "xmlSerializer":Landroid/util/TypedXmlSerializer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v2, "keyChainSnapshot"

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 77
    invoke-static {v0, p0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainSnapshotProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getKeyChainProtectionParams()Ljava/util/List;

    move-result-object v1

    .line 78
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParams(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 80
    nop

    .line 81
    invoke-virtual {p0}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getWrappedApplicationKeys()Ljava/util/List;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeys(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V

    .line 82
    sget-object v1, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 83
    invoke-interface {v0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    .line 84
    return-void
.end method

.method private static writeApplicationKeyProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V
    .locals 2
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "applicationKey"    # Landroid/security/keystore/recovery/WrappedApplicationKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getAlias()Ljava/lang/String;

    move-result-object v0

    const-string v1, "alias"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getEncryptedKeyMaterial()[B

    move-result-object v0

    const-string/jumbo v1, "keyMaterial"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 102
    invoke-virtual {p1}, Landroid/security/keystore/recovery/WrappedApplicationKey;->getMetadata()[B

    move-result-object v0

    const-string/jumbo v1, "keyMetadata"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 103
    return-void
.end method

.method private static writeApplicationKeys(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/WrappedApplicationKey;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p1, "wrappedApplicationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/WrappedApplicationKey;>;"
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v1, "applicationKeysList"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/recovery/WrappedApplicationKey;

    .line 91
    .local v2, "key":Landroid/security/keystore/recovery/WrappedApplicationKey;
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string v4, "applicationKey"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 92
    invoke-static {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeApplicationKeyProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/WrappedApplicationKey;)V

    .line 93
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 94
    .end local v2    # "key":Landroid/security/keystore/recovery/WrappedApplicationKey;
    goto :goto_0

    .line 95
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    return-void
.end method

.method private static writeKeyChainProtectionParams(Landroid/util/TypedXmlSerializer;Ljava/util/List;)V
    .locals 5
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlSerializer;",
            "Ljava/util/List<",
            "Landroid/security/keystore/recovery/KeyChainProtectionParams;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p1, "keyChainProtectionParamsList":Ljava/util/List;, "Ljava/util/List<Landroid/security/keystore/recovery/KeyChainProtectionParams;>;"
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyChainProtectionParamsList"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 109
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/keystore/recovery/KeyChainProtectionParams;

    .line 110
    .local v2, "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v4, "keyChainProtectionParams"

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 111
    invoke-static {p0, v2}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyChainProtectionParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V

    .line 112
    sget-object v3, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v3, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 113
    .end local v2    # "keyChainProtectionParams":Landroid/security/keystore/recovery/KeyChainProtectionParams;
    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    return-void
.end method

.method private static writeKeyChainProtectionParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainProtectionParams;)V
    .locals 3
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "keyChainProtectionParams"    # Landroid/security/keystore/recovery/KeyChainProtectionParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    nop

    .line 121
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getUserSecretType()I

    move-result v0

    int-to-long v0, v0

    .line 120
    const-string/jumbo v2, "userSecretType"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getLockScreenUiFormat()I

    move-result v0

    int-to-long v0, v0

    .line 122
    const-string/jumbo v2, "lockScreenUiType"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 128
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainProtectionParams;->getKeyDerivationParams()Landroid/security/keystore/recovery/KeyDerivationParams;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParams(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 129
    return-void
.end method

.method private static writeKeyChainSnapshotProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyChainSnapshot;)V
    .locals 3
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "keyChainSnapshot"    # Landroid/security/keystore/recovery/KeyChainSnapshot;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 153
    nop

    .line 154
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getSnapshotVersion()I

    move-result v0

    int-to-long v0, v0

    .line 153
    const-string/jumbo v2, "snapshotVersion"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 155
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getMaxAttempts()I

    move-result v0

    int-to-long v0, v0

    const-string/jumbo v2, "maxAttempts"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 156
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getCounterId()J

    move-result-wide v0

    const-string v2, "counterId"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 157
    nop

    .line 158
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getEncryptedRecoveryKeyBlob()[B

    move-result-object v0

    .line 157
    const-string/jumbo v1, "recoveryKeyMaterial"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 159
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getServerParams()[B

    move-result-object v0

    const-string/jumbo v1, "serverParams"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 160
    nop

    .line 161
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyChainSnapshot;->getTrustedHardwareCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    .line 160
    const-string/jumbo v1, "thmCertPath"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V

    .line 162
    return-void
.end method

.method private static writeKeyDerivationParams(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 2
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "keyDerivationParams"    # Landroid/security/keystore/recovery/KeyDerivationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    const-string/jumbo v1, "keyDerivationParams"

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 135
    invoke-static {p0, p1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writeKeyDerivationParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V

    .line 137
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    return-void
.end method

.method private static writeKeyDerivationParamsProperties(Landroid/util/TypedXmlSerializer;Landroid/security/keystore/recovery/KeyDerivationParams;)V
    .locals 3
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "keyDerivationParams"    # Landroid/security/keystore/recovery/KeyDerivationParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 143
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getAlgorithm()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "algorithm"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 144
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getSalt()[B

    move-result-object v0

    const-string/jumbo v1, "salt"

    invoke-static {p0, v1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 145
    nop

    .line 146
    invoke-virtual {p1}, Landroid/security/keystore/recovery/KeyDerivationParams;->getMemoryDifficulty()I

    move-result v0

    int-to-long v0, v0

    .line 145
    const-string/jumbo v2, "memoryDifficulty"

    invoke-static {p0, v2, v0, v1}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V

    .line 147
    return-void
.end method

.method private static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;J)V
    .locals 1
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    return-void
.end method

.method private static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 176
    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 177
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 178
    return-void
.end method

.method private static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/security/cert/CertPath;)V
    .locals 1
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 194
    const-string v0, "PkiPath"

    invoke-virtual {p2, v0}, Ljava/security/cert/CertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSerializer;->writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V

    .line 195
    return-void
.end method

.method private static writePropertyTag(Landroid/util/TypedXmlSerializer;Ljava/lang/String;[B)V
    .locals 1
    .param p0, "xmlSerializer"    # Landroid/util/TypedXmlSerializer;
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "propertyValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    if-nez p2, :cond_0

    .line 184
    return-void

    .line 186
    :cond_0
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    sget-object v0, Lcom/android/server/locksettings/recoverablekeystore/serialization/KeyChainSnapshotSchema;->NAMESPACE:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    return-void
.end method
