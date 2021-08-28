.class final Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IfaceQuotas"
.end annotation


# instance fields
.field public final iface:Ljava/lang/String;

.field public final limit:J

.field public final warning:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JJ)V
    .locals 0
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "warning"    # J
    .param p4, "limit"    # J

    .line 5300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5301
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->iface:Ljava/lang/String;

    .line 5302
    iput-wide p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->warning:J

    .line 5303
    iput-wide p4, p0, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;->limit:J

    .line 5304
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JJLcom/android/server/net/NetworkPolicyManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 5293
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkPolicyManagerService$IfaceQuotas;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method
