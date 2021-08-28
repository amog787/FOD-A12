.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda25;->f$0:Lcom/android/server/am/ActivityManagerService;

    check-cast p1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->lambda$startBinderTracking$26$ActivityManagerService(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method
