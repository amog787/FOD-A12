.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:I

.field public final synthetic f$3:F

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/util/List;IFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:I

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$3:F

    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$4:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$1:Ljava/util/List;

    iget v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$2:I

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$3:F

    iget-wide v4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda15;->f$4:J

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityManagerService;->lambda$scheduleUpdateBinderHeavyHitterWatcherConfig$28$ActivityManagerService(Ljava/util/List;IFJ)V

    return-void
.end method
