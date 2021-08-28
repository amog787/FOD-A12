.class public final synthetic Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;->INSTANCE:Lcom/android/server/wm/WindowManagerService$$ExternalSyntheticLambda23;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    return-object v0
.end method
