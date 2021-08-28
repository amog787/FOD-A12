.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

.field public final synthetic f$1:Lcom/android/server/alarm/Alarm;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;Lcom/android/server/alarm/Alarm;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iput-object p2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/alarm/Alarm;

    iput-boolean p3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/alarm/Alarm;

    iget-boolean v2, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$2:Z

    iget-boolean v3, p0, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/alarm/AlarmManagerService$DeliveryTracker;->lambda$deliverLocked$1$AlarmManagerService$DeliveryTracker(Lcom/android/server/alarm/Alarm;ZZLcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
