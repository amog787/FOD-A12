.class Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
.super Ljava/lang/Object;
.source "EnterpriseSpecificIdCalculator.java"


# static fields
.field private static final ESID_LENGTH:I = 0x10

.field private static final PADDED_ENTERPRISE_ID_LENGTH:I = 0x40

.field private static final PADDED_HW_ID_LENGTH:I = 0x10

.field private static final PADDED_PROFILE_OWNER_LENGTH:I = 0x40


# instance fields
.field private final mImei:Ljava/lang/String;

.field private final mMacAddress:Ljava/lang/String;

.field private final mMeid:Ljava/lang/String;

.field private final mSerialNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 54
    .local v0, "telephonyService":Landroid/telephony/TelephonyManager;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "Unable to access telephony service"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 55
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 56
    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 57
    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 58
    const-class v3, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 59
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v4, "Unable to access WiFi service"

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 60
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "macAddresses":[Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v4, v1

    if-nez v4, :cond_2

    goto :goto_2

    .line 64
    :cond_2
    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    goto :goto_3

    .line 62
    :cond_3
    :goto_2
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    .line 66
    :goto_3
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;
    .param p2, "meid"    # Ljava/lang/String;
    .param p3, "serialNumber"    # Ljava/lang/String;
    .param p4, "macAddress"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private static getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "hardwareIdentifier"    # Ljava/lang/String;

    .line 74
    if-nez p0, :cond_0

    .line 75
    const-string p0, ""

    .line 77
    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "maxLength"    # I

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "paddedValue":Ljava/lang/String;
    invoke-virtual {v0, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public calculateEnterpriseId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "profileOwnerPackage"    # Ljava/lang/String;
    .param p2, "enterpriseIdString"    # Ljava/lang/String;

    .line 110
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string/jumbo v3, "owner package must be specified."

    invoke-static {v1, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    const-string v1, "enterprise ID must either be null or non-empty."

    invoke-static {v2, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 116
    if-nez p2, :cond_2

    .line 117
    const-string v1, ""

    .end local p2    # "enterpriseIdString":Ljava/lang/String;
    .local v1, "enterpriseIdString":Ljava/lang/String;
    goto :goto_1

    .line 116
    .end local v1    # "enterpriseIdString":Ljava/lang/String;
    .restart local p2    # "enterpriseIdString":Ljava/lang/String;
    :cond_2
    move-object/from16 v1, p2

    .line 120
    .end local p2    # "enterpriseIdString":Ljava/lang/String;
    .restart local v1    # "enterpriseIdString":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 121
    .local v2, "serialNumber":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedImei()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 122
    .local v3, "imei":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedMeid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 123
    .local v4, "meid":[B
    iget-object v5, v0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 124
    .local v5, "macAddress":[B
    array-length v6, v2

    array-length v7, v3

    add-int/2addr v6, v7

    array-length v7, v4

    add-int/2addr v6, v7

    array-length v7, v5

    add-int/2addr v6, v7

    .line 126
    .local v6, "totalIdentifiersLength":I
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 127
    .local v7, "fixedIdentifiers":Ljava/nio/ByteBuffer;
    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 132
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedProfileOwnerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 133
    .local v8, "dpcPackage":[B
    invoke-virtual {v0, v1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedEnterpriseId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 134
    .local v9, "enterpriseId":[B
    array-length v10, v8

    array-length v11, v9

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 135
    .local v10, "info":Ljava/nio/ByteBuffer;
    invoke-virtual {v10, v8}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 136
    invoke-virtual {v10, v9}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v11

    const/4 v12, 0x0

    .line 138
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    const/16 v14, 0x10

    .line 137
    const-string v15, "HMACSHA256"

    invoke-static {v15, v11, v12, v13, v14}, Landroid/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object v11

    .line 139
    .local v11, "esidBytes":[B
    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 141
    .local v12, "esidByteBuffer":Ljava/nio/ByteBuffer;
    new-instance v13, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 142
    .local v13, "firstId":Landroid/content/pm/VerifierDeviceIdentity;
    new-instance v14, Landroid/content/pm/VerifierDeviceIdentity;

    move-object v15, v1

    .end local v1    # "enterpriseIdString":Ljava/lang/String;
    .local v15, "enterpriseIdString":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {v14, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    move-object v0, v14

    .line 143
    .local v0, "secondId":Landroid/content/pm/VerifierDeviceIdentity;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method getPaddedEnterpriseId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "enterpriseId"    # Ljava/lang/String;

    .line 97
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPaddedImei()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPaddedMeid()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPaddedProfileOwnerName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "profileOwnerPackage"    # Ljava/lang/String;

    .line 93
    const/16 v0, 0x40

    invoke-static {p1, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPaddedSerialNumber()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedHardwareIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
