.class public final synthetic Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;


# instance fields
.field public final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final release(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/UiModeManagerService$12;->lambda$requestProjection$1(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
