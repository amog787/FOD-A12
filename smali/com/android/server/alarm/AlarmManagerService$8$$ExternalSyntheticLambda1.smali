.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$8;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$8;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$8;

    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/alarm/AlarmManagerService$8;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda1;->f$1:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/alarm/AlarmManagerService$8;->lambda$updateAlarmsForUid$1$AlarmManagerService$8(ILcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
