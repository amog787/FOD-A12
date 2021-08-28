.class public final synthetic Lcom/android/server/NsdService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NsdService$DaemonConnectionSupplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/NsdService$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/NsdService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/NsdService$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/server/NsdService$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/NsdService$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/server/NsdService$NativeCallbackReceiver;)Lcom/android/server/NsdService$DaemonConnection;
    .locals 1

    new-instance v0, Lcom/android/server/NsdService$DaemonConnection;

    invoke-direct {v0, p1}, Lcom/android/server/NsdService$DaemonConnection;-><init>(Lcom/android/server/NsdService$NativeCallbackReceiver;)V

    return-object v0
.end method
