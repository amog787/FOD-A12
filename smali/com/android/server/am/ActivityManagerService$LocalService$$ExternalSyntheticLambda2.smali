.class public final synthetic Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->lambda$hasRunningActivity$0(ILjava/lang/String;Lcom/android/server/am/ProcessRecord;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
