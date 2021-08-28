.class public final synthetic Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/alarm/AlarmStore$AlarmDeliveryCalculator;


# instance fields
.field public final synthetic f$0:Lcom/android/server/alarm/AlarmManagerService$8;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/alarm/AlarmManagerService$8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$8;

    return-void
.end method


# virtual methods
.method public final updateAlarmDelivery(Lcom/android/server/alarm/Alarm;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$8$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/alarm/AlarmManagerService$8;

    invoke-virtual {v0, p1}, Lcom/android/server/alarm/AlarmManagerService$8;->lambda$updateAllAlarms$0$AlarmManagerService$8(Lcom/android/server/alarm/Alarm;)Z

    move-result p1

    return p1
.end method
