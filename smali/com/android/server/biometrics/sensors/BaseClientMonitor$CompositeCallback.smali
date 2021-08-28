.class public Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CompositeCallback"
.end annotation


# instance fields
.field private final mCallbacks:[Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;


# direct methods
.method public varargs constructor <init>([Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0
    .param p1, "callbacks"    # [Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;->mCallbacks:[Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 79
    return-void
.end method


# virtual methods
.method public final onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;
    .param p2, "success"    # Z

    .line 91
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;->mCallbacks:[Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;->mCallbacks:[Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 91
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public final onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 3
    .param p1, "clientMonitor"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor;

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor$CompositeCallback;->mCallbacks:[Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 84
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
