.class public interface abstract Lcom/android/server/rollback/RollbackManagerInternal;
.super Ljava/lang/Object;
.source "RollbackManagerInternal.java"


# virtual methods
.method public abstract notifyStagedSession(I)I
.end method

.method public abstract snapshotAndRestoreUserData(Ljava/lang/String;Ljava/util/List;IJLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;IJ",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation
.end method
