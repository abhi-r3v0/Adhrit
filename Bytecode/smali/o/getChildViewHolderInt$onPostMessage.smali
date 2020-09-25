.class final Lo/getChildViewHolderInt$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildViewHolderInt;
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
        "Ljava/util/List<",
        "+",
        "Lo/findContainingItemView$onNavigationEvent;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$WinMachineViewData;",
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
.field private synthetic ICustomTabsCallback:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 54
    check-cast p1, Ljava/util/List;

    .line 1206
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_2

    .line 1207
    iget-object p1, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1, v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback(Z)V

    return-void

    .line 1209
    :cond_2
    iget-object v1, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {v1, v2}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onDestroyView;

    invoke-virtual {v1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1210
    iget-object v1, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    invoke-static {v1}, Lo/getChildViewHolderInt;->extraCallback(Lo/getChildViewHolderInt;)Lo/getChildLayoutPosition;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "listItems"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2016
    iget-object p1, v1, Lo/getChildLayoutPosition;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 2017
    iget-object p1, v1, Lo/getChildLayoutPosition;->onNavigationEvent:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2018
    invoke-virtual {v1}, Lo/toKeyCode;->onNavigationEvent()V

    .line 1211
    :cond_3
    iget-object p1, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->viewPager:I

    invoke-virtual {p1, v0}, Lo/getChildViewHolderInt;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setContentPadding;

    const-string/jumbo v0, "viewPager"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lo/getChildViewHolderInt$onPostMessage;->ICustomTabsCallback:Lo/getChildViewHolderInt;

    invoke-static {v0}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v0

    .line 2087
    iget v0, v0, Lo/findContainingItemView;->ICustomTabsService$Stub:I

    .line 1211
    invoke-virtual {p1, v0}, Lo/PlaybackStateCompat;->setCurrentItem(I)V

    return-void
.end method
