.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;->f$0:J

    iput p3, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-wide v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;->f$0:J

    iget v2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda8;->f$1:I

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$adjustRanks$27(JILandroid/content/pm/ShortcutInfo;)V

    return-void
.end method
