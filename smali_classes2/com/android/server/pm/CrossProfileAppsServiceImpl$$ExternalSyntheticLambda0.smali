.class public final synthetic Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileAppsServiceImpl;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iput p2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iput p3, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/pm/CrossProfileAppsServiceImpl;

    iget v1, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    iget v2, p0, Lcom/android/server/pm/CrossProfileAppsServiceImpl$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/CrossProfileAppsServiceImpl;->lambda$setInteractAcrossProfilesAppOpForProfileOrThrow$8$CrossProfileAppsServiceImpl(II)V

    return-void
.end method
