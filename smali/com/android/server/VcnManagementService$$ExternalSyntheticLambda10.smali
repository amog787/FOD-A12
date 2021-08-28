.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;-><init>()V

    sput-object v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda10;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toPersistableBundle(Ljava/lang/Object;)Landroid/os/PersistableBundle;
    .locals 0

    check-cast p1, Landroid/net/vcn/VcnConfig;

    invoke-virtual {p1}, Landroid/net/vcn/VcnConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
