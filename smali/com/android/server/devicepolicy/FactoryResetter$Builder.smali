.class public final Lcom/android/server/devicepolicy/FactoryResetter$Builder;
.super Ljava/lang/Object;
.source "FactoryResetter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/FactoryResetter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mForce:Z

.field private mReason:Ljava/lang/String;

.field private mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

.field private mShutdown:Z

.field private mWipeAdoptableStorage:Z

.field private mWipeEuicc:Z

.field private mWipeFactoryResetProtection:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    .line 178
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/devicepolicy/FactoryResetter$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/devicepolicy/FactoryResetter$1;

    .line 165
    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/FactoryResetter$Builder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Landroid/app/admin/DevicePolicySafetyChecker;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/devicepolicy/FactoryResetter$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/devicepolicy/FactoryResetter$Builder;

    .line 165
    iget-boolean v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/android/server/devicepolicy/FactoryResetter;
    .locals 2

    .line 243
    new-instance v0, Lcom/android/server/devicepolicy/FactoryResetter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/devicepolicy/FactoryResetter;-><init>(Lcom/android/server/devicepolicy/FactoryResetter$Builder;Lcom/android/server/devicepolicy/FactoryResetter$1;)V

    return-object v0
.end method

.method public setForce(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 211
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mForce:Z

    .line 212
    return-object p0
.end method

.method public setReason(Ljava/lang/String;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 193
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mReason:Ljava/lang/String;

    .line 194
    return-object p0
.end method

.method public setSafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "safetyChecker"    # Landroid/app/admin/DevicePolicySafetyChecker;

    .line 185
    iput-object p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mSafetyChecker:Landroid/app/admin/DevicePolicySafetyChecker;

    .line 186
    return-object p0
.end method

.method public setShutdown(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 202
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mShutdown:Z

    .line 203
    return-object p0
.end method

.method public setWipeAdoptableStorage(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeAdoptableStorage:Z

    .line 228
    return-object p0
.end method

.method public setWipeEuicc(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 219
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeEuicc:Z

    .line 220
    return-object p0
.end method

.method public setWipeFactoryResetProtection(Z)Lcom/android/server/devicepolicy/FactoryResetter$Builder;
    .locals 0
    .param p1, "value"    # Z

    .line 235
    iput-boolean p1, p0, Lcom/android/server/devicepolicy/FactoryResetter$Builder;->mWipeFactoryResetProtection:Z

    .line 236
    return-object p0
.end method
