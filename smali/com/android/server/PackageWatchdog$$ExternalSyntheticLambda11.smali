.class public final synthetic Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/PackageWatchdog;

.field public final synthetic f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/PackageWatchdog;Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/PackageWatchdog;

    iput-object p2, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$0:Lcom/android/server/PackageWatchdog;

    iget-object v1, p0, Lcom/android/server/PackageWatchdog$$ExternalSyntheticLambda11;->f$1:Lcom/android/server/PackageWatchdog$PackageHealthObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/PackageWatchdog;->lambda$unregisterHealthObserver$3$PackageWatchdog(Lcom/android/server/PackageWatchdog$PackageHealthObserver;)V

    return-void
.end method
