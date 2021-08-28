.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/LocationManagerService;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/location/LocationManagerService;->lambda$onSystemReady$4$LocationManagerService(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
