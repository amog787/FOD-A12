.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda20;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    check-cast p1, Landroid/view/SurfaceSession;

    invoke-direct {v0, p1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    return-object v0
.end method
