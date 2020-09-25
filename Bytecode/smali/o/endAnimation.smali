.class public final Lo/endAnimation;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006R)\u0010\t\u001a\u0010\u0012\u000c\u0012\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000b0\n8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0008\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/digest/DigestRepository;",
        "",
        "()V",
        "nbaService",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "getNbaService",
        "()Lcom/dreamplug/fabrik/ui/nba/helper/NBAService;",
        "nbaService$delegate",
        "Lkotlin/Lazy;",
        "stories",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;",
        "getStories",
        "()Landroidx/lifecycle/MutableLiveData;",
        "stories$delegate",
        "clear",
        "",
        "getStoriesAvailable",
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
.field public static final extraCallback:Lo/isSameListener;

.field public static final onMessageChannelReady:Lo/endAnimation;

.field static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lo/endAnimation;

    invoke-direct {v0}, Lo/endAnimation;-><init>()V

    sput-object v0, Lo/endAnimation;->onMessageChannelReady:Lo/endAnimation;

    .line 15
    sget-object v0, Lo/endAnimation$onMessageChannelReady;->extraCallback:Lo/endAnimation$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v2, Lo/fromChildMerge;

    invoke-direct {v2, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v2, Lo/isSameListener;

    .line 15
    sput-object v2, Lo/endAnimation;->onPostMessage:Lo/isSameListener;

    .line 18
    sget-object v0, Lo/endAnimation$extraCallback;->ICustomTabsCallback:Lo/endAnimation$extraCallback;

    check-cast v0, Lo/getServerTime;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 18
    sput-object v1, Lo/endAnimation;->extraCallback:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
