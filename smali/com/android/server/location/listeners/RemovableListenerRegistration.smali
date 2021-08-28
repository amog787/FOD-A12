.class public abstract Lcom/android/server/location/listeners/RemovableListenerRegistration;
.super Lcom/android/server/location/listeners/RequestListenerRegistration;
.source "RemovableListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RequestListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile mKey:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "TTRequest;TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 38
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    .local p2, "request":Ljava/lang/Object;, "TTRequest;"
    .local p3, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/RequestListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected final getKey()Ljava/lang/Object;
    .locals 1

    .line 53
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/listeners/ListenerMultiplexer<",
            "*-TT",
            "Listener;",
            "**>;"
        }
    .end annotation
.end method

.method protected final onRegister(Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;

    .line 69
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerRegister()V

    .line 71
    return-void
.end method

.method protected onRemovableListenerRegister()V
    .locals 0

    .line 82
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    return-void
.end method

.method protected onRemovableListenerUnregister()V
    .locals 0

    .line 87
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    return-void
.end method

.method protected final onUnregister()V
    .locals 1

    .line 75
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->onRemovableListenerUnregister()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public final remove()V
    .locals 2

    .line 61
    .local p0, "this":Lcom/android/server/location/listeners/RemovableListenerRegistration;, "Lcom/android/server/location/listeners/RemovableListenerRegistration<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/RemovableListenerRegistration;->mKey:Ljava/lang/Object;

    .line 62
    .local v0, "key":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/android/server/location/listeners/ListenerMultiplexer;->removeRegistration(Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    .line 65
    :cond_0
    return-void
.end method
