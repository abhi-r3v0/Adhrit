.class final Lo/stopGestureDetection$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopGestureDetection;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/stopGestureDetection;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/stopGestureDetection;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/stopGestureDetection$onNavigationEvent;->extraCallback:Lo/stopGestureDetection;

    iput-object p2, p0, Lo/stopGestureDetection$onNavigationEvent;->onPostMessage:Lo/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 69
    iget-object p1, p0, Lo/stopGestureDetection$onNavigationEvent;->onPostMessage:Lo/StaggeredGridLayoutManager;

    check-cast p1, Lo/destroyCallbacks;

    .line 1036
    iget-object p1, p1, Lo/destroyCallbacks;->extraCallback:Lcom/dreamplug/fabrik/ui/lending/model/EmiSummary;

    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lo/stopGestureDetection$onNavigationEvent;->extraCallback:Lo/stopGestureDetection;

    invoke-static {v0}, Lo/stopGestureDetection;->extraCallback(Lo/stopGestureDetection;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast p1, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string/jumbo v2, "summary"

    .line 1066
    invoke-interface {v0, v2, p1, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    :cond_0
    return-void
.end method
