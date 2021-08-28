.class Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans;
.super Ljava/lang/Object;
.source "PackageImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/parsing/pkg/PackageImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Booleans"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/parsing/pkg/PackageImpl$Booleans$Flags;
    }
.end annotation


# static fields
.field private static final CORE_APP:I = 0x1

.field private static final FACTORY_TEST:I = 0x4

.field private static final NATIVE_LIBRARY_ROOT_REQUIRES_ISA:I = 0x400

.field private static final ODM:I = 0x100

.field private static final OEM:I = 0x20

.field private static final PRIVILEGED:I = 0x10

.field private static final PRODUCT:I = 0x80

.field private static final SIGNED_WITH_PLATFORM_KEY:I = 0x200

.field private static final STUB:I = 0x800

.field private static final SYSTEM:I = 0x2

.field private static final SYSTEM_EXT:I = 0x8

.field private static final VENDOR:I = 0x40


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
