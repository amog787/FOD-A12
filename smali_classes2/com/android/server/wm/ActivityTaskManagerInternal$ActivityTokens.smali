.class public final Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
.super Ljava/lang/Object;
.source "ActivityTaskManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ActivityTokens"
.end annotation


# instance fields
.field private final mActivityToken:Landroid/os/IBinder;

.field private final mAppThread:Landroid/app/IApplicationThread;

.field private final mAssistToken:Landroid/os/IBinder;

.field private final mShareableActivityToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerInternal;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/IApplicationThread;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerInternal;
    .param p2, "activityToken"    # Landroid/os/IBinder;
    .param p3, "assistToken"    # Landroid/os/IBinder;
    .param p4, "appThread"    # Landroid/app/IApplicationThread;
    .param p5, "shareableActivityToken"    # Landroid/os/IBinder;

    .line 357
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->this$0:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 358
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    .line 359
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    .line 360
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    .line 361
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    .line 362
    return-void
.end method


# virtual methods
.method public getActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mActivityToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getApplicationThread()Landroid/app/IApplicationThread;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAppThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method public getAssistToken()Landroid/os/IBinder;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mAssistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public getShareableActivityToken()Landroid/os/IBinder;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->mShareableActivityToken:Landroid/os/IBinder;

    return-object v0
.end method
