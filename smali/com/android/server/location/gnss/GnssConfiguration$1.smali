.class Lcom/android/server/location/gnss/GnssConfiguration$1;
.super Ljava/util/HashMap;
.source "GnssConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/gnss/GnssConfiguration;->reloadGpsProperties()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/gnss/GnssConfiguration$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssConfiguration;

.field final synthetic val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssConfiguration;Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssConfiguration;

    .line 241
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->this$0:Lcom/android/server/location/gnss/GnssConfiguration;

    iput-object p2, p0, Lcom/android/server/location/gnss/GnssConfiguration$1;->val$gnssConfigurationIfaceVersion:Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 243
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda0;

    const-string v1, "SUPL_VER"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda1;

    const-string v1, "SUPL_MODE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->access$000(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda2;

    const-string v1, "SUPL_ES"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_0
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda3;

    const-string v1, "LPP_PROFILE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda4;

    const-string v1, "A_GLONASS_POS_PROTOCOL_SELECT"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    sget-object v0, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda5;

    const-string v1, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {p2}, Lcom/android/server/location/gnss/GnssConfiguration;->access$100(Lcom/android/server/location/gnss/GnssConfiguration$HalInterfaceVersion;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 257
    sget-object p2, Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/server/location/gnss/GnssConfiguration$1$$ExternalSyntheticLambda6;

    const-string v0, "GPS_LOCK"

    invoke-virtual {p0, v0, p2}, Lcom/android/server/location/gnss/GnssConfiguration$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_1
    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 243
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 244
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 247
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 250
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$500(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 252
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$400(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 254
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$300(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 1
    .param p0, "x$0"    # I

    .line 257
    invoke-static {p0}, Lcom/android/server/location/gnss/GnssConfiguration;->access$200(I)Z

    move-result v0

    return v0
.end method
