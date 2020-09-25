.class public final Lo/removeActionBarHideOffset;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Landroid/graphics/PointF;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/removeActionBarHideOffset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lo/removeActionBarHideOffset;

    invoke-direct {v0}, Lo/removeActionBarHideOffset;-><init>()V

    sput-object v0, Lo/removeActionBarHideOffset;->ICustomTabsCallback:Lo/removeActionBarHideOffset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Lo/restoreToolbarHierarchyState;F)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1017
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onTransact()Lo/restoreToolbarHierarchyState$onPostMessage;

    move-result-object v0

    .line 1018
    sget-object v1, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v0, v1, :cond_0

    .line 1019
    invoke-static {p1, p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 1020
    :cond_0
    sget-object v1, Lo/restoreToolbarHierarchyState$onPostMessage;->extraCallback:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v0, v1, :cond_1

    .line 1021
    invoke-static {p1, p2}, Lo/onNestedFling;->onNavigationEvent(Lo/restoreToolbarHierarchyState;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_1
    sget-object v1, Lo/restoreToolbarHierarchyState$onPostMessage;->onTransact:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v0, v1, :cond_3

    .line 1026
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, p2

    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1027
    :goto_0
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1028
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_0

    :cond_2
    return-object v0

    .line 1032
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Cannot convert json to point. Next token is "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
