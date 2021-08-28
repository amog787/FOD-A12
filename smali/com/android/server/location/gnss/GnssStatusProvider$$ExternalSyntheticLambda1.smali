.class public final synthetic Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic f$0:Landroid/location/GnssStatus;


# direct methods
.method public synthetic constructor <init>(Landroid/location/GnssStatus;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssStatus;

    return-void
.end method


# virtual methods
.method public final operate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssStatusProvider$$ExternalSyntheticLambda1;->f$0:Landroid/location/GnssStatus;

    check-cast p1, Landroid/location/IGnssStatusListener;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssStatusProvider;->lambda$onReportSvStatus$1(Landroid/location/GnssStatus;Landroid/location/IGnssStatusListener;)V

    return-void
.end method
