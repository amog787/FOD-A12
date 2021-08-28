.class public final synthetic Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/RemoteViews$InteractionHandler;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/autofill/ui/FillUi$$ExternalSyntheticLambda6;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInteraction(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/ui/FillUi;->lambda$newInteractionBlocker$5(Landroid/view/View;Landroid/app/PendingIntent;Landroid/widget/RemoteViews$RemoteResponse;)Z

    move-result p1

    return p1
.end method
