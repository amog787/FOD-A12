.class public final synthetic Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/location/contexthub/ContextHubClientBroker$CallbackConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/location/contexthub/ContextHubClientBroker$$ExternalSyntheticLambda5;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/hardware/location/IContextHubClientCallback;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/location/contexthub/ContextHubClientBroker;->lambda$onHubReset$6(Landroid/hardware/location/IContextHubClientCallback;)V

    return-void
.end method
