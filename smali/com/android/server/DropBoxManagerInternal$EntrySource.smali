.class public interface abstract Lcom/android/server/DropBoxManagerInternal$EntrySource;
.super Ljava/lang/Object;
.source "DropBoxManagerInternal.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DropBoxManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EntrySource"
.end annotation


# virtual methods
.method public abstract length()J
.end method

.method public abstract writeTo(Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
