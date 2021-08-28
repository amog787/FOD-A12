.class public Landroid/net/netlink/ConntrackMessage$TupleProto;
.super Ljava/lang/Object;
.source "ConntrackMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netlink/ConntrackMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TupleProto"
.end annotation


# instance fields
.field public final dstPort:S

.field public final protoNum:B

.field public final srcPort:S


# direct methods
.method public constructor <init>(BSS)V
    .locals 0
    .param p1, "protoNum"    # B
    .param p2, "srcPort"    # S
    .param p3, "dstPort"    # S

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-byte p1, p0, Landroid/net/netlink/ConntrackMessage$TupleProto;->protoNum:B

    .line 179
    iput-short p2, p0, Landroid/net/netlink/ConntrackMessage$TupleProto;->srcPort:S

    .line 180
    iput-short p3, p0, Landroid/net/netlink/ConntrackMessage$TupleProto;->dstPort:S

    .line 181
    return-void
.end method
