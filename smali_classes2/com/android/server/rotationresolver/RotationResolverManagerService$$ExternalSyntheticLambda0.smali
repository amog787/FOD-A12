.class public final synthetic Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->lambda$onBootPhase$0$RotationResolverManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method