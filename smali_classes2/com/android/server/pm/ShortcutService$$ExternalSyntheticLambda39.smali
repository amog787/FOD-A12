.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/pm/ShortcutService;

    iput p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda39;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda39;->f$0:Lcom/android/server/pm/ShortcutService;

    iget v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda39;->f$1:I

    check-cast p1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/ShortcutService;->lambda$queryActivities$30$ShortcutService(ILandroid/content/pm/ResolveInfo;)Z

    move-result p1

    return p1
.end method