.class public final synthetic Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->lambda$onSubscriptionsChanged$0$NetworkStatsSubscriptionsMonitor(Ljava/lang/Integer;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
