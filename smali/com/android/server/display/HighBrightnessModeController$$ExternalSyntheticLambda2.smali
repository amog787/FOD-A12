.class public final synthetic Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/HighBrightnessModeController;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/display/HighBrightnessModeController;

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$$ExternalSyntheticLambda2;->f$1:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->lambda$dump$0$HighBrightnessModeController(Ljava/io/PrintWriter;)V

    return-void
.end method
