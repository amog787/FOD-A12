.class public final synthetic Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/IndentingPrintWriter;


# direct methods
.method public synthetic constructor <init>(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$$ExternalSyntheticLambda9;->f$0:Landroid/util/IndentingPrintWriter;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
