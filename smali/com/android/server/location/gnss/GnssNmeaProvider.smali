.class Lcom/android/server/location/gnss/GnssNmeaProvider;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.source "GnssNmeaProvider.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;
.implements Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssNmeaListener;",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;",
        "Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;"
    }
.end annotation


# instance fields
.field private final mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

.field private final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field private final mNmeaBuffer:[B


# direct methods
.method constructor <init>(Lcom/android/server/location/injector/Injector;Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/location/injector/Injector;
    .param p2, "gnssNative"    # Lcom/android/server/location/gnss/hal/GnssNative;

    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;-><init>(Lcom/android/server/location/injector/Injector;)V

    .line 46
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    .line 51
    invoke-interface {p1}, Lcom/android/server/location/injector/Injector;->getAppOpsHelper()Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    .line 52
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 54
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addNmeaCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$NmeaCallbacks;)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/injector/AppOpsHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mAppOpsHelper:Lcom/android/server/location/injector/AppOpsHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/gnss/GnssNmeaProvider;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mNmeaBuffer:[B

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/gnss/GnssNmeaProvider;)Lcom/android/server/location/gnss/hal/GnssNative;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/gnss/GnssNmeaProvider;

    .line 39
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNmeaProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    return-object v0
.end method


# virtual methods
.method public addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V
    .locals 0
    .param p1, "identity"    # Landroid/location/util/identity/CallerIdentity;
    .param p2, "listener"    # Landroid/location/IGnssNmeaListener;

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    .line 61
    return-void
.end method

.method public bridge synthetic addListener(Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .locals 0

    .line 39
    check-cast p2, Landroid/location/IGnssNmeaListener;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->addListener(Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssNmeaListener;)V

    return-void
.end method

.method public onHalRestarted()V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssNmeaProvider;->resetService()V

    .line 82
    return-void
.end method

.method public onReportNmea(J)V
    .locals 1
    .param p1, "timestamp"    # J

    .line 86
    new-instance v0, Lcom/android/server/location/gnss/GnssNmeaProvider$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider$1;-><init>(Lcom/android/server/location/gnss/GnssNmeaProvider;J)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/gnss/GnssNmeaProvider;->deliverToListeners(Ljava/util/function/Function;)V

    .line 109
    return-void
.end method

.method protected bridge synthetic registerWithService(Ljava/lang/Object;Ljava/util/Collection;)Z
    .locals 0

    .line 39
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/gnss/GnssNmeaProvider;->registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method protected registerWithService(Ljava/lang/Void;Ljava/util/Collection;)Z
    .locals 2
    .param p1, "ignored"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Void;",
            "Ljava/util/Collection<",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "Ljava/lang/Void;",
            "Landroid/location/IGnssNmeaListener;",
            "Ljava/lang/Void;",
            ">.Gnss",
            "ListenerRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 66
    .local p2, "registrations":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/location/gnss/GnssListenerMultiplexer<Ljava/lang/Void;Landroid/location/IGnssNmeaListener;Ljava/lang/Void;>.GnssListenerRegistration;>;"
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "GnssManager"

    const-string/jumbo v1, "starting gnss nmea messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterWithService()V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/android/server/location/gnss/GnssManagerService;->D:Z

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "GnssManager"

    const-string/jumbo v1, "stopping gnss nmea messages"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    return-void
.end method
