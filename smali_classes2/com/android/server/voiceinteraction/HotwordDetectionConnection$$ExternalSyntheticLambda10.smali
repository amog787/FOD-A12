.class public final synthetic Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/voiceinteraction/HotwordDetectionConnection$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/service/voice/IHotwordDetectionService;

    invoke-interface {p1}, Landroid/service/voice/IHotwordDetectionService;->stopDetection()V

    return-void
.end method
