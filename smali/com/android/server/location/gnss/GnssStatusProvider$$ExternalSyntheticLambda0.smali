.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda0;->f$0:I

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportFirstFix$0(ILandroid/location/IGnssStatusListener;)V

    return-void
.end method
