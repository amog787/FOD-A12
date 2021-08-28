.class Lcom/android/server/pm/PackageManagerService$5;
.super Landroid/content/pm/ParceledListSlice;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->getAllIntentFilters(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/ParceledListSlice<",
        "Landroid/content/IntentFilter;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 17110
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "parcelable"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Landroid/os/Parcel;
    .param p3, "callFlags"    # I

    .line 17113
    invoke-virtual {p1, p2, p3}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 17114
    return-void
.end method

.method protected bridge synthetic writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0

    .line 17110
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$5;->writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    .line 17110
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$5;->writeElement(Landroid/content/IntentFilter;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected writeParcelableCreator(Landroid/content/IntentFilter;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcelable"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Landroid/os/Parcel;

    .line 17121
    const-class v0, Landroid/content/IntentFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 17122
    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .locals 0

    .line 17110
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$5;->writeParcelableCreator(Landroid/content/IntentFilter;Landroid/os/Parcel;)V

    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    .line 17110
    check-cast p1, Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$5;->writeParcelableCreator(Landroid/content/IntentFilter;Landroid/os/Parcel;)V

    return-void
.end method
