.class Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;
.super Landroid/telephony/TelephonyCallback;
.source "UnderlyingNetworkTracker.java"

# interfaces
.implements Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/UnderlyingNetworkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VcnActiveDataSubscriptionIdListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V
    .locals 0

    .line 805
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-direct {p0}, Landroid/telephony/TelephonyCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;Lcom/android/server/vcn/UnderlyingNetworkTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;
    .param p2, "x1"    # Lcom/android/server/vcn/UnderlyingNetworkTracker$1;

    .line 805
    invoke-direct {p0, p1}, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;-><init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 1
    .param p1, "subId"    # I

    .line 809
    iget-object v0, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$VcnActiveDataSubscriptionIdListener;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-static {v0}, Lcom/android/server/vcn/UnderlyingNetworkTracker;->access$1100(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V

    .line 810
    return-void
.end method
