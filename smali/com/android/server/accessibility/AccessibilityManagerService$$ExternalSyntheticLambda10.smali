.class public final synthetic Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Landroid/os/RemoteCallbackList;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->$r8$lambda$5e-gjskGFvOKqXQT-XRFbWKaOBg(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/RemoteCallbackList;J)V

    return-void
.end method
