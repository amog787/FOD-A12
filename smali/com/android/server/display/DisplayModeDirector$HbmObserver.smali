.class Lcom/android/server/display/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HbmObserver"
.end annotation


# instance fields
.field private final mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private final mHandler:Landroid/os/Handler;

.field private final mHbmEnabled:Landroid/util/SparseBooleanArray;

.field private final mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector$Injector;Lcom/android/server/display/DisplayModeDirector$BallotBox;Landroid/os/Handler;)V
    .locals 1
    .param p1, "injector"    # Lcom/android/server/display/DisplayModeDirector$Injector;
    .param p2, "ballotBox"    # Lcom/android/server/display/DisplayModeDirector$BallotBox;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 2199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2194
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmEnabled:Landroid/util/SparseBooleanArray;

    .line 2200
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    .line 2201
    iput-object p2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    .line 2202
    iput-object p3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 2203
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2250
    const-string v0, "   HbmObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2252
    return-void
.end method

.method public observe()V
    .locals 4

    .line 2206
    const-class v0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2207
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xa

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/server/display/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    .line 2210
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 2213
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 8
    .param p1, "displayId"    # I

    .line 2222
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    .line 2223
    .local v0, "info":Landroid/hardware/display/BrightnessInfo;
    if-nez v0, :cond_0

    .line 2225
    return-void

    .line 2227
    :cond_0
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 2229
    .local v1, "isHbmEnabled":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v3

    if-ne v1, v3, :cond_2

    .line 2231
    return-void

    .line 2233
    :cond_2
    const/4 v3, 0x0

    .line 2234
    .local v3, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2235
    if-eqz v1, :cond_4

    .line 2236
    iget-object v4, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2237
    invoke-virtual {v4, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v4

    .line 2238
    .local v4, "limits":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 2239
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 2240
    .local v6, "limitation":Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
    iget v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v7, v2, :cond_3

    .line 2241
    iget-object v2, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->min:F

    iget-object v7, v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$RefreshRateRange;->max:F

    invoke-static {v2, v7}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v3

    .line 2242
    goto :goto_2

    .line 2238
    .end local v6    # "limitation":Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2246
    .end local v4    # "limits":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;>;"
    .end local v5    # "i":I
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v4, 0x9

    invoke-interface {v2, p1, v4, v3}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2247
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 2217
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$HbmObserver;->mBallotBox:Lcom/android/server/display/DisplayModeDirector$BallotBox;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/display/DisplayModeDirector$BallotBox;->vote(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2218
    return-void
.end method
