.class public final synthetic Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/print/UserState$$ExternalSyntheticLambda0;

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

    check-cast p1, Lcom/android/server/print/UserState;

    check-cast p2, Landroid/print/PrintJobId;

    check-cast p3, Lcom/android/internal/util/function/pooled/PooledSupplier$OfInt;

    invoke-static {p1, p2, p3}, Lcom/android/server/print/UserState;->$r8$lambda$XwUreNEP3_90Px3xCJ0jEaO2rrc(Lcom/android/server/print/UserState;Landroid/print/PrintJobId;Ljava/util/function/IntSupplier;)V

    return-void
.end method
