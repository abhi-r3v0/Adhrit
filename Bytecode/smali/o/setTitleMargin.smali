.class public final Lo/setTitleMargin;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J1\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000e2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010\u00a2\u0006\u0002\u0010\u0012R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/gating/EligibilityRepository;",
        "",
        "()V",
        "service",
        "Lcom/dreamplug/androidapp/gating/GatingService;",
        "getService",
        "()Lcom/dreamplug/androidapp/gating/GatingService;",
        "service$delegate",
        "Lkotlin/Lazy;",
        "checkEligibility",
        "",
        "gatingFlow",
        "",
        "freshFlow",
        "",
        "responseLd",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
        "(Ljava/lang/String;Ljava/lang/Boolean;Landroidx/lifecycle/MutableLiveData;)V",
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
.field public static final onNavigationEvent:Lo/setTitleMargin;

.field private static final onPostMessage:Lo/isSameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lo/setTitleMargin;

    invoke-direct {v0}, Lo/setTitleMargin;-><init>()V

    sput-object v0, Lo/setTitleMargin;->onNavigationEvent:Lo/setTitleMargin;

    .line 10
    sget-object v0, Lo/setTitleMargin$onMessageChannelReady;->onPostMessage:Lo/setTitleMargin$onMessageChannelReady;

    check-cast v0, Lo/getServerTime;

    const-string v1, "initializer"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4021
    new-instance v1, Lo/fromChildMerge;

    invoke-direct {v1, v0}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v1, Lo/isSameListener;

    .line 10
    sput-object v1, Lo/setTitleMargin;->onPostMessage:Lo/isSameListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Boolean;Lo/setActive;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lo/setActive<",
            "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "responseLd"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1000
    sget-object v0, Lo/setTitleMargin;->onPostMessage:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setTitleMarginEnd;

    .line 15
    invoke-interface {v0, p1, p2}, Lo/setTitleMarginEnd;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Boolean;)Lo/tryBindViewHolderByDeadline;

    move-result-object p1

    .line 16
    new-instance p2, Lo/setTitleMargin$onPostMessage;

    invoke-direct {p2, p3}, Lo/setTitleMargin$onPostMessage;-><init>(Lo/setActive;)V

    check-cast p2, Lo/RecyclerView$Recycler;

    const-string p3, "CheckEligibility"

    const-string/jumbo v0, "tag"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "callback"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3044
    iget-object p1, p1, Lo/tryBindViewHolderByDeadline;->onMessageChannelReady:Lo/clearScrap;

    new-instance p3, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;

    invoke-direct {p3, p2}, Lo/tryBindViewHolderByDeadline$ICustomTabsCallback;-><init>(Lo/RecyclerView$Recycler;)V

    check-cast p3, Lo/getScrapOrCachedViewForId;

    invoke-interface {p1, p3}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
