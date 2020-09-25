.class public final Lo/createLayoutState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/LifestylePageManager$fetchCardForPage$1$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
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
.field private synthetic extraCallback:Lo/clearScrap;

.field private synthetic onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

.field private synthetic onNavigationEvent:Lo/onDisconnectSetValue;


# direct methods
.method public constructor <init>(Lo/clearScrap;Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;Lo/onDisconnectSetValue;)V
    .locals 0

    iput-object p1, p0, Lo/createLayoutState;->extraCallback:Lo/clearScrap;

    iput-object p2, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    iput-object p3, p0, Lo/createLayoutState;->onNavigationEvent:Lo/onDisconnectSetValue;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    .line 48
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 1018
    iput-object v2, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 49
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 2009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 49
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    if-eqz p1, :cond_5

    .line 51
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 2017
    iget v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->onMessageChannelReady:I

    .line 51
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3017
    iput-object v2, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->extraCallback:Ljava/lang/Integer;

    .line 52
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 4015
    iput-object p1, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

    .line 53
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 4021
    iget-object v0, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 5021
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    .line 53
    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6021
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;->extraCallback:Ljava/util/List;

    .line 54
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    const-string v2, "$this$collectionSizeOrDefault"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6039
    instance-of v2, p1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/16 v2, 0xa

    .line 82
    :goto_0
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .line 84
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_1

    .line 85
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 55
    new-instance v5, Lo/addWrite;

    new-instance v6, Lo/getStackFromEnd;

    iget-object v7, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 7015
    iget v7, v7, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onTransact:I

    .line 55
    iget-object v8, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 8015
    iget v8, v8, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onTransact:I

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x5

    add-int/2addr v8, v2

    .line 55
    invoke-direct {v6, v7, v8}, Lo/getStackFromEnd;-><init>(II)V

    invoke-direct {v5, v3, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_1

    .line 6441
    :cond_1
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 86
    :cond_2
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/Collection;

    .line 88
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lo/addWrite;

    .line 57
    sget-object v4, Lo/collectAdjacentPrefetchPositions;->onPostMessage:Lo/collectAdjacentPrefetchPositions$ICustomTabsCallback;

    .line 9091
    invoke-static {}, Lo/collectAdjacentPrefetchPositions;->onNavigationEvent()Ljava/util/List;

    move-result-object v4

    .line 10027
    iget-object v3, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 57
    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    .line 10031
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->onTransact:Ljava/lang/String;

    .line 57
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 89
    :cond_4
    check-cast p1, Ljava/util/List;

    .line 59
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 11022
    iget-object v0, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    .line 59
    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object p1, p0, Lo/createLayoutState;->onNavigationEvent:Lo/onDisconnectSetValue;

    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 62
    :cond_5
    sget-object p1, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    invoke-static {v2, v2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    move-object v2, p1

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_3

    .line 64
    :cond_6
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 65
    iget-object v0, p0, Lo/createLayoutState;->extraCallback:Lo/clearScrap;

    invoke-interface {v0}, Lo/clearScrap;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_8

    .line 66
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 12014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 13014
    iget-object v4, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 66
    check-cast v4, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, v4}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 67
    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 14014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 67
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    .line 14018
    :cond_7
    iput-object v2, v0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lo/createLayoutState;->onNavigationEvent:Lo/onDisconnectSetValue;

    iget-object v0, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_8
    :goto_3
    iget-object p1, p0, Lo/createLayoutState;->onMessageChannelReady:Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;

    .line 14027
    iput-boolean v1, p1, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asBinder:Z

    return-void
.end method
