.class public interface abstract Lcom/android/server/Dumpable;
.super Ljava/lang/Object;
.source "Dumpable.java"


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
.end method

.method public getDumpableName()Ljava/lang/String;
    .locals 1

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
