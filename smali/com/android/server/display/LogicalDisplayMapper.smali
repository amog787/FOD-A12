.class Lcom/android/server/display/LogicalDisplayMapper;
.super Ljava/lang/Object;
.source "LogicalDisplayMapper.java"

# interfaces
.implements Lcom/android/server/display/DisplayDeviceRepository$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;,
        Lcom/android/server/display/LogicalDisplayMapper$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DISPLAY_GROUP_EVENT_ADDED:I = 0x1

.field public static final DISPLAY_GROUP_EVENT_CHANGED:I = 0x2

.field public static final DISPLAY_GROUP_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_ADDED:I = 0x1

.field public static final LOGICAL_DISPLAY_EVENT_CHANGED:I = 0x2

.field public static final LOGICAL_DISPLAY_EVENT_DEVICE_STATE_TRANSITION:I = 0x6

.field public static final LOGICAL_DISPLAY_EVENT_FRAME_RATE_OVERRIDES_CHANGED:I = 0x5

.field public static final LOGICAL_DISPLAY_EVENT_REMOVED:I = 0x3

.field public static final LOGICAL_DISPLAY_EVENT_SWAPPED:I = 0x4

.field private static final MSG_TRANSITION_TO_PENDING_DEVICE_STATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LogicalDisplayMapper"

.field private static final TIMEOUT_STATE_TRANSITION_MILLIS:I = 0x1f4

.field private static final UPDATE_STATE_NEW:I = 0x0

.field private static final UPDATE_STATE_TRANSITION:I = 0x1

.field private static final UPDATE_STATE_UPDATED:I = 0x2


# instance fields
.field private mCurrentLayout:Lcom/android/server/display/layout/Layout;

.field private mDeviceState:I

.field private final mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

.field private final mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

.field private final mDisplayGroups:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

.field private final mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

.field private final mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

.field private final mLogicalDisplays:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

.field private mNextNonDefaultGroupId:I

.field private mPendingDeviceState:I

.field private final mSingleDisplayDemoMode:Z

.field private final mSupportsConcurrentInternalDisplays:Z

.field private final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field private final mTempDisplayInfo:Landroid/view/DisplayInfo;

.field private final mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

.field private final mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

.field private final mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/display/DisplayDeviceRepository;Lcom/android/server/display/LogicalDisplayMapper$Listener;Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "repo"    # Lcom/android/server/display/DisplayDeviceRepository;
    .param p3, "listener"    # Lcom/android/server/display/LogicalDisplayMapper$Listener;
    .param p4, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p5, "handler"    # Landroid/os/Handler;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    .line 82
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    .line 107
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    .line 121
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    .line 130
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    .line 135
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    .line 140
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 145
    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 150
    iput-object p4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 151
    new-instance v0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    invoke-virtual {p5}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;-><init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    .line 152
    iput-object p2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    .line 153
    iput-object p3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    .line 154
    const-string/jumbo v0, "persist.demo.singledisplay"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    .line 157
    invoke-virtual {p2, p0}, Lcom/android/server/display/DisplayDeviceRepository;->addListener(Lcom/android/server/display/DisplayDeviceRepository$Listener;)V

    .line 158
    new-instance v0, Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-direct {v0}, Lcom/android/server/display/DeviceStateToLayoutMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LogicalDisplayMapper;

    .line 54
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/LogicalDisplayMapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LogicalDisplayMapper;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    return-void
.end method

.method private applyLayoutLocked()V
    .locals 11

    .line 637
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 638
    .local v0, "oldLayout":Lcom/android/server/display/layout/Layout;
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    iget v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v1, v2}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Previous layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogicalDisplayMapper"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1}, Lcom/android/server/display/layout/Layout;->size()I

    move-result v1

    .line 643
    .local v1, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_4

    .line 644
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v4, v3}, Lcom/android/server/display/layout/Layout;->getAt(I)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v4

    .line 650
    .local v4, "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    .line 651
    .local v5, "address":Landroid/view/DisplayAddress;
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v6, v5}, Lcom/android/server/display/DisplayDeviceRepository;->getByAddressLocked(Landroid/view/DisplayAddress;)Lcom/android/server/display/DisplayDevice;

    move-result-object v6

    .line 652
    .local v6, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v6, :cond_0

    .line 653
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The display device ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "), is not available for the display state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    goto :goto_1

    .line 660
    :cond_0
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v7

    .line 661
    .local v7, "logicalDisplayId":I
    invoke-virtual {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    .line 662
    .local v8, "newDisplay":Lcom/android/server/display/LogicalDisplay;
    if-nez v8, :cond_1

    .line 663
    const/4 v9, 0x0

    invoke-direct {p0, v9, v7}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v8

    .line 668
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;

    move-result-object v9

    .line 669
    .local v9, "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    if-eq v8, v9, :cond_2

    .line 670
    invoke-virtual {v8, v9}, Lcom/android/server/display/LogicalDisplay;->swapDisplaysLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 673
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 674
    const/4 v10, -0x1

    invoke-direct {p0, v8, v10}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 643
    .end local v4    # "displayLayout":Lcom/android/server/display/layout/Layout$Display;
    .end local v5    # "address":Landroid/view/DisplayAddress;
    .end local v6    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v7    # "logicalDisplayId":I
    .end local v8    # "newDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "oldDisplay":Lcom/android/server/display/LogicalDisplay;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 678
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private areAllTransitioningDisplaysOffLocked()Z
    .locals 7

    .line 304
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 305
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 306
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LogicalDisplay;

    .line 307
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v4

    if-eqz v4, :cond_0

    .line 308
    goto :goto_1

    .line 311
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v4

    .line 312
    .local v4, "device":Lcom/android/server/display/DisplayDevice;
    if-eqz v4, :cond_1

    .line 313
    invoke-virtual {v4}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v5

    .line 314
    .local v5, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    if-eq v6, v2, :cond_1

    .line 315
    const/4 v2, 0x0

    return v2

    .line 305
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v4    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v5    # "info":Lcom/android/server/display/DisplayDeviceInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_2
    return v2
.end method

.method private assignDisplayGroupIdLocked(Z)I
    .locals 2
    .param p1, "isOwnDisplayGroup"    # Z

    .line 715
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mNextNonDefaultGroupId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V
    .locals 9
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;

    .line 536
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 539
    .local v0, "displayId":I
    invoke-virtual {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v1

    .line 540
    .local v1, "groupId":I
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 543
    .local v2, "oldGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v3

    .line 544
    .local v3, "info":Landroid/view/DisplayInfo;
    iget v4, v3, Landroid/view/DisplayInfo;->flags:I

    and-int/lit16 v4, v4, 0x100

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 545
    .local v4, "needsOwnDisplayGroup":Z
    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v5, v6

    .line 546
    .local v5, "hasOwnDisplayGroup":Z
    :goto_1
    const/4 v6, -0x1

    if-eq v1, v6, :cond_2

    if-eq v5, v4, :cond_3

    .line 548
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupIdLocked(Z)I

    move-result v1

    .line 552
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v6

    .line 553
    .local v6, "newGroup":Lcom/android/server/display/DisplayGroup;
    if-nez v6, :cond_4

    .line 554
    new-instance v7, Lcom/android/server/display/DisplayGroup;

    invoke-direct {v7, v1}, Lcom/android/server/display/DisplayGroup;-><init>(I)V

    move-object v6, v7

    .line 555
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 557
    :cond_4
    if-eq v2, v6, :cond_7

    .line 558
    if-eqz v2, :cond_5

    .line 559
    invoke-virtual {v2, p1}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 561
    :cond_5
    invoke-virtual {v6, p1}, Lcom/android/server/display/DisplayGroup;->addDisplayLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 562
    invoke-virtual {p1, v1}, Lcom/android/server/display/LogicalDisplay;->updateDisplayGroupIdLocked(I)V

    .line 563
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setting new display group "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for display "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", from previous group: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/display/DisplayGroup;->getGroupId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_2

    :cond_6
    const-string/jumbo v8, "null"

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 563
    const-string v8, "LogicalDisplayMapper"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_7
    return-void
.end method

.method private assignLayerStackLocked(I)I
    .locals 0
    .param p1, "displayId"    # I

    .line 733
    return p1
.end method

.method private createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "displayId"    # I

    .line 691
    invoke-direct {p0, p2}, Lcom/android/server/display/LogicalDisplayMapper;->assignLayerStackLocked(I)I

    move-result v0

    .line 692
    .local v0, "layerStack":I
    new-instance v1, Lcom/android/server/display/LogicalDisplay;

    invoke-direct {v1, p2, v0, p1}, Lcom/android/server/display/LogicalDisplay;-><init>(IILcom/android/server/display/DisplayDevice;)V

    .line 693
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 694
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 695
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 696
    return-object v1
.end method

.method private displayEventToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # I

    .line 737
    packed-switch p1, :pswitch_data_0

    .line 751
    const/4 v0, 0x0

    return-object v0

    .line 741
    :pswitch_0
    const-string/jumbo v0, "transition"

    return-object v0

    .line 745
    :pswitch_1
    const-string v0, "framerate_override"

    return-object v0

    .line 747
    :pswitch_2
    const-string/jumbo v0, "swapped"

    return-object v0

    .line 749
    :pswitch_3
    const-string/jumbo v0, "removed"

    return-object v0

    .line 743
    :pswitch_4
    const-string v0, "changed"

    return-object v0

    .line 739
    :pswitch_5
    const-string v0, "added"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private finishStateTransitionLocked(Z)V
    .locals 3
    .param p1, "force"    # Z

    .line 331
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 332
    return-void

    .line 335
    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v0

    .line 336
    .local v0, "displaysOff":Z
    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    .line 337
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 338
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->removeMessages(I)V

    .line 343
    :cond_2
    return-void
.end method

.method private handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 346
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v0

    .line 351
    .local v0, "deviceInfo":Lcom/android/server/display/DisplayDeviceInfo;
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 352
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->initializeInternalDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 356
    :cond_0
    const/4 v1, 0x0

    .line 357
    invoke-static {v1}, Lcom/android/server/display/layout/Layout;->assignDisplayIdLocked(Z)I

    move-result v1

    .line 356
    invoke-direct {p0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->createNewLogicalDisplayLocked(Lcom/android/server/display/DisplayDevice;I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v1

    .line 359
    .local v1, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 360
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 361
    return-void
.end method

.method private initializeInternalDisplayDeviceLocked(Lcom/android/server/display/DisplayDevice;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 723
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v0

    .line 724
    .local v0, "layout":Lcom/android/server/display/layout/Layout;
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v1

    .line 725
    .local v1, "info":Lcom/android/server/display/DisplayDeviceInfo;
    iget v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 726
    .local v2, "isDefault":Z
    :goto_0
    if-nez v2, :cond_2

    iget-boolean v5, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSupportsConcurrentInternalDisplays:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 727
    .local v3, "isEnabled":Z
    :cond_2
    :goto_1
    iget-object v4, v1, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/layout/Layout;->createDisplayLocked(Landroid/view/DisplayAddress;ZZ)Lcom/android/server/display/layout/Layout$Display;

    .line 728
    return-void
.end method

.method private resetLayoutLocked(III)V
    .locals 19
    .param p1, "fromState"    # I
    .param p2, "toState"    # I
    .param p3, "phase"    # I

    .line 582
    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-object v2, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v2

    .line 583
    .local v2, "fromLayout":Lcom/android/server/display/layout/Layout;
    iget-object v4, v0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    move/from16 v5, p2

    invoke-virtual {v4, v5}, Lcom/android/server/display/DeviceStateToLayoutMap;->get(I)Lcom/android/server/display/layout/Layout;

    move-result-object v4

    .line 585
    .local v4, "toLayout":Lcom/android/server/display/layout/Layout;
    iget-object v6, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    .line 586
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_c

    .line 587
    iget-object v8, v0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LogicalDisplay;

    .line 588
    .local v8, "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v9

    .line 589
    .local v9, "displayId":I
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v10

    .line 590
    .local v10, "device":Lcom/android/server/display/DisplayDevice;
    if-nez v10, :cond_0

    .line 592
    goto/16 :goto_9

    .line 597
    :cond_0
    invoke-virtual {v10}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v11

    iget-object v11, v11, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 601
    .local v11, "address":Landroid/view/DisplayAddress;
    const/4 v12, 0x0

    if-eqz v11, :cond_1

    invoke-virtual {v2, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v13

    goto :goto_1

    :cond_1
    move-object v13, v12

    .line 603
    .local v13, "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    :goto_1
    if-eqz v11, :cond_2

    invoke-virtual {v4, v11}, Lcom/android/server/display/layout/Layout;->getByAddress(Landroid/view/DisplayAddress;)Lcom/android/server/display/layout/Layout$Display;

    move-result-object v12

    .line 607
    .local v12, "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    :cond_2
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v16

    if-eqz v16, :cond_3

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v16, 0x1

    .line 608
    .local v16, "wasEnabled":Z
    :goto_3
    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    goto :goto_4

    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/16 v17, 0x1

    .line 610
    .local v17, "willBeEnabled":Z
    :goto_5
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 611
    invoke-virtual {v13}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v14

    invoke-virtual {v12}, Lcom/android/server/display/layout/Layout$Display;->getLogicalDisplayId()I

    move-result v15

    if-eq v14, v15, :cond_7

    const/4 v14, 0x1

    goto :goto_6

    :cond_7
    const/4 v14, 0x0

    .line 619
    .local v14, "deviceHasNewLogicalDisplayId":Z
    :goto_6
    nop

    .line 620
    invoke-virtual {v8}, Lcom/android/server/display/LogicalDisplay;->getPhase()I

    move-result v15

    if-eqz v15, :cond_a

    if-eqz v16, :cond_8

    if-eqz v17, :cond_a

    :cond_8
    if-eqz v16, :cond_9

    if-eqz v14, :cond_9

    goto :goto_7

    :cond_9
    const/16 v18, 0x0

    goto :goto_8

    :cond_a
    :goto_7
    const/16 v18, 0x1

    :goto_8
    move/from16 v15, v18

    .line 624
    .local v15, "isTransitioning":Z
    if-eqz v15, :cond_b

    .line 625
    invoke-direct {v0, v8, v1}, Lcom/android/server/display/LogicalDisplayMapper;->setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V

    .line 626
    if-nez v1, :cond_b

    .line 627
    iget-object v1, v0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    const/4 v0, 0x1

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 586
    .end local v8    # "logicalDisplay":Lcom/android/server/display/LogicalDisplay;
    .end local v9    # "displayId":I
    .end local v10    # "device":Lcom/android/server/display/DisplayDevice;
    .end local v11    # "address":Landroid/view/DisplayAddress;
    .end local v12    # "toDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v13    # "fromDisplay":Lcom/android/server/display/layout/Layout$Display;
    .end local v14    # "deviceHasNewLogicalDisplayId":Z
    .end local v15    # "isTransitioning":Z
    .end local v16    # "wasEnabled":Z
    .end local v17    # "willBeEnabled":Z
    :cond_b
    :goto_9
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    goto/16 :goto_0

    .line 631
    .end local v7    # "i":I
    :cond_c
    return-void
.end method

.method private sendUpdatesForDisplaysLocked(I)V
    .locals 5
    .param p1, "msg"    # I

    .line 492
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 493
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 494
    .local v1, "currMsg":I
    if-eq v1, p1, :cond_0

    .line 495
    goto :goto_1

    .line 498
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 499
    .local v2, "id":I
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v3

    .line 506
    .local v3, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v4, v3, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onLogicalDisplayEventLocked(Lcom/android/server/display/LogicalDisplay;I)V

    .line 507
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 510
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 492
    .end local v1    # "currMsg":I
    .end local v2    # "id":I
    .end local v3    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 513
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private sendUpdatesForGroupsLocked(I)V
    .locals 4
    .param p1, "msg"    # I

    .line 519
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 520
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    .line 521
    .local v1, "currMsg":I
    if-eq v1, p1, :cond_0

    .line 522
    goto :goto_1

    .line 525
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 526
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v3, v2, p1}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onDisplayGroupEventLocked(II)V

    .line 527
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 519
    .end local v1    # "currMsg":I
    .end local v2    # "id":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 533
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private setDisplayPhase(Lcom/android/server/display/LogicalDisplay;I)V
    .locals 5
    .param p1, "display"    # Lcom/android/server/display/LogicalDisplay;
    .param p2, "phase"    # I

    .line 700
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayIdLocked()I

    move-result v0

    .line 701
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 703
    .local v1, "info":Landroid/view/DisplayInfo;
    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/view/DisplayInfo;->type:I

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v2, v3

    .line 705
    .local v2, "disallowSecondaryDisplay":Z
    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    if-eqz v2, :cond_1

    .line 706
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not creating a logical display for a secondary display because single display demo mode is enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    invoke-virtual {p1}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    const-string v4, "LogicalDisplayMapper"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    const/4 p2, -0x1

    .line 711
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/server/display/LogicalDisplay;->setPhase(I)V

    .line 712
    return-void
.end method

.method private transitionToPendingStateLocked()V
    .locals 3

    .line 323
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    iget v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 324
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    .line 325
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 326
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->applyLayoutLocked()V

    .line 327
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 328
    return-void
.end method

.method private updateLogicalDisplaysLocked()V
    .locals 14

    .line 373
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-ltz v0, :cond_a

    .line 374
    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 375
    .local v8, "displayId":I
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/LogicalDisplay;

    .line 377
    .local v9, "display":Lcom/android/server/display/LogicalDisplay;
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 378
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 380
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayDeviceRepo:Lcom/android/server/display/DisplayDeviceRepository;

    invoke-virtual {v9, v10}, Lcom/android/server/display/LogicalDisplay;->updateLocked(Lcom/android/server/display/DisplayDeviceRepository;)V

    .line 381
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 382
    .local v10, "newDisplayInfo":Landroid/view/DisplayInfo;
    iget-object v11, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v11, v8, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v11

    .line 383
    .local v11, "updateState":I
    if-eqz v11, :cond_0

    move v5, v1

    .line 386
    .local v5, "wasPreviouslyUpdated":Z
    :cond_0
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->isValidLocked()Z

    move-result v12

    const-string v13, "LogicalDisplayMapper"

    if-nez v12, :cond_3

    .line 387
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 390
    nop

    .line 391
    invoke-virtual {p0, v8}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupIdFromDisplayIdLocked(I)I

    move-result v2

    .line 390
    invoke-virtual {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;

    move-result-object v2

    .line 392
    .local v2, "displayGroup":Lcom/android/server/display/DisplayGroup;
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2, v9}, Lcom/android/server/display/DisplayGroup;->removeDisplayLocked(Lcom/android/server/display/LogicalDisplay;)Z

    .line 396
    :cond_1
    if-eqz v5, :cond_2

    .line 399
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing display: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto/16 :goto_2

    .line 403
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 405
    goto/16 :goto_2

    .line 408
    .end local v2    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_3
    if-nez v5, :cond_4

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding new display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 411
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 414
    :cond_4
    iget-object v6, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v6, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v12, v10, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v6, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 416
    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 417
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v8, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 420
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v10}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 422
    invoke-direct {p0, v9}, Lcom/android/server/display/LogicalDisplayMapper;->assignDisplayGroupLocked(Lcom/android/server/display/LogicalDisplay;)V

    .line 423
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 425
    :cond_6
    if-ne v11, v1, :cond_7

    .line 426
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 430
    :cond_7
    invoke-virtual {v9}, Lcom/android/server/display/LogicalDisplay;->getPendingFrameRateOverrideUids()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 431
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 439
    :cond_8
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v9, v2}, Lcom/android/server/display/LogicalDisplay;->getNonOverrideDisplayInfoLocked(Landroid/view/DisplayInfo;)V

    .line 440
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempNonOverrideDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mTempDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v3}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 441
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    :cond_9
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedLogicalDisplays:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 373
    .end local v5    # "wasPreviouslyUpdated":Z
    .end local v8    # "displayId":I
    .end local v9    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v10    # "newDisplayInfo":Landroid/view/DisplayInfo;
    .end local v11    # "updateState":I
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 452
    .end local v0    # "i":I
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .restart local v0    # "i":I
    :goto_3
    if-ltz v0, :cond_10

    .line 453
    iget-object v8, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 454
    .local v8, "groupId":I
    iget-object v9, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/display/DisplayGroup;

    .line 455
    .local v9, "group":Lcom/android/server/display/DisplayGroup;
    iget-object v10, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v10, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_b

    move v10, v1

    goto :goto_4

    :cond_b
    move v10, v5

    .line 456
    .local v10, "wasPreviouslyUpdated":Z
    :goto_4
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->getChangeCountLocked()I

    move-result v11

    .line 458
    .local v11, "changeCount":I
    invoke-virtual {v9}, Lcom/android/server/display/DisplayGroup;->isEmptyLocked()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 459
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseIntArray;->delete(I)V

    .line 460
    if-eqz v10, :cond_f

    .line 461
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_6

    .line 464
    :cond_c
    if-nez v10, :cond_d

    .line 465
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_5

    .line 466
    :cond_d
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v12

    if-eq v12, v11, :cond_e

    .line 467
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    :cond_e
    :goto_5
    iget-object v12, p0, Lcom/android/server/display/LogicalDisplayMapper;->mUpdatedDisplayGroups:Landroid/util/SparseIntArray;

    invoke-virtual {v12, v8, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 452
    .end local v8    # "groupId":I
    .end local v9    # "group":Lcom/android/server/display/DisplayGroup;
    .end local v10    # "wasPreviouslyUpdated":Z
    .end local v11    # "changeCount":I
    :cond_f
    :goto_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 474
    .end local v0    # "i":I
    :cond_10
    invoke-direct {p0, v4}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 475
    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 476
    invoke-direct {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 477
    invoke-direct {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 478
    invoke-direct {p0, v3}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 479
    invoke-direct {p0, v2}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 480
    invoke-direct {p0, v1}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForDisplaysLocked(I)V

    .line 481
    invoke-direct {p0, v7}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 482
    invoke-direct {p0, v6}, Lcom/android/server/display/LogicalDisplayMapper;->sendUpdatesForGroupsLocked(I)V

    .line 484
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplaysToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 485
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroupsToUpdate:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 486
    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 255
    const-string v0, "LogicalDisplayMapper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 257
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSingleDisplayDemoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mSingleDisplayDemoMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mCurrentLayout:Lcom/android/server/display/layout/Layout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 263
    .local v1, "logicalDisplayCount":I
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logical Displays: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 265
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 266
    iget-object v3, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 267
    .local v3, "displayId":I
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 268
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 270
    invoke-virtual {v4, v0}, Lcom/android/server/display/LogicalDisplay;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 271
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 272
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 265
    .end local v3    # "displayId":I
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceStateToLayoutMap:Lcom/android/server/display/DeviceStateToLayoutMap;

    invoke-virtual {v2, v0}, Lcom/android/server/display/DeviceStateToLayoutMap;->dumpLocked(Landroid/util/IndentingPrintWriter;)V

    .line 275
    return-void
.end method

.method public forEachLocked(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/display/LogicalDisplay;",
            ">;)V"
        }
    .end annotation

    .line 226
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/display/LogicalDisplay;>;"
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 227
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public getDisplayGroupIdFromDisplayIdLocked(I)I
    .locals 6
    .param p1, "displayId"    # I

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;

    move-result-object v0

    .line 235
    .local v0, "display":Lcom/android/server/display/LogicalDisplay;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 236
    return v1

    .line 239
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 240
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 241
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayGroup;

    .line 242
    .local v4, "displayGroup":Lcom/android/server/display/DisplayGroup;
    invoke-virtual {v4, v0}, Lcom/android/server/display/DisplayGroup;->containsLocked(Lcom/android/server/display/LogicalDisplay;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 243
    iget-object v1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    return v1

    .line 240
    .end local v4    # "displayGroup":Lcom/android/server/display/DisplayGroup;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "i":I
    :cond_2
    return v1
.end method

.method public getDisplayGroupLocked(I)Lcom/android/server/display/DisplayGroup;
    .locals 1
    .param p1, "groupId"    # I

    .line 251
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDisplayGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayGroup;

    return-object v0
.end method

.method public getDisplayIdsLocked(I)[I
    .locals 8
    .param p1, "callingUid"    # I

    .line 209
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 210
    .local v0, "count":I
    new-array v1, v0, [I

    .line 211
    .local v1, "displayIds":[I
    const/4 v2, 0x0

    .line 212
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 213
    iget-object v4, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LogicalDisplay;

    .line 214
    .local v4, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v4}, Lcom/android/server/display/LogicalDisplay;->getDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 215
    .local v5, "info":Landroid/view/DisplayInfo;
    invoke-virtual {v5, p1}, Landroid/view/DisplayInfo;->hasAccess(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "n":I
    .local v6, "n":I
    iget-object v7, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    aput v7, v1, v2

    move v2, v6

    .line 212
    .end local v4    # "display":Lcom/android/server/display/LogicalDisplay;
    .end local v5    # "info":Landroid/view/DisplayInfo;
    .end local v6    # "n":I
    .restart local v2    # "n":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "i":I
    :cond_1
    if-eq v2, v0, :cond_2

    .line 220
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    .line 222
    :cond_2
    return-object v1
.end method

.method public getDisplayLocked(I)Lcom/android/server/display/LogicalDisplay;
    .locals 1
    .param p1, "displayId"    # I

    .line 194
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LogicalDisplay;

    return-object v0
.end method

.method public getDisplayLocked(Lcom/android/server/display/DisplayDevice;)Lcom/android/server/display/LogicalDisplay;
    .locals 4
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;

    .line 198
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 199
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 200
    iget-object v2, p0, Lcom/android/server/display/LogicalDisplayMapper;->mLogicalDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LogicalDisplay;

    .line 201
    .local v2, "display":Lcom/android/server/display/LogicalDisplay;
    invoke-virtual {v2}, Lcom/android/server/display/LogicalDisplay;->getPrimaryDisplayDeviceLocked()Lcom/android/server/display/DisplayDevice;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 202
    return-object v2

    .line 199
    .end local v2    # "display":Lcom/android/server/display/LogicalDisplay;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public onDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
    .locals 1
    .param p1, "device"    # Lcom/android/server/display/DisplayDevice;
    .param p2, "event"    # I

    .line 163
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 183
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    goto :goto_0

    .line 175
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->finishStateTransitionLocked(Z)V

    .line 176
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 177
    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/display/LogicalDisplayMapper;->handleDisplayDeviceAddedLocked(Lcom/android/server/display/DisplayDevice;)V

    .line 169
    nop

    .line 186
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onTraversalRequested()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mListener:Lcom/android/server/display/LogicalDisplayMapper$Listener;

    invoke-interface {v0}, Lcom/android/server/display/LogicalDisplayMapper$Listener;->onTraversalRequested()V

    .line 191
    return-void
.end method

.method setDeviceStateLocked(I)V
    .locals 4
    .param p1, "state"    # I

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Requesting Transition to state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogicalDisplayMapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mDeviceState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/display/LogicalDisplayMapper;->resetLayoutLocked(III)V

    .line 286
    :cond_0
    iput p1, p0, Lcom/android/server/display/LogicalDisplayMapper;->mPendingDeviceState:I

    .line 287
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->areAllTransitioningDisplaysOffLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->transitionToPendingStateLocked()V

    .line 290
    return-void

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/LogicalDisplayMapper;->updateLogicalDisplaysLocked()V

    .line 299
    iget-object v0, p0, Lcom/android/server/display/LogicalDisplayMapper;->mHandler:Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 301
    return-void
.end method
