.class Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "LockoutResetDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->sendLockoutReset(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    .line 62
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "data"    # Landroid/os/Bundle;

    .line 65
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->access$000(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    .line 66
    return-void
.end method
