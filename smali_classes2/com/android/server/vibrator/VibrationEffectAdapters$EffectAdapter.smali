.class public interface abstract Lcom/android/server/vibrator/VibrationEffectAdapters$EffectAdapter;
.super Ljava/lang/Object;
.source "VibrationEffectAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vibrator/VibrationEffectAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EffectAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract apply(Landroid/os/VibrationEffect;Ljava/lang/Object;)Landroid/os/VibrationEffect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/VibrationEffect;",
            "TT;)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation
.end method
