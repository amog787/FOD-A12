.class Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;
.super Ljava/lang/Object;
.source "GnssListenerMultiplexer.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 198
    .local p0, "this":Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;"
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 206
    .local p0, "this":Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->access$100(Lcom/android/server/location/gnss/GnssListenerMultiplexer;I)V

    .line 207
    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 201
    .local p0, "this":Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;, "Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;"
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$1;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-static {v0, p1}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->access$000(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/String;)V

    .line 202
    return-void
.end method
