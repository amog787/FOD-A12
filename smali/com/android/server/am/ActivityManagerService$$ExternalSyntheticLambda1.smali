.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/os/BinderCallHeavyHitterWatcher$BinderCallHeavyHitterListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final onHeavyHit(Ljava/util/List;IFJ)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$29$ActivityManagerService(Ljava/util/List;IFJ)V

    return-void
.end method
