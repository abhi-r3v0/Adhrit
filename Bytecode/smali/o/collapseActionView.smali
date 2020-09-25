.class public final Lo/collapseActionView;
.super Lo/getFixedHeightMinor;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "image_manager_disk_cache"

    .line 15
    invoke-direct {p0, p1, v0}, Lo/collapseActionView;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 27
    new-instance v0, Lo/collapseActionView$4;

    invoke-direct {v0, p1, p2}, Lo/collapseActionView$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-wide/32 p1, 0xfa00000

    invoke-direct {p0, v0, p1, p2}, Lo/getFixedHeightMinor;-><init>(Lo/getFixedHeightMinor$onNavigationEvent;J)V

    return-void
.end method
