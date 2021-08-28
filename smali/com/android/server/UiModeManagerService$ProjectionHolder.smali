.class Lcom/android/server/UiModeManagerService$ProjectionHolder;
.super Ljava/lang/Object;
.source "UiModeManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProjectionHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private final mPackageName:Ljava/lang/String;

.field private final mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

.field private final mProjectionType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "projectionType"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "projectionReleaser"    # Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    .line 1130
    iput p2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    .line 1131
    iput-object p3, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    .line 1132
    iput-object p4, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

    .line 1133
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Landroid/os/IBinder;
    .param p4, "x3"    # Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;
    .param p5, "x4"    # Lcom/android/server/UiModeManagerService$1;

    .line 1120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1120
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1120
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->linkToDeath()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/server/UiModeManagerService$ProjectionHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/UiModeManagerService$ProjectionHolder;

    .line 1120
    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->unlinkToDeath()V

    return-void
.end method

.method private linkToDeath()Z
    .locals 5

    .line 1137
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    nop

    .line 1143
    const/4 v0, 0x1

    return v0

    .line 1138
    :catch_0
    move-exception v1

    .line 1139
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "linkToDeath failed for projection requester: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1141
    return v0
.end method

.method private unlinkToDeath()V
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1148
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1152
    invoke-static {}, Lcom/android/server/UiModeManagerService;->access$1800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Projection holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " died. Releasing projection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionReleaser:Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;

    iget v1, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mProjectionType:I

    iget-object v2, p0, Lcom/android/server/UiModeManagerService$ProjectionHolder;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;->release(ILjava/lang/String;)Z

    .line 1155
    return-void
.end method
