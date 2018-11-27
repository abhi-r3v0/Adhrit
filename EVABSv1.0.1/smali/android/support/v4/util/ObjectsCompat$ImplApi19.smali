.class Landroid/support/v4/util/ObjectsCompat$ImplApi19;
.super Landroid/support/v4/util/ObjectsCompat$ImplBase;
.source "ObjectsCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/ObjectsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImplApi19"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0}, Landroid/support/v4/util/ObjectsCompat$ImplBase;-><init>(Landroid/support/v4/util/ObjectsCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/util/ObjectsCompat$1;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroid/support/v4/util/ObjectsCompat$ImplApi19;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 71
    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
