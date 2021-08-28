.class final Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckOpsDelegateDispatcher"
.end annotation


# instance fields
.field private final mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field private final mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method public static synthetic $r8$lambda$4Xrg3LJImAePkUNQfKyEhwrAa4o(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$52nJd1GHIceFhlj2kSVJTjYXjP4(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$5QW1I627hxspeCV4Tl3zmfvAQEc(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6iUzpqAsrHNNZAT8wDQs4LrRyi8(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IIILjava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Gc4PFB4I6q8dwMdKLBLvNRVXSBU(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$PbpU3Eszve011DPcjUEqveXh3R0(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gxHqHAORehCnwMl3p8e8hATu2k8(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$miO9eAps5f-PGP9N8HQxI5gogDo(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    .locals 0
    .param p2, "policy"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .param p3, "checkOpsDelegate"    # Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7438
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7439
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7440
    iput-object p3, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    .line 7441
    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 7433
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;

    .line 7433
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object v0
.end method

.method private checkDelegateAudioOperationImpl(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 7486
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0
.end method

.method private checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 7465
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0
.end method

.method private finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 7648
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    .line 7650
    return-void
.end method

.method private finishDelegateProxyOperationImpl(ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 3
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "skipProxyOperation"    # Z

    .line 7671
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda19;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/TriFunction;)V

    .line 7673
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$checkAudioOperation$2(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;

    .line 7476
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->access$3700(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkDelegateAudioOperationImpl$3(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;

    .line 7487
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->access$3700(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkDelegateOperationImpl$1(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z

    .line 7466
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->access$3600(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$checkOperation$0(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/Integer;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z

    .line 7455
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->access$3600(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$finishDelegateOperationImpl$13(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;

    .line 7649
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->access$4200(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$finishDelegateProxyOperationImpl$15(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z

    .line 7672
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->access$4300(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$finishOperation$12(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;

    .line 7637
    invoke-static/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService;->access$4200(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$finishProxyOperation$14(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z

    .line 7660
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->access$4300(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteDelegateOperationImpl$5(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z

    .line 7517
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->access$3800(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteDelegateProxyOperationImpl$7(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Z

    .line 7548
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->access$3900(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteOperation$4(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # I
    .param p3, "x$2"    # Ljava/lang/String;
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Ljava/lang/String;
    .param p7, "x$6"    # Z

    .line 7501
    invoke-static/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService;->access$3800(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$noteProxyOperation$6(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Z
    .param p6, "x$5"    # Z

    .line 7531
    invoke-static/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService;->access$3900(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startDelegateOperationImpl$9(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Ljava/lang/String;
    .param p9, "x$8"    # Z
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 7585
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->access$4000(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startDelegateProxyOperationImpl$11(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Z
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # I
    .param p9, "x$8"    # I
    .param p10, "x$9"    # I

    .line 7626
    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->access$4100(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startOperation$8(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # Landroid/os/IBinder;
    .param p2, "x$1"    # I
    .param p3, "x$2"    # I
    .param p4, "x$3"    # Ljava/lang/String;
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # Ljava/lang/String;
    .param p9, "x$8"    # Z
    .param p10, "x$9"    # I
    .param p11, "x$10"    # I

    .line 7566
    invoke-static/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService;->access$4000(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$startProxyOperation$10(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 1
    .param p0, "rec$"    # Lcom/android/server/appop/AppOpsService;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/content/AttributionSource;
    .param p3, "x$2"    # Z
    .param p4, "x$3"    # Z
    .param p5, "x$4"    # Ljava/lang/String;
    .param p6, "x$5"    # Z
    .param p7, "x$6"    # Z
    .param p8, "x$7"    # I
    .param p9, "x$8"    # I
    .param p10, "x$9"    # I

    .line 7605
    invoke-static/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService;->access$4100(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "featureId"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 7515
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v9, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method private noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 8
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 7546
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v7, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method private startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 7583
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda22;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method private startDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 13
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "startIfModeDefault"    # Z
    .param p4, "shouldCollectAsyncNotedOp"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "shouldCollectMessage"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "proxyAttributionFlags"    # I
    .param p9, "proxiedAttributionFlsgs"    # I
    .param p10, "attributionChainId"    # I

    .line 7623
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v12, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/DecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public checkAudioOperation(IIILjava/lang/String;)I
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .line 7470
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_1

    .line 7471
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_0

    .line 7472
    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v5, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0

    .line 7475
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v5, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;

    invoke-direct {v5, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkAudioOperation(IIILjava/lang/String;Lcom/android/internal/util/function/QuadFunction;)I

    move-result v0

    return v0

    .line 7478
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    .line 7479
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateAudioOperationImpl(IIILjava/lang/String;)I

    move-result v0

    return v0

    .line 7481
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/appop/AppOpsService;->access$3700(Lcom/android/server/appop/AppOpsService;IIILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOperation(IILjava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "raw"    # Z

    .line 7449
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_1

    .line 7450
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_0

    .line 7451
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0

    .line 7454
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->checkOperation(IILjava/lang/String;Ljava/lang/String;ZLcom/android/internal/util/function/QuintFunction;)I

    move-result v0

    return v0

    .line 7457
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    .line 7458
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->checkDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0

    .line 7460
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->access$3600(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "clientId"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;

    .line 7631
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_1

    .line 7632
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_0

    .line 7633
    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;

    invoke-direct {v6, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_0

    .line 7636
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v6, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;

    invoke-direct {v6, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;Lcom/android/internal/util/function/QuintConsumer;)V

    goto :goto_0

    .line 7639
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    .line 7640
    invoke-direct/range {p0 .. p5}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 7642
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Lcom/android/server/appop/AppOpsService;->access$4200(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;)V

    .line 7644
    :goto_0
    return-void
.end method

.method public finishProxyOperation(ILandroid/content/AttributionSource;Z)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "skipProxyOperation"    # Z

    .line 7654
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_1

    .line 7655
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_0

    .line 7656
    new-instance v1, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/TriFunction;)V

    goto :goto_0

    .line 7659
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v2, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;

    invoke-direct {v2, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/appop/AppOpsService;)V

    invoke-interface {v0, p1, p2, p3, v2}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->finishProxyOperation(ILandroid/content/AttributionSource;ZLcom/android/internal/util/function/TriFunction;)V

    goto :goto_0

    .line 7662
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    .line 7663
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->finishDelegateProxyOperationImpl(ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    goto :goto_0

    .line 7665
    :cond_2
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/appop/AppOpsService;->access$4300(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;Z)Ljava/lang/Void;

    .line 7667
    :goto_0
    return-void
.end method

.method public getCheckOpsDelegate()Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;
    .locals 1

    .line 7444
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    return-object v0
.end method

.method public noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;
    .locals 10
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "shouldCollectAsyncNotedOp"    # Z
    .param p6, "message"    # Ljava/lang/String;
    .param p7, "shouldCollectMessage"    # Z

    .line 7493
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_1

    .line 7494
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_0

    .line 7495
    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7499
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v9, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v9, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteOperation(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/util/function/HeptFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7503
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_2

    .line 7504
    invoke-direct/range {p0 .. p7}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateOperationImpl(IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7507
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/appop/AppOpsService;->access$3800(Lcom/android/server/appop/AppOpsService;IILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;
    .locals 8
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "shouldCollectAsyncNotedOp"    # Z
    .param p4, "message"    # Ljava/lang/String;
    .param p5, "shouldCollectMessage"    # Z
    .param p6, "skipProxyOperation"    # Z

    .line 7523
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_1

    .line 7524
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_0

    .line 7525
    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7529
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v7, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v7, v1}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v7}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->noteProxyOperation(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZLcom/android/internal/util/function/HexFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7533
    :cond_1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v0, :cond_2

    .line 7534
    invoke-direct/range {p0 .. p6}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->noteDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0

    .line 7538
    :cond_2
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v1 .. v7}, Lcom/android/server/appop/AppOpsService;->access$3900(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZLjava/lang/String;ZZ)Landroid/app/SyncNotedAppOp;

    move-result-object v0

    return-object v0
.end method

.method public startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;
    .locals 14
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "attributionTag"    # Ljava/lang/String;
    .param p6, "startIfModeDefault"    # Z
    .param p7, "shouldCollectAsyncNotedOp"    # Z
    .param p8, "message"    # Ljava/lang/String;
    .param p9, "shouldCollectMessage"    # Z
    .param p10, "attributionFlags"    # I
    .param p11, "attributionChainId"    # I

    .line 7556
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_1

    .line 7557
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_0

    .line 7558
    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;

    invoke-direct {v13, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda21;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7563
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v13, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;

    invoke-direct {v13, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda23;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    invoke-interface/range {v1 .. v13}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startOperation(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZIILcom/android/internal/util/function/UndecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7568
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_2

    .line 7569
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateOperationImpl(Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7573
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-static/range {v2 .. v13}, Lcom/android/server/appop/AppOpsService;->access$4000(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;IILjava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method

.method public startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;
    .locals 13
    .param p1, "code"    # I
    .param p2, "attributionSource"    # Landroid/content/AttributionSource;
    .param p3, "startIfModeDefault"    # Z
    .param p4, "shouldCollectAsyncNotedOp"    # Z
    .param p5, "message"    # Ljava/lang/String;
    .param p6, "shouldCollectMessage"    # Z
    .param p7, "skipProxyOperation"    # Z
    .param p8, "proxyAttributionFlags"    # I
    .param p9, "proxiedAttributionFlags"    # I
    .param p10, "attributionChainId"    # I

    .line 7593
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mPolicy:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_1

    .line 7594
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v2, :cond_0

    .line 7595
    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;)V

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/DecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7601
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    new-instance v12, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v12, v2}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/appop/AppOpsService;)V

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-interface/range {v1 .. v12}, Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;->startProxyOperation(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIIILcom/android/internal/util/function/DecFunction;)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7607
    :cond_1
    iget-object v1, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->mCheckOpsDelegate:Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;

    if-eqz v1, :cond_2

    .line 7608
    invoke-direct/range {p0 .. p10}, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->startDelegateProxyOperationImpl(ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1

    .line 7613
    :cond_2
    iget-object v2, v0, Lcom/android/server/appop/AppOpsService$CheckOpsDelegateDispatcher;->this$0:Lcom/android/server/appop/AppOpsService;

    move v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v2 .. v12}, Lcom/android/server/appop/AppOpsService;->access$4100(Lcom/android/server/appop/AppOpsService;ILandroid/content/AttributionSource;ZZLjava/lang/String;ZZIII)Landroid/app/SyncNotedAppOp;

    move-result-object v1

    return-object v1
.end method
