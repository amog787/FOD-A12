.class public interface abstract Lcom/android/server/am/ActivityManagerLocal;
.super Ljava/lang/Object;
.source "ActivityManagerLocal.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# virtual methods
.method public abstract canAllowWhileInUsePermissionInFgs(IILjava/lang/String;)Z
.end method

.method public abstract canStartForegroundService(IILjava/lang/String;)Z
.end method

.method public abstract tempAllowWhileInUsePermissionInFgs(IJ)V
.end method
