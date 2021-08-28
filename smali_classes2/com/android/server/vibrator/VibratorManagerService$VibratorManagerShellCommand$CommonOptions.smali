.class final Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;
.super Ljava/lang/Object;
.source "VibratorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CommonOptions"
.end annotation


# instance fields
.field public description:Ljava/lang/String;

.field public force:Z

.field final synthetic this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;)V
    .locals 5

    .line 1458
    iput-object p1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->this$1:Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 1456
    const-string v1, "Shell command"

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 1460
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->peekNextArg()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "nextArg":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1461
    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    :cond_0
    :pswitch_0
    goto :goto_1

    :pswitch_1
    const-string v3, "-f"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_1

    :pswitch_2
    const-string v3, "-d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 1472
    return-void

    .line 1467
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1468
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->description:Ljava/lang/String;

    .line 1469
    goto :goto_2

    .line 1463
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1464
    iput-boolean v4, p0, Lcom/android/server/vibrator/VibratorManagerService$VibratorManagerShellCommand$CommonOptions;->force:Z

    .line 1465
    nop

    .line 1472
    :goto_2
    goto :goto_0

    .line 1475
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x5d7
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
