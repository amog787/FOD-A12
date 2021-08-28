.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;-><init>()V

    sput-object v0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/autofill/Session$$ExternalSyntheticLambda6;

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

    check-cast p1, Lcom/android/server/autofill/Session;

    check-cast p2, Landroid/content/IntentSender;

    check-cast p3, Landroid/content/Intent;

    invoke-static {p1, p2, p3}, Lcom/android/server/autofill/Session;->$r8$lambda$6rEBrMV-oCtdOaVAXVRHLmI-g8E(Lcom/android/server/autofill/Session;Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method
