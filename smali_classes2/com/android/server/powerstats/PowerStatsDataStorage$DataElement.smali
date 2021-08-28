.class Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
.super Ljava/lang/Object;
.source "PowerStatsDataStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/powerstats/PowerStatsDataStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataElement"
.end annotation


# static fields
.field private static final LENGTH_FIELD_WIDTH:I = 0x4

.field private static final MAX_DATA_ELEMENT_SIZE:I = 0x3e8


# instance fields
.field private mData:[B


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v1, v0, [B

    .line 77
    .local v1, "lengthBytes":[B
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 78
    .local v2, "bytesRead":I
    const/4 v3, 0x0

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    .line 80
    if-ne v2, v0, :cond_2

    .line 81
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 83
    .local v0, "length":I
    if-lez v0, :cond_1

    const/16 v3, 0x3e8

    if-ge v0, v3, :cond_1

    .line 84
    new-array v3, v0, [B

    iput-object v3, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    .line 85
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 87
    if-ne v2, v0, :cond_0

    .line 94
    .end local v0    # "length":I
    nop

    .line 98
    return-void

    .line 88
    .restart local v0    # "length":I
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid bytes read, expected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", actual: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 92
    :cond_1
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DataElement size is invalid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 95
    .end local v0    # "length":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Did not read 4 bytes ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/android/server/powerstats/PowerStatsDataStorage$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Lcom/android/server/powerstats/PowerStatsDataStorage$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 0
    .param p1, "data"    # [B

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    .line 73
    return-void
.end method

.method synthetic constructor <init>([BLcom/android/server/powerstats/PowerStatsDataStorage$1;)V
    .locals 0
    .param p1, "x0"    # [B
    .param p2, "x1"    # Lcom/android/server/powerstats/PowerStatsDataStorage$1;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;-><init>([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private toByteArray()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 62
    .local v0, "data":Ljava/io/ByteArrayOutputStream;
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 63
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 64
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected getData()[B
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsDataStorage$DataElement;->mData:[B

    return-object v0
.end method
