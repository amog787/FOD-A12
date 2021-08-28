.class public final synthetic Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/usb/UsbService$Lifecycle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService$Lifecycle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService$Lifecycle;->lambda$onStart$0$UsbService$Lifecycle()V

    return-void
.end method
