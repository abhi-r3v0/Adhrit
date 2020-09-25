.class public final Lo/removeTabAt$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/removeTabAt;-><init>()V
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
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/cred/pay/ui/instrumentlisting/recommendations/InstrumentRecommendationsFragment$onClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/removeTabAt;


# direct methods
.method constructor <init>(Lo/removeTabAt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lo/removeTabAt$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 6

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x72dd30f6

    if-eq p3, v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string/jumbo p3, "select_instrument"

    .line 194
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 195
    instance-of p1, p2, Lo/getTintMode;

    if-eqz p1, :cond_8

    .line 196
    iget-object p1, p0, Lo/removeTabAt$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->onNavigationEvent(Lo/removeTabAt;)Lo/getTintListFromCache;

    move-result-object p1

    const/4 p3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 2000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 2151
    iget-object p1, p1, Lo/checkSpanForGap;->ICustomTabsCallback:Ljava/util/List;

    if-eqz p1, :cond_5

    .line 196
    check-cast p1, Ljava/lang/Iterable;

    .line 235
    new-instance v2, Ljava/util/ArrayList;

    const-string v3, "$this$collectionSizeOrDefault"

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v3, p1, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, p1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 235
    :goto_0
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 236
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 237
    check-cast v3, Lo/StaggeredGridLayoutManager;

    .line 197
    instance-of v4, v3, Lo/getTintMode;

    if-eqz v4, :cond_3

    .line 198
    move-object v4, v3

    check-cast v4, Lo/getTintMode;

    .line 4016
    iget-boolean v5, v4, Lo/getTintMode;->onNavigationEvent:Z

    if-eqz v5, :cond_2

    .line 198
    invoke-static {v3, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    xor-int/2addr v5, v1

    if-eqz v5, :cond_2

    .line 199
    invoke-static {v4, p3}, Lo/getTintMode;->onPostMessage(Lo/getTintMode;Z)Lo/getTintMode;

    move-result-object v3

    check-cast v3, Lo/StaggeredGridLayoutManager;

    goto :goto_2

    .line 201
    :cond_2
    invoke-static {v3, p2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 202
    invoke-static {v4, v1}, Lo/getTintMode;->onPostMessage(Lo/getTintMode;Z)Lo/getTintMode;

    move-result-object v3

    check-cast v3, Lo/StaggeredGridLayoutManager;

    .line 205
    :cond_3
    :goto_2
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_4
    check-cast v2, Ljava/util/List;

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    if-eqz v2, :cond_6

    .line 208
    iget-object p1, p0, Lo/removeTabAt$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->onNavigationEvent(Lo/removeTabAt;)Lo/getTintListFromCache;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string/jumbo v3, "value"

    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5000
    iget-object p1, p1, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/checkSpanForGap;

    .line 4038
    invoke-virtual {p1, v2}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    .line 210
    :cond_6
    iget-object p1, p0, Lo/removeTabAt$ICustomTabsCallback;->ICustomTabsCallback:Lo/removeTabAt;

    invoke-static {p1}, Lo/removeTabAt;->onMessageChannelReady(Lo/removeTabAt;)Lo/removeAllTabs;

    move-result-object p1

    check-cast p2, Lo/getTintMode;

    .line 5151
    iget-object p1, p1, Lo/removeAllTabs;->onMessageChannelReady:Lo/setActive;

    if-eqz p2, :cond_7

    .line 6014
    iget-object v0, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 5151
    :cond_7
    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    new-array p1, v1, [Lo/addWrite;

    .line 7014
    iget-object p2, p2, Lo/getTintMode;->ICustomTabsCallback:Lo/isInputMethodNotNeeded;

    .line 212
    invoke-virtual {p2}, Lo/isInputMethodNotNeeded;->extraCallback()Ljava/lang/String;

    move-result-object p2

    .line 7043
    new-instance v0, Lo/addWrite;

    const-string/jumbo v2, "selected_instrument"

    invoke-direct {v0, v2, p2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v0, p1, p3

    const-string p2, "pairs"

    .line 212
    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance p2, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/HashMap;-><init>(I)V

    check-cast p2, Ljava/util/Map;

    invoke-static {p2, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "pi_recommendation_screen_chosen_method_click"

    .line 211
    invoke-static {p1, p2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    :cond_8
    :goto_4
    return-void
.end method
