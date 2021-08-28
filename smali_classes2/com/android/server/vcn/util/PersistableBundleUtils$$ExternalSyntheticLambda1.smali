.class public final synthetic Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/vcn/util/PersistableBundleUtils$Serializer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/vcn/util/PersistableBundleUtils$$ExternalSyntheticLambda1;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/android/server/vcn/util/PersistableBundleUtils;->lambda$static$0(Ljava/lang/Integer;)Landroid/os/PersistableBundle;

    move-result-object p1

    return-object p1
.end method
