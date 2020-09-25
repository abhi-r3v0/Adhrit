.class public final Lo/onQueryTextSubmit$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onQueryTextSubmit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J&\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u00072\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J\u0006\u0010\r\u001a\u00020\u000eJ\u001a\u0010\u000f\u001a\u0004\u0018\u00010\u00072\u000e\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\nH\u0002J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0007J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u0018J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0013H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/helpers/LuckyNumberDigitRecycle;",
        "",
        "digitView",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView;",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/widget/LuckyNumberDigitView;)V",
        "emptyItems",
        "",
        "Landroid/view/View;",
        "items",
        "addView",
        "",
        "view",
        "cache",
        "clearAll",
        "",
        "getCachedView",
        "getEmptyItem",
        "getItem",
        "recycleItems",
        "",
        "layout",
        "Landroid/widget/LinearLayout;",
        "firstItem",
        "range",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/helpers/ItemsRange;",
        "recycleView",
        "index",
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
.field public onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getChildViewHolder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/getChildViewHolder;)V
    .locals 1

    const-string v0, "digitView"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolder;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/util/List;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 11111
    check-cast p0, Ljava/util/Collection;

    const-string v1, "$this$toMutableList"

    invoke-static {p0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11246
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 11112
    move-object p0, v1

    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 11113
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11114
    invoke-interface {v1, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 11059
    iget-object v0, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11060
    :cond_0
    iget-object v0, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public final extraCallback(Landroid/widget/LinearLayout;ILo/instantiateActivity;)I
    .locals 7

    const-string v0, "layout"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "range"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, p2

    const/4 v2, 0x0

    .line 2024
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 3014
    iget v3, p3, Lo/instantiateActivity;->onPostMessage:I

    .line 4011
    iget v4, p3, Lo/instantiateActivity;->onPostMessage:I

    iget v5, p3, Lo/instantiateActivity;->onMessageChannelReady:I

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-le v3, v1, :cond_0

    goto :goto_1

    :cond_0
    if-lt v4, v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    .line 2026
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "layout.getChildAt(i)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4088
    iget-object v4, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolder;

    .line 5066
    iget-object v4, v4, Lo/getChildViewHolder;->ICustomTabsCallback$Stub:Lo/markKnownViewsInvalid;

    if-eqz v4, :cond_2

    .line 4088
    invoke-interface {v4}, Lo/markKnownViewsInvalid;->onMessageChannelReady()I

    move-result v4

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    :goto_3
    const-string v5, "$this$toMutableList"

    if-ltz v1, :cond_3

    if-lt v1, v4, :cond_4

    .line 4089
    :cond_3
    iget-object v4, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onPostMessage:Lo/getChildViewHolder;

    .line 6058
    iget-boolean v4, v4, Lo/getChildViewHolder;->onMessageChannelReady:Z

    if-nez v4, :cond_4

    .line 4091
    iget-object v4, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    if-eqz v4, :cond_5

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v6, Ljava/util/List;

    .line 7073
    check-cast v6, Ljava/util/Collection;

    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7246
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v4, Ljava/util/List;

    .line 7077
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4092
    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    .line 4092
    iput-object v3, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/List;

    goto :goto_4

    .line 4099
    :cond_4
    iget-object v4, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    if-eqz v4, :cond_5

    .line 9073
    check-cast v4, Ljava/util/Collection;

    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9246
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v6, Ljava/util/List;

    .line 9077
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4100
    check-cast v6, Ljava/util/Collection;

    invoke-static {v6, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10246
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v3, Ljava/util/List;

    .line 4100
    iput-object v3, p0, Lo/onQueryTextSubmit$ICustomTabsCallback;->onNavigationEvent:Ljava/util/List;

    .line 2027
    :cond_5
    :goto_4
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    if-nez v2, :cond_7

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return p2
.end method
