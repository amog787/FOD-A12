.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:[Z

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Z[ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$0:Z

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$1:[Z

    iput-wide p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$2:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$0:Z

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$1:[Z

    iget-wide v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda48;->f$2:J

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$deleteAllDynamicShortcuts$5(Z[ZJLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
