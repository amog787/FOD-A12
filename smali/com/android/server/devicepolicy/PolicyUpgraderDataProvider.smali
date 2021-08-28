.class public interface abstract Lcom/android/server/devicepolicy/PolicyUpgraderDataProvider;
.super Ljava/lang/Object;
.source "PolicyUpgraderDataProvider.java"


# virtual methods
.method public abstract getAdminInfoSupplier(I)Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/function/Function<",
            "Landroid/content/ComponentName;",
            "Landroid/app/admin/DeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOwnerComponent(I)Landroid/content/ComponentName;
.end method

.method public abstract getUsersForUpgrade()[I
.end method

.method public abstract isDeviceOwner(ILandroid/content/ComponentName;)Z
.end method

.method public abstract makeDevicePoliciesJournaledFile(I)Lcom/android/internal/util/JournaledFile;
.end method

.method public abstract makePoliciesVersionJournaledFile(I)Lcom/android/internal/util/JournaledFile;
.end method

.method public abstract storageManagerIsFileBasedEncryptionEnabled()Z
.end method
