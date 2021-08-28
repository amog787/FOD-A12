.class public Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;
.super Ljava/lang/Object;
.source "CallerIdentityInjector.java"

# interfaces
.implements Lcom/android/server/timezonedetector/CallerIdentityInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/timezonedetector/CallerIdentityInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Real"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method


# virtual methods
.method public clearCallingIdentity()J
    .locals 2

    .line 54
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCallingUserId()I
    .locals 1

    .line 49
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    return v0
.end method

.method public restoreCallingIdentity(J)V
    .locals 0
    .param p1, "token"    # J

    .line 59
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 60
    return-void
.end method
