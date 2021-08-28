.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutPackage;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutPackage;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iput-wide p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$1:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$0:Lcom/android/server/pm/ShortcutPackage;

    iget-wide v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda36;->f$1:J

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$rescanPackage$17$ShortcutPackage(JLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
