.class public final synthetic Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$PackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/NetworkScoreService;

    return-void
.end method


# virtual methods
.method public final getPackages(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkScoreService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/NetworkScoreService;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkScoreService;->lambda$new$0$NetworkScoreService(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
