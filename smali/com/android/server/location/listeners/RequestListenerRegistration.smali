.class public Lcom/android/server/location/listeners/RequestListenerRegistration;
.super Lcom/android/server/location/listeners/ListenerRegistration;
.source "RequestListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/ListenerRegistration<",
        "TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRequest:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTRequest;"
        }
    .end annotation
.end field


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

    .line 34
    .local p0, "this":Lcom/android/server/location/listeners/RequestListenerRegistration;, "Lcom/android/server/location/listeners/RequestListenerRegistration<TTRequest;TTListener;>;"
    .local p2, "request":Ljava/lang/Object;, "TTRequest;"
    .local p3, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-direct {p0, p1, p3}, Lcom/android/server/location/listeners/ListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;)V

    .line 35
    iput-object p2, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    .line 36
    return-void
.end method


# virtual methods
.method public getRequest()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTRequest;"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/android/server/location/listeners/RequestListenerRegistration;, "Lcom/android/server/location/listeners/RequestListenerRegistration<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 47
    .local p0, "this":Lcom/android/server/location/listeners/RequestListenerRegistration;, "Lcom/android/server/location/listeners/RequestListenerRegistration<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/RequestListenerRegistration;->mRequest:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 48
    const-string v0, "[]"

    return-object v0

    .line 50
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
