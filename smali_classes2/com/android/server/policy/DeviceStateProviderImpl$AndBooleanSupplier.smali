.class final Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;
.super Ljava/lang/Object;
.source "DeviceStateProviderImpl.java"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/DeviceStateProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndBooleanSupplier"
.end annotation


# instance fields
.field mBooleanSuppliers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/BooleanSupplier;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/function/BooleanSupplier;",
            ">;)V"
        }
    .end annotation

    .line 481
    .local p1, "booleanSuppliers":Ljava/util/List;, "Ljava/util/List<Ljava/util/function/BooleanSupplier;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    .line 483
    return-void
.end method


# virtual methods
.method public getAsBoolean()Z
    .locals 2

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/android/server/policy/DeviceStateProviderImpl$AndBooleanSupplier;->mBooleanSuppliers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/BooleanSupplier;

    invoke-interface {v1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v1

    if-nez v1, :cond_0

    .line 489
    const/4 v1, 0x0

    return v1

    .line 487
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 492
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
