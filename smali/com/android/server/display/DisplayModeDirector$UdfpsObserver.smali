.class Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;
.super Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UdfpsObserver"
.end annotation


# instance fields
.field private final mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

.field private final mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0

    .line 2053
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsHbmListener$Stub;-><init>()V

    .line 2054
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    .line 2055
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayModeDirector;Lcom/android/server/display/DisplayModeDirector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p2, "x1"    # Lcom/android/server/display/DisplayModeDirector$1;

    .line 2053
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    return-void
.end method

.method private updateHbmStateLocked(IIZ)V
    .locals 2
    .param p1, "hbmType"    # I
    .param p2, "displayId"    # I
    .param p3, "enabled"    # Z

    .line 2078
    packed-switch p1, :pswitch_data_0

    .line 2086
    const-string v0, "DisplayModeDirector"

    const-string v1, "Unknown HBM type reported. Ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2087
    return-void

    .line 2080
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2081
    goto :goto_0

    .line 2083
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2084
    nop

    .line 2089
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateVoteLocked(I)V

    .line 2090
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateVoteLocked(I)V
    .locals 6
    .param p1, "displayId"    # I

    .line 2094
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0, v0}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .local v0, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_1

    .line 2096
    .end local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2097
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$1100(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    .line 2098
    .local v0, "modes":[Landroid/view/Display$Mode;
    const/4 v1, 0x0

    .line 2099
    .local v1, "maxRefreshRate":F
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 2100
    .local v4, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v5

    cmpl-float v5, v5, v1

    if-lez v5, :cond_1

    .line 2101
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v1

    .line 2099
    .end local v4    # "mode":Landroid/view/Display$Mode;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2104
    :cond_2
    invoke-static {v1, v1}, Lcom/android/server/display/DisplayModeDirector$Vote;->forRefreshRates(FF)Lcom/android/server/display/DisplayModeDirector$Vote;

    move-result-object v0

    .line 2105
    .end local v1    # "maxRefreshRate":F
    .local v0, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    goto :goto_1

    .line 2106
    .end local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_3
    const/4 v0, 0x0

    .line 2109
    .restart local v0    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    const/16 v2, 0xb

    invoke-static {v1, p1, v2, v0}, Lcom/android/server/display/DisplayModeDirector;->access$1000(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 2110
    return-void
.end method


# virtual methods
.method dumpLocked(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2113
    const-string v0, "  UdfpsObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2114
    const-string v0, "    mLocalHbmEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const-string v2, ": "

    const-string v3, "      Display "

    const-string v4, "enabled"

    const-string v5, "disabled"

    if-ge v0, v1, :cond_1

    .line 2116
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2117
    .local v1, "displayId":I
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mLocalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    move-object v4, v5

    .line 2118
    .local v4, "enabled":Ljava/lang/String;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2115
    .end local v1    # "displayId":I
    .end local v4    # "enabled":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2120
    .end local v0    # "i":I
    :cond_1
    const-string v0, "    mGlobalHbmEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 2122
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 2123
    .restart local v1    # "displayId":I
    iget-object v6, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->mGlobalHbmEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    goto :goto_3

    :cond_2
    move-object v6, v5

    .line 2124
    .local v6, "enabled":Ljava/lang/String;
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2121
    .end local v1    # "displayId":I
    .end local v6    # "enabled":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2127
    .end local v0    # "i":I
    :cond_3
    return-void
.end method

.method public observe()V
    .locals 1

    .line 2058
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2059
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 2060
    .local v0, "statusBar":Lcom/android/server/statusbar/StatusBarManagerInternal;
    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setUdfpsHbmListener(Landroid/hardware/fingerprint/IUdfpsHbmListener;)V

    .line 2061
    return-void
.end method

.method public onHbmDisabled(II)V
    .locals 2
    .param p1, "hbmType"    # I
    .param p2, "displayId"    # I

    .line 2072
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2073
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IIZ)V

    .line 2074
    monitor-exit v0

    .line 2075
    return-void

    .line 2074
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHbmEnabled(II)V
    .locals 2
    .param p1, "hbmType"    # I
    .param p2, "displayId"    # I

    .line 2065
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$600(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2066
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayModeDirector$UdfpsObserver;->updateHbmStateLocked(IIZ)V

    .line 2067
    monitor-exit v0

    .line 2068
    return-void

    .line 2067
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
