.class abstract Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;
.super Lcom/android/server/vcn/VcnGatewayConnection$BaseState;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ActiveBaseState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 1

    .line 1386
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection$BaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p2, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$1;

    .line 1386
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method protected isValidToken(I)Z
    .locals 1
    .param p1, "token"    # I

    .line 1389
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$2100(Lcom/android/server/vcn/VcnGatewayConnection;)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
