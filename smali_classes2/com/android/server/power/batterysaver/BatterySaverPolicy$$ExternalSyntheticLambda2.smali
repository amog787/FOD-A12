.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

.field public final synthetic f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverPolicy;[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iput-object p2, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;->f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/power/batterysaver/BatterySaverPolicy;

    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverPolicy$$ExternalSyntheticLambda2;->f$1:[Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverPolicy;->lambda$maybeNotifyListenersOfPolicyChange$2$BatterySaverPolicy([Lcom/android/server/power/batterysaver/BatterySaverPolicy$BatterySaverPolicyListener;)V

    return-void
.end method
