.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:[Z


# direct methods
.method public synthetic constructor <init>([Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;->f$0:[Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda49;->f$0:[Z

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$hasNoShortcut$32([ZLandroid/content/pm/ShortcutInfo;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
