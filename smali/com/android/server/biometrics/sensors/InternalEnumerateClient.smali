.class public abstract Lcom/android/server/biometrics/sensors/InternalEnumerateClient;
.super Lcom/android/server/biometrics/sensors/HalClientMonitor;
.source "InternalEnumerateClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/EnumerateConsumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/server/biometrics/sensors/HalClientMonitor<",
        "TT;>;",
        "Lcom/android/server/biometrics/sensors/EnumerateConsumer;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Biometrics/InternalEnumerateClient"


# instance fields
.field private mEnrolledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUnknownHALTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;ILjava/lang/String;Ljava/util/List;Lcom/android/server/biometrics/sensors/BiometricUtils;II)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "userId"    # I
    .param p5, "owner"    # Ljava/lang/String;
    .param p7, "utils"    # Lcom/android/server/biometrics/sensors/BiometricUtils;
    .param p8, "sensorId"    # I
    .param p9, "statsModality"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<",
            "TT;>;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;",
            "Lcom/android/server/biometrics/sensors/BiometricUtils;",
            "II)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    .local p2, "lazyDaemon":Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;, "Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon<TT;>;"
    .local p6, "enrolledList":Ljava/util/List;, "Ljava/util/List<+Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;>;"
    move-object v12, p0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/biometrics/sensors/HalClientMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/HalClientMonitor$LazyDaemon;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IIIII)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    .line 56
    move-object/from16 v0, p6

    iput-object v0, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    .line 57
    move-object/from16 v1, p7

    iput-object v1, v12, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    .line 58
    return-void
.end method

.method private doTemplateCleanup()V
    .locals 7

    .line 106
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    const-string v1, "Biometrics/InternalEnumerateClient"

    if-nez v0, :cond_0

    .line 107
    const-string v0, "Null enrolledList"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 113
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 114
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 115
    .local v2, "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doTemplateCleanup(): Removing dangling template from framework: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 118
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->getTargetUserId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v6

    .line 117
    invoke-interface {v3, v4, v5, v6}, Lcom/android/server/biometrics/sensors/BiometricUtils;->removeBiometricForUser(Landroid/content/Context;II)V

    .line 119
    const/16 v3, 0x94

    iget v4, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mStatsModality:I

    const/4 v5, 0x2

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 113
    .end local v2    # "identifier":Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 125
    return-void
.end method

.method private handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
    .locals 5
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    .line 84
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    const-string v0, "Biometrics/InternalEnumerateClient"

    if-nez p1, :cond_0

    .line 85
    const-string v1, "Null identifier"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnumeratedTemplate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/4 v1, 0x0

    .line 90
    .local v1, "matched":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 91
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;

    invoke-virtual {v3}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 92
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mEnrolledList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 93
    const/4 v1, 0x1

    .line 94
    goto :goto_1

    .line 90
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    .end local v2    # "i":I
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;->getBiometricId()I

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Matched: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 1

    .line 133
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    const/4 v0, 0x6

    return v0
.end method

.method public getUnknownHALTemplates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            ">;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mUnknownHALTemplates:Ljava/util/List;

    return-object v0
.end method

.method public onEnumerationResult(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;I)V
    .locals 2
    .param p1, "identifier"    # Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;
    .param p2, "remaining"    # I

    .line 63
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->handleEnumeratedTemplate(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V

    .line 64
    if-nez p2, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->doTemplateCleanup()V

    .line 66
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->mCallback:Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    .line 68
    :cond_0
    return-void
.end method

.method public start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;

    .line 77
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->start(Lcom/android/server/biometrics/sensors/BaseClientMonitor$Callback;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/InternalEnumerateClient;->startHalOperation()V

    .line 81
    return-void
.end method

.method public unableToStart()V
    .locals 0

    .line 73
    .local p0, "this":Lcom/android/server/biometrics/sensors/InternalEnumerateClient;, "Lcom/android/server/biometrics/sensors/InternalEnumerateClient<TT;>;"
    return-void
.end method
