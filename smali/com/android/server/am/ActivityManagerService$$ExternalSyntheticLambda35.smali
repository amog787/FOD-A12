.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:I

.field public final synthetic f$2:[Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ZI[Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Z

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$1:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$2:[Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$0:Z

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$1:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda35;->f$2:[Ljava/util/List;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$getProcessesInErrorState$12(ZI[Ljava/util/List;Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
