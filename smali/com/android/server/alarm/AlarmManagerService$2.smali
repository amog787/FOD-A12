.class Lcom/android/server/alarm/AlarmManagerService$2;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/alarm/AlarmManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/alarm/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/alarm/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/alarm/AlarmManagerService;

    .line 1615
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 1618
    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "who"    # Landroid/os/IBinder;

    .line 1622
    invoke-static {p1}, Landroid/app/IAlarmListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmListener;

    move-result-object v0

    .line 1623
    .local v0, "listener":Landroid/app/IAlarmListener;
    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$2;->this$0:Lcom/android/server/alarm/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/android/server/alarm/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1624
    return-void
.end method
