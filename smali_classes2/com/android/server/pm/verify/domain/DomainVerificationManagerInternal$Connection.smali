.class public interface abstract Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal$Connection;
.super Ljava/lang/Object;
.source "DomainVerificationManagerInternal.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/DomainVerificationEnforcer$Callback;
.implements Landroid/content/pm/PackageSettingsSnapshotProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Connection"
.end annotation


# virtual methods
.method public abstract getAllUserIds()[I
.end method

.method public abstract getCallingUid()I
.end method

.method public abstract getCallingUserId()I
.end method

.method public abstract schedule(ILjava/lang/Object;)V
.end method

.method public abstract scheduleWriteSettings()V
.end method
