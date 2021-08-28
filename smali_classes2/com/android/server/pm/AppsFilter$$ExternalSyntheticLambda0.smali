.class public final synthetic Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/AppsFilter$StateProvider$CurrentStateCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/ArrayMap;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:[[Landroid/content/pm/UserInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iput-object p2, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$2:[[Landroid/content/pm/UserInfo;

    return-void
.end method


# virtual methods
.method public final currentState(Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$0:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/AppsFilter$$ExternalSyntheticLambda0;->f$2:[[Landroid/content/pm/UserInfo;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/android/server/pm/AppsFilter;->lambda$updateEntireShouldFilterCacheAsync$3(Landroid/util/ArrayMap;Landroid/util/ArrayMap;[[Landroid/content/pm/UserInfo;Landroid/util/ArrayMap;[Landroid/content/pm/UserInfo;)V

    return-void
.end method
