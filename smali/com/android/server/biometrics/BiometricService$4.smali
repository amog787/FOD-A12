.class Lcom/android/server/biometrics/BiometricService$4;
.super Landroid/app/UserSwitchObserver;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/BiometricService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/BiometricService;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/biometrics/BiometricService;

    .line 1131
    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .line 1134
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->updateContentObserver()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$4;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->notifyEnabledOnKeyguardCallbacks(I)V

    .line 1136
    return-void
.end method
