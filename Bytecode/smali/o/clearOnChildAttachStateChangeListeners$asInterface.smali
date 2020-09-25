.class public final Lo/clearOnChildAttachStateChangeListeners$asInterface;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onViewCreated$1",
        "Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;",
        "getSpanSize",
        "",
        "position",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getOnFlingListener;

.field private synthetic onPostMessage:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;Lo/getOnFlingListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getOnFlingListener;",
            ")V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$asInterface;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    iput-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$asInterface;->extraCallback:Lo/getOnFlingListener;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 2

    .line 160
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$asInterface;->extraCallback:Lo/getOnFlingListener;

    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$asInterface;->onPostMessage:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v1}, Lo/clearOnChildAttachStateChangeListeners;->extraCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v1

    .line 2000
    iget-object v1, v1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/checkSpanForGap;

    .line 2151
    iget-object v1, v1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    .line 160
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/StaggeredGridLayoutManager;

    invoke-virtual {v0, p1}, Lo/getOnFlingListener;->extraCallback(Lo/StaggeredGridLayoutManager;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/16 v0, 0x6592

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    return p1
.end method
