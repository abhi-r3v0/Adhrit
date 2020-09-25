.class public final Lo/DiffUtil;
.super Lo/MediaControllerCompat$TransportControlsApi24;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/DiffUtil$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 +2\u00020\u0001:\u0001+B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u0016\u001a\u00020\u0011J\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018J\u000e\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0011J\u0006\u0010\u001d\u001a\u00020\u0011J\u0016\u0010\u001e\u001a\u0012\u0012\u0004\u0012\u00020 0\u001fj\u0008\u0012\u0004\u0012\u00020 `!J\u0006\u0010\"\u001a\u00020\u0011J\u0010\u0010#\u001a\u0004\u0018\u00010$2\u0006\u0010\u001c\u001a\u00020\u0011J\u0008\u0010%\u001a\u0004\u0018\u00010&J\u0006\u0010\'\u001a\u00020\u001bJ\u0006\u0010(\u001a\u00020\u001bJ\u000e\u0010)\u001a\u00020*2\u0006\u0010\u001c\u001a\u00020\u0011R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006,"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestViewModel;",
        "Landroidx/lifecycle/AndroidViewModel;",
        "application",
        "Landroid/app/Application;",
        "(Landroid/app/Application;)V",
        "currentStoryState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/fabrik/ui/digest/StoryStates;",
        "getCurrentStoryState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "nbaService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getNbaService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "nbaService$delegate",
        "Lkotlin/Lazy;",
        "retainedIndex",
        "",
        "getRetainedIndex",
        "()I",
        "setRetainedIndex",
        "(I)V",
        "getCurrentStoryIndex",
        "getPrefetchImages",
        "",
        "",
        "getShareable",
        "",
        "index",
        "getStoriesCount",
        "getStoriesDurations",
        "Ljava/util/ArrayList;",
        "",
        "Lkotlin/collections/ArrayList;",
        "getStoriesSeenCount",
        "getStory",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "getThumbnail",
        "Lcom/dreamplug/fabrik/ui/nba/helper/Background;",
        "hasNewStories",
        "isDigestSeenForFirstTime",
        "storySeen",
        "",
        "Companion",
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
.field ICustomTabsCallback:I

.field final onMessageChannelReady:Lo/isSameListener;

.field final onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/diffPartial;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$TransportControlsApi24;-><init>(Landroid/app/Application;)V

    .line 20
    sget-object p1, Lo/DiffUtil$onNavigationEvent;->ICustomTabsCallback:Lo/DiffUtil$onNavigationEvent;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 20
    iput-object v0, p0, Lo/DiffUtil;->onMessageChannelReady:Lo/isSameListener;

    const/high16 p1, -0x80000000

    .line 24
    iput p1, p0, Lo/DiffUtil;->ICustomTabsCallback:I

    .line 26
    new-instance p1, Lo/setActive;

    invoke-direct {p1}, Lo/setActive;-><init>()V

    iput-object p1, p0, Lo/DiffUtil;->onNavigationEvent:Lo/setActive;

    return-void
.end method

.method public static ICustomTabsCallback()I
    .locals 5

    .line 61
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 8000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 8320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 8321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 61
    :goto_0
    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Iterable;

    .line 140
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    return v1

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9022
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v3, :cond_3

    .line 9130
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->ICustomTabsCallback:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v3, v2

    .line 62
    :goto_2
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_4

    goto :goto_1

    .line 9445
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Count overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_5
    return v1
.end method

.method public static ICustomTabsCallback(I)Z
    .locals 2

    .line 66
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 10000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 10320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    if-eqz p0, :cond_1

    .line 11022
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz p0, :cond_1

    .line 11131
    iget-object p0, p0, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    .line 66
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ICustomTabsCallback$Stub()Z
    .locals 3

    .line 118
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 23000
    sget-object v0, Lo/setTrackTintMode;->validateRelationship:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x15

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static asBinder()Z
    .locals 7

    .line 105
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onTransact()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 106
    :cond_0
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    .line 20320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 20321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v3

    .line 106
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 107
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    return v1

    .line 109
    :cond_3
    :goto_1
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 21000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 21320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 21321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, v3

    .line 109
    :goto_2
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    const-string v2, "it"

    .line 110
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_7

    .line 111
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 22022
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v5, :cond_5

    .line 22130
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->ICustomTabsCallback:Ljava/lang/Boolean;

    goto :goto_4

    :cond_5
    move-object v5, v3

    .line 111
    :goto_4
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    return v1
.end method

.method public static asInterface()Lcom/dreamplug/fabrik/ui/nba/helper/Background;
    .locals 8

    .line 70
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 12000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 12320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 70
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    .line 71
    sget-object v1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onTransact()Z

    move-result v1

    const-string v3, "it"

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 13024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 13031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v0

    .line 72
    :cond_1
    sget-object v1, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v1

    .line 13320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 13321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 72
    :goto_1
    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_5

    .line 73
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 14024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 14031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v0

    .line 74
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 15024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 15031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v0

    .line 76
    :cond_5
    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_8

    .line 77
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 16022
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v6, :cond_6

    .line 16130
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->ICustomTabsCallback:Ljava/lang/Boolean;

    goto :goto_4

    :cond_6
    move-object v6, v2

    .line 77
    :goto_4
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6, v7}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 78
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 17024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 17031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 81
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    if-lez v1, :cond_9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 18024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 18031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Background;

    return-object v0

    :cond_9
    return-object v2
.end method

.method public static extraCallback()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 30
    sget-object v1, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 1000
    sget-object v1, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    .line 30
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 2022
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v4, :cond_2

    .line 2129
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->onPostMessage:Ljava/lang/Long;

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 3022
    iget-object v4, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    .line 3129
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->onPostMessage:Ljava/lang/Long;

    .line 31
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    .line 4022
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    .line 4129
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->onPostMessage:Ljava/lang/Long;

    .line 31
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    goto :goto_3

    :cond_3
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 5000
    sget-object v2, Lo/isInLayout;->getItem:Lo/isRemoving;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v5, 0x3b

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    .line 32
    :goto_3
    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 6000
    sget-object v2, Lo/isInLayout;->unsubscribe:Lo/isRemoving;

    sget-object v6, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v7, 0x3c

    aget-object v6, v6, v7

    invoke-virtual {v2, v6}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    .line 32
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static onMessageChannelReady(I)Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;
    .locals 3

    .line 134
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 24000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 24320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 24321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 134
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    return-object p0

    :cond_1
    return-object v2
.end method

.method public static onPostMessage()I
    .locals 2

    .line 54
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 7000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 7320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onTransact()I
    .locals 7

    .line 87
    iget v0, p0, Lo/DiffUtil;->ICustomTabsCallback:I

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_0

    return v0

    .line 88
    :cond_0
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->onTransact()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 89
    :cond_1
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->asBinder()Lo/setActive;

    move-result-object v0

    .line 18320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 18321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, v3

    .line 89
    :goto_0
    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    if-nez v0, :cond_3

    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v1

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 93
    :cond_5
    sget-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 19000
    sget-object v0, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 19320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 19321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_6

    goto :goto_2

    :cond_6
    move-object v0, v3

    .line 93
    :goto_2
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9

    const-string v2, "it"

    .line 94
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_9

    .line 95
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 20022
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;

    if-eqz v5, :cond_7

    .line 20130
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/nba/helper/Metadata;->ICustomTabsCallback:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v5, v3

    .line 95
    :goto_4
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move v1, v4

    goto :goto_5

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_5
    return v1
.end method
