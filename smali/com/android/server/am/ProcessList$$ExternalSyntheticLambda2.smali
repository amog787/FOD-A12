.class public final synthetic Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$3:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iput-object p3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    iput-object p4, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$0:Z

    iget-object v1, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$2:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;->f$3:Ljava/util/ArrayList;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/am/ProcessList;->lambda$updateApplicationInfoLOSP$1(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method
