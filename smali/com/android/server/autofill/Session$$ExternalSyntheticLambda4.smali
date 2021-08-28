.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/QuintConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/Session;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/content/IntentSender;

    check-cast p4, Landroid/content/Intent;

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/autofill/Session;->$r8$lambda$92rc8p5ur7GxIKq_CcXalnEwHwU(Lcom/android/server/autofill/Session;ILandroid/content/IntentSender;Landroid/content/Intent;Z)V

    return-void
.end method
