.class public final synthetic Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/OverlayManagerSettings;

.field public final synthetic f$1:Lcom/android/internal/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerSettings;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iput-object p2, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerSettings$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/IndentingPrintWriter;

    check-cast p1, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/om/OverlayManagerSettings;->lambda$dump$11$OverlayManagerSettings(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)V

    return-void
.end method
