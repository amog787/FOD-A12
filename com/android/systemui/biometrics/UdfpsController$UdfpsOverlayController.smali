.class public Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;
.super Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;
.source "UdfpsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/UdfpsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UdfpsOverlayController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/UdfpsController;


# direct methods
.method public static synthetic $r8$lambda$-QYX2YO3zRYodCRYRN_mnK-3RV8(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$onEnrollmentHelp$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$BrhhEv0cw83wZTAfbhArrn2RwE8(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$onAcquiredGood$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$M_mLIc576Or0pqdgftyFE-z66sQ(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$showUdfpsOverlay$0(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$behrX4d1KjHk_hbqYXCIU0w3ukU(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$setDebugMessage$5(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lXnWkg9kx7UpFPtPE9b_jPc117E(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$onEnrollmentProgress$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$y33ymTm4V6DTGSVArwSrGPyRUHY(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->lambda$hideUdfpsOverlay$1()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-direct {p0}, Landroid/hardware/fingerprint/IUdfpsOverlayController$Stub;-><init>()V

    return-void
.end method

.method private synthetic lambda$hideUdfpsOverlay$1()V
    .locals 1

    .line 253
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    .line 254
    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$500(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method

.method private synthetic lambda$onAcquiredGood$2(I)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$300(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object v0

    const-string v1, "UdfpsController"

    if-nez v0, :cond_0

    .line 262
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Null view when onAcquiredGood for sensorId: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 265
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$402(Lcom/android/systemui/biometrics/UdfpsController;Z)Z

    .line 266
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$300(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/UdfpsView;->stopIllumination()V

    .line 267
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-eqz p0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onAcquiredGood()V

    goto :goto_0

    :cond_1
    const-string p0, "Null serverRequest when onAcquiredGood"

    .line 270
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic lambda$onEnrollmentHelp$4()V
    .locals 1

    .line 289
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-nez p0, :cond_0

    const-string p0, "UdfpsController"

    const-string v0, "onEnrollmentHelp received but serverRequest is null"

    .line 290
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onEnrollmentHelp()V

    return-void
.end method

.method private synthetic lambda$onEnrollmentProgress$3(I)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    if-nez p0, :cond_0

    const-string p0, "UdfpsController"

    const-string p1, "onEnrollProgress received but serverRequest is null"

    .line 279
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 282
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;->onEnrollmentProgress(I)V

    return-void
.end method

.method private synthetic lambda$setDebugMessage$5(Ljava/lang/String;)V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$300(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$300(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/biometrics/UdfpsView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/UdfpsView;->setDebugMessage(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showUdfpsOverlay$0(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 241
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v1}, Lcom/android/systemui/biometrics/UdfpsController;->access$600(Lcom/android/systemui/biometrics/UdfpsController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/systemui/biometrics/UdfpsEnrollHelper;-><init>(Landroid/content/Context;I)V

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    new-instance v2, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;-><init>(ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lcom/android/systemui/biometrics/UdfpsEnrollHelper;)V

    iput-object v2, v1, Lcom/android/systemui/biometrics/UdfpsController;->mServerRequest:Lcom/android/systemui/biometrics/UdfpsController$ServerRequest;

    .line 246
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p0}, Lcom/android/systemui/biometrics/UdfpsController;->access$500(Lcom/android/systemui/biometrics/UdfpsController;)V

    return-void
.end method


# virtual methods
.method public hideUdfpsOverlay(I)V
    .locals 1

    .line 252
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAcquiredGood(I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {v0}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEnrollmentHelp(I)V
    .locals 1

    .line 288
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onEnrollmentProgress(II)V
    .locals 1

    .line 277
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDebugMessage(ILjava/lang/String;)V
    .locals 1

    .line 299
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;ILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


.method public onAcquired(III)V
    .locals 1

    .line 310
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;->this$0:Lcom/android/systemui/biometrics/UdfpsController;

    invoke-static {p1}, Lcom/android/systemui/biometrics/UdfpsController;->access$200(Lcom/android/systemui/biometrics/UdfpsController;)Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController;II)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method