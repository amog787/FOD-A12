.class public final synthetic Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/contentcapture/ContentCaptureServerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureServerSession;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureServerSession;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureServerSession$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/contentcapture/ContentCaptureServerSession;

    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCaptureServerSession;->lambda$new$0$ContentCaptureServerSession()V

    return-void
.end method
