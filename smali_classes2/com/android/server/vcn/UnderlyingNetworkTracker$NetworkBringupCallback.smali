.class Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "UnderlyingNetworkTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/UnderlyingNetworkTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkBringupCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;


# direct methods
.method constructor <init>(Lcom/android/server/vcn/UnderlyingNetworkTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vcn/UnderlyingNetworkTracker;

    .line 450
    iput-object p1, p0, Lcom/android/server/vcn/UnderlyingNetworkTracker$NetworkBringupCallback;->this$0:Lcom/android/server/vcn/UnderlyingNetworkTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method
