.class public final synthetic Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    check-cast p2, Landroid/os/IBinder;

    check-cast p3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    invoke-static {p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->$r8$lambda$EOXExeq_wbXgB8nuib8iUDMTVbw(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    return-void
.end method
