.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda11;

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

    check-cast p1, Landroid/os/ParcelUuid;

    invoke-static {p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->fromParcelUuid(Landroid/os/ParcelUuid;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
