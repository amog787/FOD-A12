.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$6;->lambda$sendResult$0(I)I

    move-result v0

    return v0
.end method
