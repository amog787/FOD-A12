.class public final synthetic Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:Ljava/lang/String;

.field public final synthetic f$8:I

.field public final synthetic f$9:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iput p2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$1:I

    iput p3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$2:I

    iput p4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$3:I

    iput p5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$4:I

    iput p6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$5:I

    iput-object p7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$7:Ljava/lang/String;

    iput p9, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$8:I

    iput p10, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$9:I

    return-void
.end method


# virtual methods
.method public final runOrThrow()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$0:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v1, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$1:I

    iget v2, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$2:I

    iget v3, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$3:I

    iget v4, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$4:I

    iget v5, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$5:I

    iget-object v6, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$6:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$7:Ljava/lang/String;

    iget v8, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$8:I

    iget v9, p0, Lcom/android/server/location/gnss/hal/GnssNative$$ExternalSyntheticLambda9;->f$9:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/location/gnss/hal/GnssNative;->lambda$reportNiNotification$17$GnssNative(IIIIILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
