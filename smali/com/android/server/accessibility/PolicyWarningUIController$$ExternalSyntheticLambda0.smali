.class public final synthetic Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Landroid/util/ArraySet;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->onServicesDisabled(ILandroid/util/ArraySet;)V

    return-void
.end method
