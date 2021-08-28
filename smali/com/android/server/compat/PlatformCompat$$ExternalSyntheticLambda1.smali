.class public final synthetic Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/PlatformCompat;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/compat/PlatformCompat;

    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    invoke-static {v0, p1}, Lcom/android/server/compat/PlatformCompat;->$r8$lambda$n_2JjKeulvxyAF8j4MdiUMuKl6A(Lcom/android/server/compat/PlatformCompat;Lcom/android/internal/compat/CompatibilityChangeInfo;)Z

    move-result p1

    return p1
.end method
