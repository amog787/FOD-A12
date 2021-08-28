.class public Lcom/android/server/am/ActivityManagerUtils;
.super Ljava/lang/Object;
.source "ActivityManagerUtils.java"


# static fields
.field private static sAndroidIdHash:Ljava/lang/Integer;

.field private static final sHashCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInjectedAndroidId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static extractByte([BI)I
    .locals 2
    .param p0, "bytes"    # [B
    .param p1, "index"    # I

    .line 106
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    mul-int/lit8 v1, p1, 0x8

    shl-int/2addr v0, v1

    return v0
.end method

.method static getAndroidIdHash()I
    .locals 2

    .line 55
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 57
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 56
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "androidId":Ljava/lang/String;
    sget-object v1, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 59
    :goto_0
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 62
    .end local v0    # "androidId":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getUnsignedHashCached(Ljava/lang/String;)I
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/android/server/am/ActivityManagerUtils;->sHashCache:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 73
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 74
    .local v1, "cached":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    monitor-exit v0

    return v2

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "hash":I
    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    monitor-exit v0

    return v2

    .line 80
    .end local v1    # "cached":Ljava/lang/Integer;
    .end local v2    # "hash":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getUnsignedHashUnCached(Ljava/lang/String;)I
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 88
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 89
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerUtils;->unsignedIntFromBytes([B)I

    move-result v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 91
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static hashComponentNameForAtom(Ljava/lang/String;)I
    .locals 2
    .param p0, "shortInstanceName"    # Ljava/lang/String;

    .line 130
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashUnCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method static injectAndroidIdForTest(Ljava/lang/String;)V
    .locals 1
    .param p0, "androidId"    # Ljava/lang/String;

    .line 45
    sput-object p0, Lcom/android/server/am/ActivityManagerUtils;->sInjectedAndroidId:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ActivityManagerUtils;->sAndroidIdHash:Ljava/lang/Integer;

    .line 47
    return-void
.end method

.method public static shouldSamplePackageForAtom(Ljava/lang/String;F)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "rate"    # F

    .line 114
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 115
    return v1

    .line 117
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    .line 118
    return v2

    .line 120
    :cond_1
    invoke-static {p0}, Lcom/android/server/am/ActivityManagerUtils;->getUnsignedHashCached(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerUtils;->getAndroidIdHash()I

    move-result v3

    xor-int/2addr v0, v3

    .line 122
    .local v0, "hash":I
    int-to-double v3, v0

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    div-double/2addr v3, v5

    float-to-double v5, p1

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method static unsignedIntFromBytes([B)I
    .locals 2
    .param p0, "longEnoughBytes"    # [B

    .line 98
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v0

    .line 99
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 100
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    .line 101
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/server/am/ActivityManagerUtils;->extractByte([BI)I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 98
    return v0
.end method
