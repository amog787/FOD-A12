.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;-><init>()V

    sput-object v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/net/vcn/VcnConfig;

    invoke-direct {v0, p1}, Landroid/net/vcn/VcnConfig;-><init>(Landroid/os/PersistableBundle;)V

    return-object v0
.end method
