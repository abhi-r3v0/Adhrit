.class public final Lo/setTextOff;
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
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0008J\u000e\u0010\u0014\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0004H\u0002J\u0008\u0010\u0016\u001a\u00020\u0011H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R#\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u00070\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR*\u0010\u000b\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u000cj\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0008`\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\u000e\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00080\u00070\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/data/lro/LroManager;",
        "",
        "()V",
        "PAYMENT_DATA",
        "",
        "lroData",
        "Landroidx/lifecycle/LiveData;",
        "",
        "Lcom/dreamplug/androidapp/data/lro/LongRunningTask;",
        "getLroData",
        "()Landroidx/lifecycle/LiveData;",
        "lroMap",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "privateLroData",
        "Landroidx/lifecycle/MutableLiveData;",
        "addTask",
        "",
        "tag",
        "task",
        "cancel",
        "remove",
        "updateLiveData",
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
.field private static final onMessageChannelReady:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/getSplitTrack;",
            ">;"
        }
    .end annotation
.end field

.field public static final onNavigationEvent:Lo/setTextOff;

.field private static final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/getSplitTrack;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lo/setTextOff;

    invoke-direct {v0}, Lo/setTextOff;-><init>()V

    sput-object v0, Lo/setTextOff;->onNavigationEvent:Lo/setTextOff;

    .line 13
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    sput-object v0, Lo/setTextOff;->onPostMessage:Lo/setActive;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Lo/getSplitTrack;)V
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v0, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getSplitTrack;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/getSplitTrack;->onMessageChannelReady()V

    .line 19
    :cond_0
    sget-object v0, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lo/setTextOff$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/setTextOff$onMessageChannelReady;-><init>(Ljava/lang/String;)V

    check-cast v0, Lo/getServerTime;

    .line 1005
    iput-object v0, p1, Lo/getSplitTrack;->onNavigationEvent:Lo/getServerTime;

    .line 23
    invoke-virtual {p1}, Lo/getSplitTrack;->extraCallback()V

    .line 1038
    sget-object p0, Lo/setTextOff;->onPostMessage:Lo/setActive;

    sget-object p1, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic onNavigationEvent(Lo/setTextOff;Ljava/lang/String;)V
    .locals 0

    .line 2033
    sget-object p0, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2038
    sget-object p0, Lo/setTextOff;->onPostMessage:Lo/setActive;

    sget-object p1, Lo/setTextOff;->onMessageChannelReady:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
