.class public Landroid/net/netlink/StructNfGenMsg;
.super Ljava/lang/Object;
.source "StructNfGenMsg.java"


# static fields
.field public static final NFNETLINK_V0:I = 0x0

.field public static final STRUCT_SIZE:I = 0x4


# instance fields
.field public final nfgen_family:B

.field public final res_id:S

.field public final version:B


# direct methods
.method public constructor <init>(B)V
    .locals 1
    .param p1, "family"    # B

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-byte p1, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    .line 75
    const/4 v0, 0x0

    iput-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    .line 76
    iput-short v0, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    .line 77
    return-void
.end method

.method public constructor <init>(BBS)V
    .locals 0
    .param p1, "family"    # B
    .param p2, "ver"    # B
    .param p3, "id"    # S

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-byte p1, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    .line 69
    iput-byte p2, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    .line 70
    iput-short p3, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    .line 71
    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNfGenMsg;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 52
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-static {p0}, Landroid/net/netlink/StructNfGenMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 57
    .local v0, "nfgen_family":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 59
    .local v1, "version":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v2

    .line 60
    .local v2, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    .line 62
    .local v3, "res_id":S
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 64
    new-instance v4, Landroid/net/netlink/StructNfGenMsg;

    invoke-direct {v4, v0, v1, v3}, Landroid/net/netlink/StructNfGenMsg;-><init>(BBS)V

    return-object v4
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 81
    iget-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 83
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 84
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    iget-short v1, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 86
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 95
    iget-byte v0, p0, Landroid/net/netlink/StructNfGenMsg;->nfgen_family:B

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "familyStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NfGenMsg{ nfgen_family{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, version{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/net/netlink/StructNfGenMsg;->version:B

    .line 99
    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}, res_id{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/net/netlink/StructNfGenMsg;->res_id:S

    .line 100
    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    return-object v1
.end method
