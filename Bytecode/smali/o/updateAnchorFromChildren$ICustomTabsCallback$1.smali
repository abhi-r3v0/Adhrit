.class final Lo/updateAnchorFromChildren$ICustomTabsCallback$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/updateAnchorFromChildren$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/updateAnchorFromChildren$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;->extraCallback:Lo/updateAnchorFromChildren$ICustomTabsCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1156
    iget-object v0, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;->extraCallback:Lo/updateAnchorFromChildren$ICustomTabsCallback;

    iget-object v0, v0, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Lo/updateAnchorFromChildren;->onMessageChannelReady()Lo/onViewStateRestored$onNavigationEvent;

    move-result-object v0

    .line 2021
    iget-object v0, v0, Lo/onViewStateRestored$onNavigationEvent;->onPostMessage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1158
    iget-object v1, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;->extraCallback:Lo/updateAnchorFromChildren$ICustomTabsCallback;

    iget-object v1, v1, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    .line 3000
    iget-object v1, v1, Lo/updateAnchorFromChildren;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    if-eqz v1, :cond_2

    .line 1158
    iget-object v2, p0, Lo/updateAnchorFromChildren$ICustomTabsCallback$1;->extraCallback:Lo/updateAnchorFromChildren$ICustomTabsCallback;

    iget-object v2, v2, Lo/updateAnchorFromChildren$ICustomTabsCallback;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, Lo/getViewPosition;

    .line 4000
    iget-object v2, v2, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v2, :cond_0

    .line 4019
    iget-object v2, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x6

    const/4 v4, 0x0

    .line 1158
    invoke-static {v1, v2, v4, v4, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabHolderFragment"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1159
    :cond_2
    :goto_1
    sget-object v1, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {v1, v0}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    .line 64
    :cond_3
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
