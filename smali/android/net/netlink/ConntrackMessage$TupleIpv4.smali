.class public Landroid/net/netlink/ConntrackMessage$TupleIpv4;
.super Ljava/lang/Object;
.source "ConntrackMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/netlink/ConntrackMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TupleIpv4"
.end annotation


# instance fields
.field public final dst:Ljava/net/Inet4Address;

.field public final src:Ljava/net/Inet4Address;


# direct methods
.method public constructor <init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;)V
    .locals 0
    .param p1, "src"    # Ljava/net/Inet4Address;
    .param p2, "dst"    # Ljava/net/Inet4Address;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Landroid/net/netlink/ConntrackMessage$TupleIpv4;->src:Ljava/net/Inet4Address;

    .line 163
    iput-object p2, p0, Landroid/net/netlink/ConntrackMessage$TupleIpv4;->dst:Ljava/net/Inet4Address;

    .line 164
    return-void
.end method
