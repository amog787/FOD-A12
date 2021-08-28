.class public interface abstract Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
.super Ljava/lang/Object;
.source "InlineFillUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/ui/InlineFillUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InlineSuggestionUiCallback"
.end annotation


# virtual methods
.method public abstract authenticate(II)V
.end method

.method public abstract autofill(Landroid/service/autofill/Dataset;I)V
.end method

.method public abstract onError()V
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;)V
.end method
