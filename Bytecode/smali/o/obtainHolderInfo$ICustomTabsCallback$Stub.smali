.class final Lo/obtainHolderInfo$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/obtainHolderInfo;
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
.field final synthetic onPostMessage:Lo/obtainHolderInfo;


# direct methods
.method constructor <init>(Lo/obtainHolderInfo;)V
    .locals 0

    iput-object p1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 44
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_13

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1145
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .line 1262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .line 1269
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1270
    check-cast v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 2034
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;

    .line 2057
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/TemplateProperties;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;

    if-eqz v3, :cond_0

    .line 2117
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/main/remotecontrol/Footer;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz v3, :cond_0

    .line 1145
    invoke-virtual {v3}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    move-object v3, v0

    .line 3019
    :goto_1
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "java.util.Collections.singletonList(element)"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1145
    check-cast v3, Ljava/lang/Iterable;

    .line 1271
    invoke-static {v2, v3}, Lo/getSessionPersistenceKey;->ICustomTabsCallback(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 1273
    :cond_1
    check-cast v2, Ljava/util/List;

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    const/4 v1, 0x3

    new-array v3, v1, [Lo/addWrite;

    .line 3043
    new-instance v4, Lo/addWrite;

    const-string v5, "cta_list"

    invoke-direct {v4, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v4, v3, v2

    if-eqz p1, :cond_3

    .line 1148
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    .line 4043
    :goto_3
    new-instance v5, Lo/addWrite;

    const-string v6, "cta_count"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x1

    aput-object v5, v3, v4

    const/4 v5, 0x2

    .line 1149
    iget-object v6, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 4050
    iget-object v6, v6, Lo/obtainHolderInfo;->onPostMessage:Lo/prepareFromUri;

    const-string/jumbo v7, "root"

    if-nez v6, :cond_4

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1149
    :cond_4
    invoke-virtual {v6, v4}, Lo/prepareFromUri;->canScrollVertically(I)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 5043
    new-instance v8, Lo/addWrite;

    const-string/jumbo v9, "scroll_available"

    invoke-direct {v8, v9, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v3, v5

    const-string v5, "pairs"

    .line 1146
    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5088
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v1, "remote_control_screen_load"

    .line 1146
    invoke-static {v1, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1151
    iget-object v1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 6046
    iget-object v1, v1, Lo/obtainHolderInfo;->onNavigationEvent:Lo/onAnimationStarted;

    if-nez v1, :cond_5

    const-string/jumbo v3, "staggeredAdapter"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    if-eqz p1, :cond_a

    .line 1151
    move-object v3, p1

    check-cast v3, Ljava/lang/Iterable;

    .line 1274
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    check-cast v5, Ljava/util/Collection;

    .line 1275
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 7032
    iget-object v9, v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onPostMessage:Ljava/lang/String;

    const-string v10, "rc1"

    .line 1151
    invoke-static {v9, v10}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 8032
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onPostMessage:Ljava/lang/String;

    const-string v9, "rc2"

    .line 1151
    invoke-static {v8, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_5

    :cond_7
    const/4 v8, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v8, 0x1

    :goto_6
    if-eqz v8, :cond_6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1276
    :cond_9
    check-cast v5, Ljava/util/List;

    goto :goto_7

    :cond_a
    move-object v5, v0

    :goto_7
    if-eqz v5, :cond_b

    .line 8086
    iget-object v3, v1, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->clear()V

    .line 8087
    iget-object v3, v1, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v5, Ljava/util/Collection;

    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 8088
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1152
    :cond_b
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    const-string v4, "lifecycle"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x64

    new-instance v6, Lo/obtainHolderInfo$ICustomTabsCallback$Stub$3;

    invoke-direct {v6, p0}, Lo/obtainHolderInfo$ICustomTabsCallback$Stub$3;-><init>(Lo/obtainHolderInfo$ICustomTabsCallback$Stub;)V

    check-cast v6, Lo/getServerTime;

    invoke-static {v1, v3, v4, v5, v6}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1155
    iget-object v1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 9047
    iget-object v1, v1, Lo/obtainHolderInfo;->onMessageChannelReady:Lo/onAnimationStarted;

    if-nez v1, :cond_c

    const-string/jumbo v3, "verticalAdapter"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    if-eqz p1, :cond_f

    .line 1155
    check-cast p1, Ljava/lang/Iterable;

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 1278
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;

    .line 10032
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/main/remotecontrol/RemoteControlCard;->onPostMessage:Ljava/lang/String;

    const-string v5, "rc3"

    .line 1155
    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1279
    :cond_e
    check-cast v0, Ljava/util/List;

    :cond_f
    if-eqz v0, :cond_10

    .line 10086
    iget-object p1, v1, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 10087
    iget-object p1, v1, Lo/onAnimationStarted;->onMessageChannelReady:Ljava/util/ArrayList;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 10088
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 1156
    :cond_10
    iget-object p1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 11052
    iget-object p1, p1, Lo/obtainHolderInfo;->extraCallback:Lo/onDestroyView;

    if-nez p1, :cond_11

    const-string v0, "loaderView"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1156
    :cond_11
    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1157
    iget-object p1, p0, Lo/obtainHolderInfo$ICustomTabsCallback$Stub;->onPostMessage:Lo/obtainHolderInfo;

    .line 12050
    iget-object p1, p1, Lo/obtainHolderInfo;->onPostMessage:Lo/prepareFromUri;

    if-nez p1, :cond_12

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1157
    :cond_12
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1144
    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.dreamplug.fabrik.ui.main.remotecontrol.RemoteControlCard> /* = java.util.ArrayList<com.dreamplug.fabrik.ui.main.remotecontrol.RemoteControlCard> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
