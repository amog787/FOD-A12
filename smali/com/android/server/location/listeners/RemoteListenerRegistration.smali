.class public abstract Lcom/android/server/location/listeners/RemoteListenerRegistration;
.super Lcom/android/server/location/listeners/RemovableListenerRegistration;
.source "RemoteListenerRegistration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TRequest:",
        "Ljava/lang/Object;",
        "T",
        "Listener:Ljava/lang/Object;",
        ">",
        "Lcom/android/server/location/listeners/RemovableListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# static fields
.field public static final IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;


# instance fields
.field private final mIdentity:Landroid/location/util/identity/CallerIdentity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V
    .locals 1
    .param p2, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/android/server/location/listeners/RemoteListenerRegistration;, "Lcom/android/server/location/listeners/RemoteListenerRegistration<TTRequest;TTListener;>;"
    .local p1, "request":Ljava/lang/Object;, "TTRequest;"
    .local p3, "listener":Ljava/lang/Object;, "TTListener;"
    invoke-static {p2}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->chooseExecutor(Landroid/location/util/identity/CallerIdentity;)Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/server/location/listeners/RemovableListenerRegistration;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/location/util/identity/CallerIdentity;

    iput-object v0, p0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 66
    return-void
.end method

.method private static chooseExecutor(Landroid/location/util/identity/CallerIdentity;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "identity"    # Landroid/location/util/identity/CallerIdentity;

    .line 50
    invoke-virtual {p0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->IN_PROCESS_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0

    .line 56
    :cond_0
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method


# virtual methods
.method public final getIdentity()Landroid/location/util/identity/CallerIdentity;
    .locals 1

    .line 72
    .local p0, "this":Lcom/android/server/location/listeners/RemoteListenerRegistration;, "Lcom/android/server/location/listeners/RemoteListenerRegistration<TTRequest;TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/listeners/RemoteListenerRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-object v0
.end method
