.class public interface abstract Landroid/content/pm/PackageSettingsSnapshotProvider;
.super Ljava/lang/Object;
.source "PackageSettingsSnapshotProvider.java"


# virtual methods
.method public abstract withPackageSettingsSnapshot(Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract withPackageSettingsSnapshotReturning(Lcom/android/internal/util/FunctionalUtils$ThrowingFunction;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;>;)TOutput;"
        }
    .end annotation
.end method

.method public abstract withPackageSettingsSnapshotReturningThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Output:",
            "Ljava/lang/Object;",
            "ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedFunction<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TOutput;TExceptionType;>;)TOutput;^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract withPackageSettingsSnapshotThrowing(Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionType:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingCheckedConsumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionType;>;)V^TExceptionType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract withPackageSettingsSnapshotThrowing2(Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ExceptionOne:",
            "Ljava/lang/Exception;",
            "ExceptionTwo:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingChecked2Consumer<",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;TExceptionOne;TExceptionTwo;>;)V^TExceptionOne;^TExceptionTwo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Ljava/lang/Exception;
        }
    .end annotation
.end method
