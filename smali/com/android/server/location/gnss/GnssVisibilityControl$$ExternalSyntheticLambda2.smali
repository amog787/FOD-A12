.class public final synthetic Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssVisibilityControl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iput p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$$ExternalSyntheticLambda2;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/location/gnss/GnssVisibilityControl;->lambda$new$0$GnssVisibilityControl(I)V

    return-void
.end method
