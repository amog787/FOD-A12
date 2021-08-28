.class Lcom/android/server/display/DisplayModeDirector$SensorObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorObserver"
.end annotation


# static fields
.field private static final PROXIMITY_SENSOR_NAME:Ljava/lang/String;

.field private static final PROXIMITY_SENSOR_TYPE:Ljava/lang/String; = "android.sensor.proximity"


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private final mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mIsProxActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2131
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->PROXIMITY_SENSOR_NAME:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayModeDirector$BallotBox;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ballotBox"    # Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2142
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    .line 2143
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2144
    return-void
.end method

.method private recalculateVotes()V
    .locals 9

    .line 2164
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 2165
    .local v0, "displays":[Landroid/view/Display;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2166
    .local v3, "d":Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    .line 2167
    .local v4, "displayId":I
    const/4 v5, 0x0

    .line 2168
    .local v5, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-boolean v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eqz v6, :cond_0

    .line 2169
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    sget-object v7, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->PROXIMITY_SENSOR_NAME:Ljava/lang/String;

    .line 2170
    const-string v8, "android.sensor.proximity"

    invoke-virtual {v6, v4, v7, v8}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateForDisplayAndSensor(ILjava/lang/String;Ljava/lang/String;)Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    move-result-object v6

    .line 2172
    .local v6, "rate":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    if-eqz v6, :cond_0

    .line 2173
    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget v8, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v7, v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v5

    .line 2176
    .end local v6    # "rate":Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;
    :cond_0
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v7, 0xa

    invoke-interface {v6, v4, v7, v5}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2165
    .end local v3    # "d":Landroid/view/Display;
    .end local v4    # "displayId":I
    .end local v5    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2178
    :cond_1
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2181
    const-string v0, "  SensorObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mIsProxActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2183
    return-void
.end method

.method public observe()V
    .locals 2

    .line 2155
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 2156
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2158
    const-class v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2159
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sensors/SensorManagerInternal;

    .line 2160
    .local v0, "sensorManager":Lcom/android/server/sensors/SensorManagerInternal;
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/sensors/SensorManagerInternal;->addProximityActiveListener(Ljava/util/concurrent/Executor;Lcom/android/server/sensors/SensorManagerInternal$ProximityActiveListener;)V

    .line 2161
    return-void
.end method

.method public onProximityActive(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .line 2148
    iget-boolean v0, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    if-eq v0, p1, :cond_0

    .line 2149
    iput-boolean p1, p0, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->mIsProxActive:Z

    .line 2150
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector$SensorObserver;->recalculateVotes()V

    .line 2152
    :cond_0
    return-void
.end method
