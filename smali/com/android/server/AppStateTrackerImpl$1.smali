.class Lcom/android/server/AppStateTrackerImpl$1;
.super Lcom/android/server/AppStateTrackerImpl$Listener;
.source "AppStateTrackerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AppStateTrackerImpl;->addServiceStateListener(Lcom/android/server/AppStateTracker$ServiceStateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AppStateTrackerImpl;

.field final synthetic val$listener:Lcom/android/server/AppStateTracker$ServiceStateListener;


# direct methods
.method constructor <init>(Lcom/android/server/AppStateTrackerImpl;Lcom/android/server/AppStateTracker$ServiceStateListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AppStateTrackerImpl;

    .line 165
    iput-object p1, p0, Lcom/android/server/AppStateTrackerImpl$1;->this$0:Lcom/android/server/AppStateTrackerImpl;

    iput-object p2, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$ServiceStateListener;

    invoke-direct {p0}, Lcom/android/server/AppStateTrackerImpl$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/AppStateTrackerImpl$1;->val$listener:Lcom/android/server/AppStateTracker$ServiceStateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AppStateTracker$ServiceStateListener;->stopForegroundServicesForUidPackage(ILjava/lang/String;)V

    .line 169
    return-void
.end method
