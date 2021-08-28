.class public interface abstract Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
.super Ljava/lang/Object;
.source "LegacyPermissionDataProvider.java"


# virtual methods
.method public abstract getAllAppOpPermissionPackages()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getGidsForUid(I)[I
.end method

.method public abstract getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
.end method

.method public abstract getLegacyPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation
.end method

.method public abstract writeLegacyPermissionStateTEMP()V
.end method
