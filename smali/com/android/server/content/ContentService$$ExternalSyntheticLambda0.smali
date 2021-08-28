.class public final synthetic Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/pm/permission/LegacyPermissionManagerInternal$SyncAdapterPackagesProvider;


# instance fields
.field public final synthetic f$0:Lcom/android/server/content/ContentService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService;

    return-void
.end method


# virtual methods
.method public final getPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/ContentService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/content/ContentService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/content/ContentService;->lambda$new$0$ContentService(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
