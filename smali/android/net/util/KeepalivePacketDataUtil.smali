.class public final Landroid/net/util/KeepalivePacketDataUtil;
.super Ljava/lang/Object;
.source "KeepalivePacketDataUtil.java"


# static fields
.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final IPV6_HEADER_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String;

.field private static final TCP_HEADER_LENGTH:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Landroid/net/util/KeepalivePacketDataUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/util/KeepalivePacketDataUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B
    .locals 6
    .param p0, "tcpDetails"    # Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 128
    const/16 v0, 0x28

    .line 129
    .local v0, "length":I
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 130
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 132
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 134
    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    iget v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 136
    sget v1, Landroid/system/OsConstants;->IPPROTO_TCP:I

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 138
    .local v1, "ipChecksumOffset":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 139
    iget-object v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 140
    iget-object v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 143
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 144
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 145
    const/16 v4, 0x5010

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 146
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iget v5, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    shr-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 147
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 148
    .local v4, "tcpChecksumOffset":I
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    invoke-static {v2, v3}, Lcom/android/net/module/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v5

    invoke-virtual {v2, v1, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 153
    const/16 v5, 0x14

    invoke-static {v2, v3, v5, v5}, Lcom/android/net/module/util/IpUtils;->tcpChecksum(Ljava/nio/ByteBuffer;III)S

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 156
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static fromStableParcelable(Landroid/net/TcpKeepalivePacketDataParcelable;)Landroid/net/TcpKeepalivePacketData;
    .locals 15
    .param p0, "tcpDetails"    # Landroid/net/TcpKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 100
    const/16 v0, -0x15

    :try_start_0
    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    array-length v1, v1

    if-ne v1, v2, :cond_0

    .line 103
    invoke-static {p0}, Landroid/net/util/KeepalivePacketDataUtil;->buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B

    move-result-object v8

    .line 108
    .local v8, "packet":[B
    new-instance v1, Landroid/net/TcpKeepalivePacketData;

    iget-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 109
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iget v5, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    iget-object v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 111
    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v6

    iget v7, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    iget v9, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    iget v10, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    iget v11, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iget v12, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    iget v13, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    iget v14, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/net/TcpKeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BIIIIII)V

    .line 108
    return-object v1

    .line 106
    .end local v8    # "packet":[B
    :cond_0
    new-instance v1, Landroid/net/InvalidPacketException;

    invoke-direct {v1, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    .end local p0    # "tcpDetails":Landroid/net/TcpKeepalivePacketDataParcelable;
    throw v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .restart local p0    # "tcpDetails":Landroid/net/TcpKeepalivePacketDataParcelable;
    :catch_0
    move-exception v1

    .line 117
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Landroid/net/InvalidPacketException;

    invoke-direct {v2, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw v2
.end method

.method public static parseTcpKeepalivePacketData(Landroid/net/KeepalivePacketData;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 8
    .param p0, "data"    # Landroid/net/KeepalivePacketData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 179
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-le v1, v2, :cond_1

    .line 180
    sget-object v1, Landroid/net/util/KeepalivePacketDataUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "parseTcpKeepalivePacketData should not be used after R, use TcpKeepalivePacketData instead."

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getPacket()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 186
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 199
    const/16 v2, 0x18

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    .line 200
    .local v2, "tcpSeq":I
    const/16 v3, 0x1c

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 201
    .local v3, "tcpAck":I
    const/16 v4, 0x22

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    .line 202
    .local v4, "wndSize":I
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    .line 203
    .local v5, "ipTos":I
    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .local v0, "ttl":I
    nop

    .line 208
    new-instance v6, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v6}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 209
    .local v6, "p":Landroid/net/TcpKeepalivePacketDataParcelable;
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    iput-object v7, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 210
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getSrcPort()I

    move-result v7

    iput v7, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 211
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v7

    iput-object v7, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 212
    invoke-virtual {p0}, Landroid/net/KeepalivePacketData;->getDstPort()I

    move-result v7

    iput v7, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 213
    iput v2, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 214
    iput v3, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 217
    iput v4, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 218
    const/4 v7, 0x0

    iput v7, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 219
    iput v5, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 220
    iput v0, v6, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 221
    return-object v6

    .line 204
    .end local v0    # "ttl":I
    .end local v2    # "tcpSeq":I
    .end local v3    # "tcpAck":I
    .end local v4    # "wndSize":I
    .end local v5    # "ipTos":I
    .end local v6    # "p":Landroid/net/TcpKeepalivePacketDataParcelable;
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    return-object v0
.end method

.method public static toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;
    .locals 4
    .param p0, "pkt"    # Landroid/net/NattKeepalivePacketData;

    .line 60
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable;-><init>()V

    .line 61
    .local v0, "parcel":Landroid/net/NattKeepalivePacketDataParcelable;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 62
    .local v1, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 63
    .local v2, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 64
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v3

    iput v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 65
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 66
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v3

    iput v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    .line 67
    return-object v0
.end method

.method public static toStableParcelable(Landroid/net/TcpKeepalivePacketData;)Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 4
    .param p0, "pkt"    # Landroid/net/TcpKeepalivePacketData;

    .line 76
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 77
    .local v0, "parcel":Landroid/net/TcpKeepalivePacketDataParcelable;
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 78
    .local v1, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 79
    .local v2, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 80
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 81
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 82
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 83
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpSeq()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 84
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpAck()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 85
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpWindow()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 86
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getTcpWindowScale()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 87
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getIpTos()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 88
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getIpTtl()I

    move-result v3

    iput v3, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 89
    return-object v0
.end method
