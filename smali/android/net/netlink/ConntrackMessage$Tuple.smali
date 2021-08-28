.class public Landroid/net/netlink/ConntrackMessage$Tuple;
.super Ljava/lang/Object;
.source "ConntrackMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netlink/ConntrackMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tuple"
.end annotation


# instance fields
.field public final dstIp:Ljava/net/Inet4Address;

.field public final dstPort:S

.field public final protoNum:B

.field public final srcIp:Ljava/net/Inet4Address;

.field public final srcPort:S


# direct methods
.method public constructor <init>(Landroid/net/netlink/ConntrackMessage$TupleIpv4;Landroid/net/netlink/ConntrackMessage$TupleProto;)V
    .locals 1
    .param p1, "ip"    # Landroid/net/netlink/ConntrackMessage$TupleIpv4;
    .param p2, "proto"    # Landroid/net/netlink/ConntrackMessage$TupleProto;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iget-object v0, p1, Landroid/net/netlink/ConntrackMessage$TupleIpv4;->src:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcIp:Ljava/net/Inet4Address;

    .line 115
    iget-object v0, p1, Landroid/net/netlink/ConntrackMessage$TupleIpv4;->dst:Ljava/net/Inet4Address;

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstIp:Ljava/net/Inet4Address;

    .line 116
    iget-short v0, p2, Landroid/net/netlink/ConntrackMessage$TupleProto;->srcPort:S

    iput-short v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcPort:S

    .line 117
    iget-short v0, p2, Landroid/net/netlink/ConntrackMessage$TupleProto;->dstPort:S

    iput-short v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstPort:S

    .line 118
    iget-byte v0, p2, Landroid/net/netlink/ConntrackMessage$TupleProto;->protoNum:B

    iput-byte v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->protoNum:B

    .line 119
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 124
    instance-of v0, p1, Landroid/net/netlink/ConntrackMessage$Tuple;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 125
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/netlink/ConntrackMessage$Tuple;

    .line 126
    .local v0, "that":Landroid/net/netlink/ConntrackMessage$Tuple;
    iget-object v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcIp:Ljava/net/Inet4Address;

    iget-object v3, v0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcIp:Ljava/net/Inet4Address;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstIp:Ljava/net/Inet4Address;

    iget-object v3, v0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstIp:Ljava/net/Inet4Address;

    .line 127
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-short v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcPort:S

    iget-short v3, v0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcPort:S

    if-ne v2, v3, :cond_1

    iget-short v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstPort:S

    iget-short v3, v0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstPort:S

    if-ne v2, v3, :cond_1

    iget-byte v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->protoNum:B

    iget-byte v3, v0, Landroid/net/netlink/ConntrackMessage$Tuple;->protoNum:B

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 126
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 135
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcIp:Ljava/net/Inet4Address;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstIp:Ljava/net/Inet4Address;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcPort:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-short v1, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstPort:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->protoNum:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 140
    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcIp:Ljava/net/Inet4Address;

    const-string/jumbo v1, "null"

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "srcIpStr":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstIp:Ljava/net/Inet4Address;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "dstIpStr":Ljava/lang/String;
    :goto_1
    iget-byte v2, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->protoNum:B

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->stringForProtocol(I)Ljava/lang/String;

    move-result-object v2

    .line 144
    .local v2, "protoStr":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tuple{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v5, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->srcPort:S

    .line 146
    invoke-static {v5}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v4, p0, Landroid/net/netlink/ConntrackMessage$Tuple;->dstPort:S

    .line 147
    invoke-static {v4}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    return-object v3
.end method
