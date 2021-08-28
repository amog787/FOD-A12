.class public final synthetic Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/wm/Dimmer$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V
    .locals 0

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/wm/SurfaceAnimator;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;ZI)V

    return-void
.end method
