.class public final synthetic Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverStateMachine;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iput p2, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/power/batterysaver/BatterySaverStateMachine;

    iget v1, p0, Lcom/android/server/power/batterysaver/BatterySaverStateMachine$$ExternalSyntheticLambda4;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/power/batterysaver/BatterySaverStateMachine;->lambda$hideNotification$4$BatterySaverStateMachine(I)V

    return-void
.end method
