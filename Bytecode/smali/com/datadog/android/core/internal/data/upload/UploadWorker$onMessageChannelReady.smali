.class public final Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/datadog/android/core/internal/data/upload/UploadWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B)\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tJ\u0006\u0010/\u001a\u000200J\u001a\u00101\u001a\u0002002\u0012\u00102\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020003R\u001e\u0010\n\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\u0016X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0017\u001a\u0010\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u0019\u0018\u00010\u0018X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R#\u0010\u001a\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u001d\u0012\u0004\u0012\u00020\u001e0\u001c0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010!\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008\"\u0010#R\u001a\u0010$\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010#\"\u0004\u0008%\u0010&R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010#R\u001b\u0010\'\u001a\u00020(8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008+\u0010,\u001a\u0004\u0008)\u0010*R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010-\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010 \u00a8\u00064"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestylePageManager;",
        "",
        "farmId",
        "",
        "page",
        "",
        "perPage",
        "isFromWishlist",
        "",
        "(Ljava/lang/String;IIZ)V",
        "count",
        "getCount",
        "()Ljava/lang/Integer;",
        "setCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "errorCode",
        "getErrorCode",
        "()Ljava/lang/String;",
        "setErrorCode",
        "(Ljava/lang/String;)V",
        "farmCardResponse",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
        "farmCardsCallRequest",
        "Lcom/dreamplug/network/internals/call/CallRequest;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "filteredCards",
        "",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/ExtraPageDetails;",
        "getFilteredCards",
        "()Ljava/util/List;",
        "hasMore",
        "getHasMore",
        "()Z",
        "isFetching",
        "setFetching",
        "(Z)V",
        "lifeStyleService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "getLifeStyleService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "lifeStyleService$delegate",
        "Lkotlin/Lazy;",
        "resultCards",
        "getResultCards",
        "clean",
        "",
        "fetchCardForPage",
        "doneCallback",
        "Lkotlin/Function1;",
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
.field public ICustomTabsCallback:Ljava/lang/String;

.field public final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

.field public asBinder:Z

.field private final asInterface:Lo/isSameListener;

.field public extraCallback:Ljava/lang/Integer;

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/addWrite<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            "Lo/getStackFromEnd;",
            ">;>;"
        }
    .end annotation
.end field

.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;",
            ">;"
        }
    .end annotation
.end field

.field public onPostMessage:Lo/clearScrap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/clearScrap<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;"
        }
    .end annotation
.end field

.field public onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/models/FarmCardResponse;

.field public final onTransact:I

.field private final warmup:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 5015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    iput p2, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onTransact:I

    const/4 p1, 0x5

    iput p1, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback$Stub:I

    iput-boolean p3, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->warmup:Z

    .line 5019
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    .line 5082
    sget-object p1, Lo/scrollToPosition;->extraCallback:Lo/scrollToPosition;

    check-cast p1, Lo/getServerTime;

    const-string p2, "initializer"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6021
    new-instance p2, Lo/fromChildMerge;

    invoke-direct {p2, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast p2, Lo/isSameListener;

    .line 5082
    iput-object p2, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asInterface:Lo/isSameListener;

    .line 5021
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    .line 5022
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/onDisconnectSetValue;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDisconnectSetValue<",
            "-",
            "Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "doneCallback"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1030
    iget-object v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asBinder:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 1031
    iput-boolean v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asBinder:Z

    .line 1033
    iget-boolean v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->warmup:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 1035
    iget v2, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onTransact:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1036
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2129
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 3000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x17

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "all products"

    .line 2129
    invoke-static {v3, v4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService$Stub$Proxy:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2129
    :goto_0
    invoke-interface {v0, v2, v1, v3}, Lo/computeHorizontalScrollExtent;->onPostMessage(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    goto :goto_1

    .line 5000
    :cond_1
    iget-object v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->asInterface:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/computeHorizontalScrollExtent;

    .line 1039
    iget-object v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "primary"

    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    .line 1040
    iget v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onTransact:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1041
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    .line 1038
    invoke-static/range {v2 .. v7}, Lo/computeHorizontalScrollExtent$onNavigationEvent;->onNavigationEvent(Lo/computeHorizontalScrollExtent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;I)Lo/clearScrap;

    move-result-object v0

    .line 1044
    :goto_1
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/16 v8, 0xf

    invoke-static/range {v2 .. v8}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 1045
    new-instance v1, Lo/createLayoutState;

    invoke-direct {v1, v0, p0, p1}, Lo/createLayoutState;-><init>(Lo/clearScrap;Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;Lo/onDisconnectSetValue;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 1043
    iput-object v0, p0, Lcom/datadog/android/core/internal/data/upload/UploadWorker$onMessageChannelReady;->onPostMessage:Lo/clearScrap;

    :cond_3
    return-void
.end method
