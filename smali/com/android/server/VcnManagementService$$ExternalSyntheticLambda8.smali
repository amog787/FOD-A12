.class public final synthetic Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Deserializer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;-><init>()V

    sput-object v0, Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;->INSTANCE:Lcom/android/server/VcnManagementService$$ExternalSyntheticLambda8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromPersistableBundle(Landroid/os/PersistableBundle;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->toParcelUuid(Landroid/os/PersistableBundle;)Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method
