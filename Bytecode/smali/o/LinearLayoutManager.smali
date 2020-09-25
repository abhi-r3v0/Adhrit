.class public final Lo/LinearLayoutManager;
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
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u001d\u001a\u00020\u001eR\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nRL\u0010\r\u001a4\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000ej\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0012`\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016RR\u0010\u0017\u001a:\u00126\u00124\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00100\u000f0\u000ej\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0014\u0012\u0012\u0012\u0004\u0012\u00020\u00100\u000fj\u0008\u0012\u0004\u0012\u00020\u0010`\u0012`\u00110\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/ClaimedRewardSection;",
        "",
        "()V",
        "ARCHIVED_EXPIRED",
        "",
        "MYSTERY",
        "REWARD_USAGE",
        "lifeStyleService",
        "Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "getLifeStyleService",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/LifestyleService;",
        "lifeStyleService$delegate",
        "Lkotlin/Lazy;",
        "mapClaimedSection",
        "Ljava/util/HashMap;",
        "Ljava/util/ArrayList;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
        "Lkotlin/collections/HashMap;",
        "Lkotlin/collections/ArrayList;",
        "getMapClaimedSection",
        "()Ljava/util/HashMap;",
        "setMapClaimedSection",
        "(Ljava/util/HashMap;)V",
        "mapClaimedSectionData",
        "Landroidx/lifecycle/MutableLiveData;",
        "getMapClaimedSectionData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setMapClaimedSectionData",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "fetchLifeStyleClaimedSection",
        "",
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
.field private static final ICustomTabsCallback:Lo/isSameListener;

.field private static onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
            ">;>;"
        }
    .end annotation
.end field

.field private static onNavigationEvent:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final onPostMessage:Lo/LinearLayoutManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lo/LinearLayoutManager;

    invoke-direct {v0}, Lo/LinearLayoutManager;-><init>()V

    sput-object v0, Lo/LinearLayoutManager;->onPostMessage:Lo/LinearLayoutManager;

    .line 18
    new-instance v0, Lo/LinearLayoutManager$ICustomTabsCallback;

    invoke-direct {v0}, Lo/LinearLayoutManager$ICustomTabsCallback;-><init>()V

    check-cast v0, Lo/setActive;

    sput-object v0, Lo/LinearLayoutManager;->onNavigationEvent:Lo/setActive;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/LinearLayoutManager;->onMessageChannelReady:Ljava/util/HashMap;

    .line 29
    sget-object v0, Lo/LinearLayoutManager$onPostMessage;->onPostMessage:Lo/LinearLayoutManager$onPostMessage;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 29
    sput-object v1, Lo/LinearLayoutManager;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/setActive;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setActive<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
            ">;>;>;"
        }
    .end annotation

    .line 18
    sget-object v0, Lo/LinearLayoutManager;->onNavigationEvent:Lo/setActive;

    return-object v0
.end method

.method public static onMessageChannelReady()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleSection;",
            ">;>;"
        }
    .end annotation

    .line 27
    sget-object v0, Lo/LinearLayoutManager;->onMessageChannelReady:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 5

    .line 1000
    sget-object v0, Lo/LinearLayoutManager;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeHorizontalScrollExtent;

    .line 34
    invoke-interface {v0}, Lo/computeHorizontalScrollExtent;->ICustomTabsCallback()Lo/clearScrap;

    move-result-object v0

    .line 35
    sget-object v1, Lo/validateViewHolderForOffsetPosition;->onNavigationEvent:Lo/validateViewHolderForOffsetPosition$onPostMessage;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lo/validateViewHolderForOffsetPosition$onPostMessage;->extraCallback(IJI)Lo/validateViewHolderForOffsetPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/clearScrap;->onMessageChannelReady(Lo/validateViewHolderForOffsetPosition;)V

    .line 36
    new-instance v1, Lo/LinearLayoutManager$onNavigationEvent;

    invoke-direct {v1}, Lo/LinearLayoutManager$onNavigationEvent;-><init>()V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
