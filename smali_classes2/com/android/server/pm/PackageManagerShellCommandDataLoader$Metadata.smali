.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# static fields
.field static final DATA_ONLY_STREAMING:B = 0x2t

.field static final LOCAL_FILE:B = 0x1t

.field static final STDIN:B = 0x0t

.field static final STREAMING:B = 0x3t

.field private static sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mData:Ljava/lang/String;

.field private final mMode:B

.field private final mSalt:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>(BLjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # B
    .param p2, "data"    # Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method private constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mode"    # B
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "salt"    # Ljava/lang/String;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    .line 173
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    .line 175
    return-void
.end method

.method static forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 160
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 3
    .param p0, "filePath"    # Ljava/lang/String;

    .line 156
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-static {}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->nextGlobalSalt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 2
    .param p0, "fileId"    # Ljava/lang/String;

    .line 164
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .locals 7
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 181
    :cond_0
    const/4 v0, 0x0

    .line 182
    .local v0, "offset":I
    aget-byte v1, p0, v0

    .line 183
    .local v1, "mode":B
    add-int/lit8 v0, v0, 0x1

    .line 186
    packed-switch v1, :pswitch_data_0

    .line 198
    new-instance v2, Ljava/lang/String;

    array-length v3, p0

    sub-int/2addr v3, v0

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v0, v3, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v3, v2

    .line 200
    .local v3, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "salt":Ljava/lang/String;
    goto :goto_0

    .line 188
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "salt":Ljava/lang/String;
    :pswitch_0
    const/4 v2, 0x4

    invoke-static {p0, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 189
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 190
    .local v2, "dataSize":I
    add-int/lit8 v0, v0, 0x4

    .line 191
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v0, v2, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 192
    .restart local v3    # "data":Ljava/lang/String;
    add-int/2addr v0, v2

    .line 193
    new-instance v4, Ljava/lang/String;

    array-length v5, p0

    sub-int/2addr v5, v0

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, v0, v5, v6}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 195
    .restart local v4    # "salt":Ljava/lang/String;
    nop

    .line 203
    .end local v2    # "dataSize":I
    :goto_0
    new-instance v2, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 179
    .end local v0    # "offset":I
    .end local v1    # "mode":B
    .end local v3    # "data":Ljava/lang/String;
    .end local v4    # "salt":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static nextGlobalSalt()Ljava/lang/Long;
    .locals 2

    .line 146
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getData()Ljava/lang/String;
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    return-object v0
.end method

.method getMode()B
    .locals 1

    .line 237
    iget-byte v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    return v0
.end method

.method public toByteArray()[B
    .locals 9

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 211
    .local v0, "dataBytes":[B
    iget-byte v1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 228
    array-length v4, v0

    add-int/2addr v4, v2

    new-array v5, v4, [B

    .line 229
    .local v5, "result":[B
    aput-byte v1, v5, v3

    .line 230
    array-length v1, v0

    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 213
    .end local v5    # "result":[B
    :pswitch_0
    array-length v1, v0

    .line 214
    .local v1, "dataSize":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    .line 215
    .local v4, "saltBytes":[B
    add-int/lit8 v5, v1, 0x5

    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 216
    .restart local v5    # "result":[B
    const/4 v6, 0x0

    .line 217
    .local v6, "offset":I
    iget-byte v7, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    aput-byte v7, v5, v6

    .line 218
    add-int/2addr v6, v2

    .line 219
    const/4 v2, 0x4

    invoke-static {v5, v6, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 221
    add-int/2addr v6, v2

    .line 222
    invoke-static {v0, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    add-int/2addr v6, v1

    .line 224
    array-length v2, v4

    invoke-static {v4, v3, v5, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 225
    nop

    .line 233
    .end local v1    # "dataSize":I
    .end local v4    # "saltBytes":[B
    .end local v6    # "offset":I
    :goto_0
    return-object v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
