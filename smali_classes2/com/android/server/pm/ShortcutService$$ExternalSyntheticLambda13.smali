.class public final synthetic Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/ShortcutService;

.field public final synthetic f$1:Lcom/android/internal/infra/AndroidFuture;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I

.field public final synthetic f$4:Landroid/content/pm/ShortcutInfo;

.field public final synthetic f$5:Landroid/content/IntentSender;

.field public final synthetic f$6:I

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/internal/infra/AndroidFuture;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/ShortcutService;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/infra/AndroidFuture;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$3:I

    iput-object p5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$4:Landroid/content/pm/ShortcutInfo;

    iput-object p6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$5:Landroid/content/IntentSender;

    iput p7, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$6:I

    iput p8, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$7:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/pm/ShortcutService;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$1:Lcom/android/internal/infra/AndroidFuture;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$3:I

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$4:Landroid/content/pm/ShortcutInfo;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$5:Landroid/content/IntentSender;

    iget v6, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$6:I

    iget v7, p0, Lcom/android/server/pm/ShortcutService$$ExternalSyntheticLambda13;->f$7:I

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/ShortcutService;->lambda$requestPinShortcut$10$ShortcutService(Lcom/android/internal/infra/AndroidFuture;Ljava/lang/String;ILandroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;II)V

    return-void
.end method
