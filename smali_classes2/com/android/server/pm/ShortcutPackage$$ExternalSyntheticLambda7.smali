.class public final synthetic Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(ILjava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->f$0:I

    iput-object p2, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget v0, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->f$0:I

    iget-object v1, p0, Lcom/android/server/pm/ShortcutPackage$$ExternalSyntheticLambda7;->f$1:Ljava/io/PrintWriter;

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-static {v0, v1, p1}, Lcom/android/server/pm/ShortcutPackage;->lambda$dumpShortcuts$30(ILjava/io/PrintWriter;Landroid/content/pm/ShortcutInfo;)V

    return-void
.end method
