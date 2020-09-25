.class final Lo/addTab$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/addTab;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/util/ArrayList<",
        "Lo/StaggeredGridLayoutManager;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u000120\u0010\u0002\u001a,\u0012\u0004\u0012\u00020\u0004 \u0006*\u0016\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003j\n\u0012\u0004\u0012\u00020\u0004\u0018\u0001`\u00050\u0003j\u0008\u0012\u0004\u0012\u00020\u0004`\u0005H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/utils/list/ListItem;",
        "Lkotlin/collections/ArrayList;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/addTab;


# direct methods
.method constructor <init>(Lo/addTab;)V
    .locals 0

    iput-object p1, p0, Lo/addTab$onPostMessage;->extraCallback:Lo/addTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 46
    check-cast p1, Ljava/util/ArrayList;

    .line 1081
    iget-object v0, p0, Lo/addTab$onPostMessage;->extraCallback:Lo/addTab;

    .line 2048
    iget-object v0, v0, Lo/addTab;->extraCallback:Lo/getTintListFromCache;

    if-eqz v0, :cond_0

    const-string v1, "it"

    .line 1081
    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/List;

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 3038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 1082
    :cond_0
    iget-object p1, p0, Lo/addTab$onPostMessage;->extraCallback:Lo/addTab;

    .line 5000
    iget-object p1, p1, Lo/addTab;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateTab;

    .line 5022
    iget-boolean p1, p1, Lo/updateTab;->onNavigationEvent:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1083
    iget-object p1, p0, Lo/addTab$onPostMessage;->extraCallback:Lo/addTab;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->instrumentList:I

    invoke-virtual {p1, v1}, Lo/addTab;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1084
    :cond_1
    iget-object p1, p0, Lo/addTab$onPostMessage;->extraCallback:Lo/addTab;

    .line 6000
    iget-object p1, p1, Lo/addTab;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/updateTab;

    .line 6022
    iput-boolean v0, p1, Lo/updateTab;->onNavigationEvent:Z

    return-void
.end method
