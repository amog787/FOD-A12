.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-static {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$selectWhereOverlay$13(Ljava/lang/String;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z

    move-result p1

    return p1
.end method
