.class Lcom/android/server/policy/SideFpsEventHandler$3$1;
.super Landroid/hardware/fingerprint/FingerprintStateListener;
.source "SideFpsEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SideFpsEventHandler$3;->onAllAuthenticatorsRegistered(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/SideFpsEventHandler$3;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SideFpsEventHandler$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/SideFpsEventHandler$3;

    .line 129
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler$3$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$3;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler$3$1;->this$1:Lcom/android/server/policy/SideFpsEventHandler$3;

    iget-object v0, v0, Lcom/android/server/policy/SideFpsEventHandler$3;->this$0:Lcom/android/server/policy/SideFpsEventHandler;

    invoke-static {v0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->access$102(Lcom/android/server/policy/SideFpsEventHandler;I)I

    .line 134
    return-void
.end method
