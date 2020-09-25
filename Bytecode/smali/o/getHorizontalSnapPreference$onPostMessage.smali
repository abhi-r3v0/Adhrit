.class final Lo/getHorizontalSnapPreference$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHorizontalSnapPreference;->ICustomTabsCallback()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/getHorizontalSnapPreference$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/getHorizontalSnapPreference$onPostMessage;

    invoke-direct {v0}, Lo/getHorizontalSnapPreference$onPostMessage;-><init>()V

    sput-object v0, Lo/getHorizontalSnapPreference$onPostMessage;->onMessageChannelReady:Lo/getHorizontalSnapPreference$onPostMessage;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 95
    sget-object v0, Lo/getInterpolator;->onNavigationEvent:Lo/getInterpolator;

    .line 96
    sget-object v0, Lo/setSwitchTypefaceByIndex;->onNavigationEvent:Lo/setSwitchTypefaceByIndex$onNavigationEvent;

    .line 1122
    invoke-static {}, Lo/setSwitchTypefaceByIndex;->onPostMessage()Lo/setSwitchTypefaceByIndex;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "context"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 96
    :cond_0
    check-cast v0, Landroid/app/Application;

    const-string v1, "application"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2019
    sput-object v0, Lo/getInterpolator;->extraCallback:Landroid/app/Application;

    .line 3000
    sget-object v0, Lo/getInterpolator;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase;

    .line 2020
    invoke-virtual {v0}, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeDatabase;->ICustomTabsCallback$Stub()Lo/setDuration;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lo/setDuration;->extraCallback()Ljava/util/List;

    move-result-object v0

    .line 99
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    new-array v2, v1, [Lo/addWrite;

    .line 101
    move-object v3, v0

    check-cast v3, Ljava/lang/Iterable;

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    const-string v5, "$this$collectionSizeOrDefault"

    invoke-static {v3, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    move-object v5, v3

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    .line 126
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .line 127
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "pairs"

    const/4 v7, 0x0

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 128
    check-cast v5, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;

    const/4 v8, 0x2

    new-array v9, v8, [Lo/addWrite;

    .line 4009
    iget-object v10, v5, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->ICustomTabsCallback:Ljava/lang/String;

    .line 4043
    new-instance v11, Lo/addWrite;

    const-string v12, "card_id"

    invoke-direct {v11, v12, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v11, v9, v7

    .line 5010
    iget-boolean v5, v5, Lcom/dreamplug/stringrepo/cache/WishlistUnlikeEntity;->onPostMessage:Z

    .line 104
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 5043
    new-instance v7, Lo/addWrite;

    const-string v10, "liked"

    invoke-direct {v7, v10, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v9, v1

    .line 102
    invoke-static {v9, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    move-object v6, v5

    check-cast v6, Ljava/util/Map;

    invoke-static {v6, v9}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 105
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    :cond_1
    check-cast v4, Ljava/util/List;

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v5, "user_cards"

    invoke-direct {v3, v5, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v2, v7

    .line 100
    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/HashMap;-><init>(I)V

    move-object v1, v3

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 107
    sget-object v1, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    invoke-static {v1}, Lo/getHorizontalSnapPreference;->onNavigationEvent(Lo/getHorizontalSnapPreference;)Lo/computeHorizontalScrollExtent;

    move-result-object v1

    invoke-interface {v1, v3}, Lo/computeHorizontalScrollExtent;->onNavigationEvent(Ljava/lang/Object;)Lo/clearScrap;

    move-result-object v1

    sget-object v2, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    invoke-static {}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback()Lo/validateViewHolderForOffsetPosition;

    move-result-object v2

    invoke-interface {v1, v2}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 108
    new-instance v2, Lo/getHorizontalSnapPreference$onPostMessage$5;

    invoke-direct {v2, v0}, Lo/getHorizontalSnapPreference$onPostMessage$5;-><init>(Ljava/util/List;)V

    check-cast v2, Lo/getScrapOrCachedViewForId;

    invoke-interface {v1, v2}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void

    .line 119
    :cond_2
    sget-object v0, Lo/getHorizontalSnapPreference;->ICustomTabsCallback:Lo/getHorizontalSnapPreference;

    invoke-static {}, Lo/getHorizontalSnapPreference;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
