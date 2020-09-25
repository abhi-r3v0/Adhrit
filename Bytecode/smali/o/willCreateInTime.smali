.class public final Lo/willCreateInTime;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0016J\"\u0010\u0008\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0008\u0012\u00060\u0006j\u0002`\u0007\u0012\u0008\u0012\u00060\u000bj\u0002`\u000c0\n0\tH\u0016J\u0018\u0010\r\u001a\u00060\u000bj\u0002`\u000c2\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0016J\u0008\u0010\u000e\u001a\u00020\u0004H\u0016J\u0014\u0010\u000f\u001a\u00020\u00042\n\u0010\u0005\u001a\u00060\u0006j\u0002`\u0007H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/hawk/Hawk;",
        "Lcom/dreamplug/hawk/HawkApi;",
        "()V",
        "addTarget",
        "",
        "targetKey",
        "",
        "Lcom/dreamplug/hawk/TargetKey;",
        "getAllTargets",
        "",
        "Lkotlin/Pair;",
        "",
        "Lcom/dreamplug/hawk/TimeInMillis;",
        "getTime",
        "kill",
        "removeTarget",
        "Hawk"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final onMessageChannelReady:Lo/willCreateInTime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lo/willCreateInTime;

    invoke-direct {v0}, Lo/willCreateInTime;-><init>()V

    sput-object v0, Lo/willCreateInTime;->onMessageChannelReady:Lo/willCreateInTime;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/addWrite<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 20
    sget-object v0, Lo/willBindInTime;->onMessageChannelReady:Lo/willBindInTime;

    invoke-static {}, Lo/willBindInTime;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static extraCallback(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "targetKey"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    sget-object v1, Lo/willBindInTime;->onMessageChannelReady:Lo/willBindInTime;

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    invoke-static {p0}, Lo/willBindInTime;->extraCallback(Ljava/lang/String;)Lo/onPrepareSubMenu$extraCallback;

    move-result-object p0

    .line 1010
    iget v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    .line 1011
    iget v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    if-ne v0, v1, :cond_0

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    :cond_0
    return-void
.end method

.method public static onMessageChannelReady()V
    .locals 1

    .line 25
    sget-object v0, Lo/willBindInTime;->onMessageChannelReady:Lo/willBindInTime;

    invoke-static {}, Lo/willBindInTime;->onPostMessage()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v0, "targetKey"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v1, Lo/willBindInTime;->onMessageChannelReady:Lo/willBindInTime;

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2012
    invoke-static {p0}, Lo/willBindInTime;->extraCallback(Ljava/lang/String;)Lo/onPrepareSubMenu$extraCallback;

    move-result-object p0

    .line 2017
    iget v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    if-lez v0, :cond_0

    .line 2018
    iget v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    .line 2019
    iget v0, p0, Lo/onPrepareSubMenu$extraCallback;->ICustomTabsCallback:I

    if-nez v0, :cond_0

    .line 2043
    iget-wide v0, p0, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/onPrepareSubMenu$extraCallback;->onMessageChannelReady:J

    const-wide/16 v0, 0x0

    .line 2044
    iput-wide v0, p0, Lo/onPrepareSubMenu$extraCallback;->onPostMessage:J

    :cond_0
    return-void
.end method
