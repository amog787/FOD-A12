.class public final synthetic Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda4;

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

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->lambda$dabConfigFromHal$1(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
