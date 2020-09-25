.class public final Lo/setWindowCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasLogo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/hasLogo<",
        "Lo/getIconUri$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setWindowCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lo/setWindowCallback;

    invoke-direct {v0}, Lo/setWindowCallback;-><init>()V

    sput-object v0, Lo/setWindowCallback;->ICustomTabsCallback:Lo/setWindowCallback;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
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

    sget-object v1, Lo/restoreToolbarHierarchyState$onPostMessage;->onNavigationEvent:Lo/restoreToolbarHierarchyState$onPostMessage;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1019
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onPostMessage()V

    .line 1021
    :cond_1
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v1

    double-to-float v1, v1

    .line 1022
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->ICustomTabsService()D

    move-result-wide v2

    double-to-float v2, v2

    .line 1023
    :goto_1
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onMessageChannelReady()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1024
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->warmup()V

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 1027
    invoke-virtual {p1}, Lo/restoreToolbarHierarchyState;->onNavigationEvent()V

    .line 1029
    :cond_3
    new-instance p1, Lo/getIconUri$onMessageChannelReady;

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    mul-float v1, v1, p2

    div-float/2addr v2, v0

    mul-float v2, v2, p2

    invoke-direct {p1, v1, v2}, Lo/getIconUri$onMessageChannelReady;-><init>(FF)V

    return-object p1
.end method
