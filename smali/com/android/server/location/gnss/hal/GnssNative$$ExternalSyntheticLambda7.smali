.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$1:I

    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$2:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$1:I

    iget v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda7;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportGeofenceRemoveStatus$14$GnssNative(II)V

    return-void
.end method
