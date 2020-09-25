.class public final Lo/preload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public onNavigationEvent:[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 1006
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1005
    iput-object v0, p0, Lo/preload;->onNavigationEvent:[D

    .line 1007
    new-array p1, p1, [D

    iput-object p1, p0, Lo/preload;->onNavigationEvent:[D

    if-eqz p2, :cond_0

    .line 1009
    invoke-direct {p0}, Lo/preload;->extraCallback()V

    return-void

    .line 1011
    :cond_0
    invoke-direct {p0}, Lo/preload;->onNavigationEvent()V

    return-void
.end method

.method private extraCallback()V
    .locals 6

    .line 1016
    iget-object v0, p0, Lo/preload;->onNavigationEvent:[D

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    const/4 v0, 0x0

    .line 1017
    :goto_0
    iget-object v1, p0, Lo/preload;->onNavigationEvent:[D

    array-length v4, v1

    if-ge v0, v4, :cond_0

    int-to-double v4, v0

    mul-double v4, v4, v2

    .line 1018
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onNavigationEvent()V
    .locals 6

    .line 1023
    iget-object v0, p0, Lo/preload;->onNavigationEvent:[D

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v2, v0

    const/4 v0, 0x0

    .line 1024
    :goto_0
    iget-object v1, p0, Lo/preload;->onNavigationEvent:[D

    array-length v4, v1

    if-ge v0, v4, :cond_0

    int-to-double v4, v0

    mul-double v4, v4, v2

    .line 1025
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
