.class public final synthetic Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/server/am/ActiveServices$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, p1}, Lcom/android/server/am/ActiveServices;->lambda$shouldAllowFgsWhileInUsePermissionLocked$0(ILcom/android/server/am/ProcessRecord;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
