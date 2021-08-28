.class public abstract Lcom/android/server/location/listeners/PendingIntentListenerRegistration;
.super Lcom/android/server/location/listeners/RemoteListenerRegistration;
.source "PendingIntentListenerRegistration.java"

# interfaces
.implements Landroid/app/PendingIntent$CancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RemoteListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;",
        "Landroid/app/PendingIntent$CancelListener;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V
    .locals 0
    .param p2, "callerIdentity"    # Landroid/location/util/identity/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    .local p1, "request":Ljava/lang/Object;, "TTRequest;"
    .local p3, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RemoteListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method private getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 93
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    instance-of v0, p1, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 94
    move-object v0, p1

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0

    .line 95
    :cond_0
    instance-of v0, p1, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;

    if-eqz v0, :cond_1

    .line 96
    move-object v0, p1

    check-cast v0, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;

    invoke-interface {v0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration$PendingIntentKey;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "key must be PendingIntent or PendingIntentKey"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public onCancelled(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 84
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending intent registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " canceled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->remove()V

    .line 90
    return-void
.end method

.method protected onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V
    .locals 3
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<",
            "TT",
            "Listener;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .line 74
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    .local p1, "operation":Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;, "Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation<TTListener;>;"
    instance-of v0, p2, Landroid/app/PendingIntent$CanceledException;

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->remove()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->onOperationFailure(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;Ljava/lang/Exception;)V

    .line 80
    :goto_0
    return-void
.end method

.method protected onPendingIntentListenerRegister()V
    .locals 0

    .line 65
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    return-void
.end method

.method protected onPendingIntentListenerUnregister()V
    .locals 0

    .line 70
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    return-void
.end method

.method protected final onRemovableListenerRegister()V
    .locals 1

    .line 52
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->registerCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->onPendingIntentListenerRegister()V

    .line 54
    return-void
.end method

.method protected final onRemovableListenerUnregister()V
    .locals 1

    .line 58
    .local p0, "this":Lcom/android/server/location/listeners/PendingIntentListenerRegistration;, "Lcom/android/server/location/listeners/PendingIntentListenerRegistration<TTRequest;TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->onPendingIntentListenerUnregister()V

    .line 59
    invoke-virtual {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/PendingIntent;->unregisterCancelListener(Landroid/app/PendingIntent$CancelListener;)V

    .line 60
    return-void
.end method
