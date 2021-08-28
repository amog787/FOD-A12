.class public final synthetic Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/backup/transport/TransportClientManager$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p1}, Lcom/android/server/backup/transport/TransportClientManager;->getEncryptingTransportIntent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method
