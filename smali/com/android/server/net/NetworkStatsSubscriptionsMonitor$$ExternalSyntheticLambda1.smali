.class public final synthetic Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/util/Pair;


# direct methods
.method public synthetic constructor <init>(Landroid/util/Pair;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$$ExternalSyntheticLambda1;->f$0:Landroid/util/Pair;

    check-cast p1, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;

    invoke-static {v0, p1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->lambda$onSubscriptionsChanged$1(Landroid/util/Pair;Lcom/android/server/net/NetworkStatsSubscriptionsMonitor$RatTypeListener;)Z

    move-result p1

    return p1
.end method
