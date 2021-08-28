.class public final synthetic Lcom/android/server/biometrics/sensors/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/-$$Lambda$FacolaView$yUiQqdjjF2Ns7D3a6aq-reqgIkU;->f$0:Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;

    invoke-virtual {v0}, Lcom/android/server/biometrics/sensors/fingerprint/FacolaView;->lambda$onDraw$0$FacolaView()V

    return-void
.end method
