.class public final synthetic Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/PolicyWarningUIController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Landroid/content/ComponentName;

    invoke-static {v0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->$r8$lambda$BpICa1dkTGG_FPCF1geFvKAVh2o(Lcom/android/server/accessibility/PolicyWarningUIController;ILandroid/content/ComponentName;)V

    return-void
.end method
