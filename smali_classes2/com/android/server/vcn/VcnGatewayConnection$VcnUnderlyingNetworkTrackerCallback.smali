.class Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"

# interfaces
.implements Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkTrackerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnUnderlyingNetworkTrackerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/VcnGatewayConnection;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/VcnGatewayConnection;
    .param p2, "x1"    # Lcom/android/server/vcn/VcnGatewayConnection$1;

    .line 764
    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    return-void
.end method


# virtual methods
.method public onSelectedUnderlyingNetworkChanged(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V
    .locals 4
    .param p1, "underlying"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;

    .line 769
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$400(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 771
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Selected underlying network changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;->network:Landroid/net/Network;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 771
    invoke-static {v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->access$500(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V

    .line 779
    if-nez p1, :cond_1

    .line 780
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$600(Lcom/android/server/vcn/VcnGatewayConnection;)V

    goto :goto_1

    .line 784
    :cond_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-static {v0}, Lcom/android/server/vcn/VcnGatewayConnection;->access$700(Lcom/android/server/vcn/VcnGatewayConnection;)V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkTrackerCallback;->this$0:Lcom/android/server/vcn/VcnGatewayConnection;

    const/4 v1, 0x1

    const/high16 v2, -0x80000000

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;

    invoke-direct {v3, p1}, Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker$UnderlyingNetworkRecord;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->access$800(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    .line 791
    return-void
.end method
