.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 5817
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 5818
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5819
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 5820
    return-void
.end method


# virtual methods
.method public applyImeVisibilityAsync(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z

    .line 5911
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    .line 5912
    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/inputmethod/IIInputContentUriTokenResultCallback;)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resultCallback"    # Lcom/android/internal/inputmethod/IIInputContentUriTokenResultCallback;

    .line 5838
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {p3, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IIInputContentUriTokenResultCallback;Ljava/util/function/Supplier;)V

    .line 5840
    return-void
.end method

.method public hideMySoftInput(ILcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultCallback"    # Lcom/android/internal/inputmethod/IVoidResultCallback;

    .line 5865
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;I)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    .line 5866
    return-void
.end method

.method public synthetic lambda$createInputContentUriToken$0$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 5839
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$hideMySoftInput$3$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 5865
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public synthetic lambda$setInputMethod$1$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 5851
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$setInputMethodAndSubtype$2$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 5859
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public synthetic lambda$shouldOfferSwitchingToNextInputMethod$7$InputMethodManagerService$InputMethodPrivilegedOperationsImpl()Z
    .locals 2

    .line 5899
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$showMySoftInput$4$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 5871
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    return-void
.end method

.method public synthetic lambda$switchToNextInputMethod$6$InputMethodManagerService$InputMethodPrivilegedOperationsImpl(Z)Z
    .locals 2
    .param p1, "onlyCurrentIme"    # Z

    .line 5891
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$switchToPreviousInputMethod$5$InputMethodManagerService$InputMethodPrivilegedOperationsImpl()Z
    .locals 2

    .line 5883
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public notifyUserActionAsync()V
    .locals 2

    .line 5905
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 5906
    return-void
.end method

.method public reportFullscreenModeAsync(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 5845
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 5846
    return-void
.end method

.method public reportStartInputAsync(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "startInputToken"    # Landroid/os/IBinder;

    .line 5831
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 5832
    return-void
.end method

.method public setImeWindowStatusAsync(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 5825
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 5826
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;Lcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "resultCallback"    # Lcom/android/internal/inputmethod/IVoidResultCallback;

    .line 5851
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    .line 5852
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;
    .param p3, "resultCallback"    # Lcom/android/internal/inputmethod/IVoidResultCallback;

    .line 5858
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    invoke-static {p3, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    .line 5860
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1
    .param p1, "resultCallback"    # Lcom/android/internal/inputmethod/IBooleanResultCallback;

    .line 5898
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;)V

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    .line 5900
    return-void
.end method

.method public showMySoftInput(ILcom/android/internal/inputmethod/IVoidResultCallback;)V
    .locals 1
    .param p1, "flags"    # I
    .param p2, "resultCallback"    # Lcom/android/internal/inputmethod/IVoidResultCallback;

    .line 5871
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;I)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IVoidResultCallback;Ljava/lang/Runnable;)V

    .line 5872
    return-void
.end method

.method public switchToNextInputMethod(ZLcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1
    .param p1, "onlyCurrentIme"    # Z
    .param p2, "resultCallback"    # Lcom/android/internal/inputmethod/IBooleanResultCallback;

    .line 5890
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;Z)V

    invoke-static {p2, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    .line 5892
    return-void
.end method

.method public switchToPreviousInputMethod(Lcom/android/internal/inputmethod/IBooleanResultCallback;)V
    .locals 1
    .param p1, "resultCallback"    # Lcom/android/internal/inputmethod/IBooleanResultCallback;

    .line 5883
    new-instance v0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;)V

    invoke-static {p1, v0}, Lcom/android/internal/inputmethod/CallbackUtils;->onResult(Lcom/android/internal/inputmethod/IBooleanResultCallback;Ljava/util/function/BooleanSupplier;)V

    .line 5884
    return-void
.end method

.method public updateStatusIconAsync(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 5877
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 5878
    return-void
.end method
