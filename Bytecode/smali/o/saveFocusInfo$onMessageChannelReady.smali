.class public final Lo/saveFocusInfo$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/saveFocusInfo;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsViewModel$fetchData$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/saveFocusInfo;


# direct methods
.method constructor <init>(Lo/saveFocusInfo;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 79
    iput-object p1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    iput-object p2, p0, Lo/saveFocusInfo$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_d

    .line 83
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 83
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->ICustomTabsCallback:Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2009
    :goto_0
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 84
    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    if-eqz v2, :cond_1

    .line 2015
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 85
    :goto_1
    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-nez v3, :cond_c

    .line 86
    iget-object v1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {v1}, Lo/saveFocusInfo;->onPostMessage(Lo/saveFocusInfo;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v1, v3}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;I)V

    .line 87
    iget-object v1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    .line 3009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 87
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;

    if-eqz p1, :cond_4

    .line 3010
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    .line 87
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    :goto_4
    invoke-static {v1, p1}, Lo/saveFocusInfo;->extraCallback(Lo/saveFocusInfo;Z)V

    .line 89
    check-cast v0, Ljava/lang/Iterable;

    .line 190
    new-instance p1, Ljava/util/ArrayList;

    const-string v1, "$this$collectionSizeOrDefault"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3039
    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_5

    :cond_5
    const/16 v1, 0xa

    .line 190
    :goto_5
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Ljava/util/Collection;

    .line 191
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 192
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 90
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 193
    :cond_6
    check-cast p1, Ljava/util/List;

    .line 93
    check-cast p1, Ljava/lang/Iterable;

    .line 195
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v3, v0, 0x1

    if-ltz v0, :cond_a

    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 94
    sget-object v6, Lo/dispatchContentChangedIfNecessary;->ICustomTabsCallback:Lo/dispatchContentChangedIfNecessary$onMessageChannelReady;

    .line 4064
    invoke-static {}, Lo/dispatchContentChangedIfNecessary;->onPostMessage()Ljava/util/List;

    move-result-object v6

    .line 94
    check-cast v6, Ljava/lang/Iterable;

    .line 5027
    iget-object v7, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 5062
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    .line 94
    invoke-static {v6, v7}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 95
    iget-object v6, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {v6}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v7, Lo/processAdapterUpdatesAndSetAnimationFlags;

    iget-object v8, p0, Lo/saveFocusInfo$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {v7, v1, v0, v8}, Lo/processAdapterUpdatesAndSetAnimationFlags;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;ILjava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 96
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {v0}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v12, Lo/onCreateView;

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "Resources.getSystem()"

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v8, 0x41a00000    # 20.0f

    .line 6010
    invoke-static {v5, v8, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v9, v6

    .line 7009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x41400000    # 12.0f

    .line 7010
    invoke-static {v5, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v8, v6

    const/4 v10, 0x0

    const/16 v11, 0x8

    const-string/jumbo v7, "seperator_space"

    move-object v6, v12

    .line 96
    invoke-direct/range {v6 .. v11}, Lo/onCreateView;-><init>(Ljava/lang/String;IIII)V

    invoke-virtual {v0, v12}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 7027
    :cond_7
    iget-object v0, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;

    .line 7062
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TemplateProperties;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :cond_8
    const-string v6, "notification_consent"

    .line 8054
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_8
    if-eqz v0, :cond_9

    .line 100
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    .line 9045
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->newSession:Ljava/lang/Boolean;

    .line 9048
    iput-object v1, v0, Lo/saveFocusInfo;->asInterface:Ljava/lang/Boolean;

    :cond_9
    move v0, v3

    goto/16 :goto_7

    .line 3441
    :cond_a
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 104
    :cond_b
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {v0}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 106
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    .line 10031
    iget-object v0, v0, Lo/saveFocusInfo;->onPostMessage:Lo/setActive;

    .line 106
    new-instance v1, Lo/onExitLayoutOrScroll;

    check-cast p1, Ljava/util/List;

    invoke-direct {v1, p1, v2}, Lo/onExitLayoutOrScroll;-><init>(Ljava/util/List;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/ParentEntity;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_9

    .line 108
    :cond_c
    iget-object p1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {p1}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 109
    iget-object p1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    .line 10050
    iget-object p1, p1, Lo/saveFocusInfo;->asBinder:Lo/setActive;

    .line 109
    new-instance v0, Lo/throwIfInMutationOperation;

    invoke-static {v1, v1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_9

    .line 114
    :cond_d
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_e

    .line 115
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {v0}, Lo/saveFocusInfo;->onMessageChannelReady(Lo/saveFocusInfo;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 116
    iget-object v0, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    .line 11050
    iget-object v0, v0, Lo/saveFocusInfo;->asBinder:Lo/setActive;

    .line 116
    new-instance v1, Lo/throwIfInMutationOperation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 12014
    iget-object v2, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 13014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 116
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v2, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 120
    :cond_e
    :goto_9
    iget-object p1, p0, Lo/saveFocusInfo$onMessageChannelReady;->extraCallback:Lo/saveFocusInfo;

    invoke-static {p1}, Lo/saveFocusInfo;->ICustomTabsCallback(Lo/saveFocusInfo;)V

    return-void
.end method
