.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;-><init>()V

    sput-object v0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda15;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$getUsers$5(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
