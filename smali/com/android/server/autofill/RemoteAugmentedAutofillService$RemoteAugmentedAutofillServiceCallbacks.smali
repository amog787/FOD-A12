.class public interface abstract Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteAugmentedAutofillService.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAugmentedAutofillServiceCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
        "Lcom/android/server/autofill/RemoteAugmentedAutofillService;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract logAugmentedAutofillShown(ILandroid/os/Bundle;)V
.end method

.method public abstract resetLastResponse()V
.end method

.method public abstract setLastResponse(I)V
.end method
