.class public final synthetic Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/PackageManagerService$Injector$ServiceProducer;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final produce(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$$ExternalSyntheticLambda34;->f$0:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
