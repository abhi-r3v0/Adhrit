.class public final Lo/setAutoMeasureEnabled;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u000eJ\u0010\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u000eH\u0002J\u000e\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0015\u001a\u00020\u0016R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/nba/NBAAckManager;",
        "",
        "()V",
        "nbaService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getNbaService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "nbaService$delegate",
        "Lkotlin/Lazy;",
        "nbaViewModel",
        "Lcom/dreamplug/fabrik/ui/nba/NBAViewModel;",
        "makeAckCall",
        "",
        "externalId",
        "",
        "position",
        "",
        "context",
        "tagPermissionEvents",
        "type",
        "updateNBACompletion",
        "data",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAAckData;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/setAutoMeasureEnabled;

.field private static final extraCallback:Lo/isSameListener;

.field private static final onMessageChannelReady:Lo/dispatchDetachedFromWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    new-instance v0, Lo/setAutoMeasureEnabled;

    invoke-direct {v0}, Lo/setAutoMeasureEnabled;-><init>()V

    sput-object v0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    .line 19
    sget-object v0, Lo/setAutoMeasureEnabled$onPostMessage;->onNavigationEvent:Lo/setAutoMeasureEnabled$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 19
    sput-object v1, Lo/setAutoMeasureEnabled;->extraCallback:Lo/isSameListener;

    .line 21
    sget-object v0, Lo/dispatchDetachedFromWindow;->onNavigationEvent:Lo/dispatchDetachedFromWindow;

    sput-object v0, Lo/setAutoMeasureEnabled;->onMessageChannelReady:Lo/dispatchDetachedFromWindow;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Lo/moveView;)V
    .locals 8

    const-string v0, "data"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1005
    iget-object v1, p0, Lo/moveView;->extraCallback:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2005
    iget-object v1, p0, Lo/moveView;->onNavigationEvent:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ack_manager"

    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lo/dispatchDetachedFromWindow;->ICustomTabsCallback()Lo/setActive;

    move-result-object v0

    .line 2320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_6

    const-string v1, "it"

    .line 26
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 27
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/detachAndScrapViewAt;

    .line 3007
    iget-object v4, v4, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 3020
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onPostMessage:Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;

    .line 3138
    iget-object v5, v4, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->onPostMessage:Ljava/lang/String;

    .line 4005
    iget-object v6, p0, Lo/moveView;->extraCallback:Ljava/lang/String;

    .line 28
    invoke-static {v5, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4137
    iget-object v4, v4, Lcom/dreamplug/fabrik/ui/nba/helper/CompletionAction;->ICustomTabsCallback:Ljava/lang/String;

    .line 5005
    iget-object v5, p0, Lo/moveView;->onNavigationEvent:Ljava/lang/String;

    .line 28
    invoke-static {v4, v5}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6005
    iget-object p0, p0, Lo/moveView;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v4, v1, [Lo/addWrite;

    .line 6039
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7043
    new-instance v6, Lo/addWrite;

    const-string v7, "permission"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v4, v2

    .line 8043
    new-instance v2, Lo/addWrite;

    const-string v5, "permission_source"

    const-string v6, "nba"

    invoke-direct {v2, v5, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string v2, "pairs"

    .line 6038
    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 6042
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const v4, -0x64c3438b

    if-eq v1, v4, :cond_3

    const v4, -0x205af767

    const-string v5, "location_permission"

    if-eq v1, v4, :cond_2

    const v4, 0x1263234e

    if-eq v1, v4, :cond_1

    goto :goto_2

    :cond_1
    const-string v1, "contact_permission"

    .line 6045
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v5, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    .line 6044
    :cond_2
    invoke-virtual {p0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "phone_permission"

    invoke-static {p0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    goto :goto_2

    :cond_3
    const-string/jumbo v1, "sms_permission"

    .line 6043
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {v1, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 30
    :cond_4
    :goto_2
    sget-object p0, Lo/setAutoMeasureEnabled;->ICustomTabsCallback:Lo/setAutoMeasureEnabled;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/detachAndScrapViewAt;

    .line 9007
    iget-object v0, v0, Lo/detachAndScrapViewAt;->extraCallback:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 9021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->ICustomTabsCallback:Ljava/lang/String;

    const-string v1, "home_screen"

    .line 30
    invoke-direct {p0, v0, v3, v1}, Lo/setAutoMeasureEnabled;->onNavigationEvent(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method public static synthetic extraCallback(Lo/setAutoMeasureEnabled;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 49
    invoke-direct {p0, p1, v0, p2}, Lo/setAutoMeasureEnabled;->onNavigationEvent(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent()Lo/dispatchDetachedFromWindow;
    .locals 1

    .line 17
    sget-object v0, Lo/setAutoMeasureEnabled;->onMessageChannelReady:Lo/dispatchDetachedFromWindow;

    return-object v0
.end method

.method private onNavigationEvent(Ljava/lang/String;ILjava/lang/String;)V
    .locals 7

    const-string v0, "externalId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10000
    sget-object v0, Lo/setAutoMeasureEnabled;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/removeAndRecycleView;

    .line 50
    invoke-interface {v0, p1, p3}, Lo/removeAndRecycleView;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)Lo/clearScrap;

    move-result-object p1

    .line 51
    sget-object p3, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xf

    invoke-static/range {v0 .. v6}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->onNavigationEvent(IJIJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object p3

    invoke-interface {p1, p3}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 52
    new-instance p3, Lo/setAutoMeasureEnabled$onMessageChannelReady;

    invoke-direct {p3, p2}, Lo/setAutoMeasureEnabled$onMessageChannelReady;-><init>(I)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
