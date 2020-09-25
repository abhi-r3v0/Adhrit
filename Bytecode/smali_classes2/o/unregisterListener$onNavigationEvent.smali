.class public final Lo/unregisterListener$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/b$e$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/unregisterListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/control/DomainListAdapter$Companion;",
        "",
        "()V",
        "EXTRA_ITEM",
        "",
        "LIST_ITEM",
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
.field private final ICustomTabsCallback:Lo/OaidClient$Info;

.field private final extraCallback:Ljava/lang/Iterable;

.field private final onMessageChannelReady:Lo/ActivityCompat;

.field private final onNavigationEvent:Lo/ae;

.field private final onPostMessage:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ae;Lo/ActivityCompat;Ljava/lang/Iterable;Lo/OaidClient$Info;I)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/unregisterListener$onNavigationEvent;->onNavigationEvent:Lo/ae;

    iput-object p2, p0, Lo/unregisterListener$onNavigationEvent;->onMessageChannelReady:Lo/ActivityCompat;

    iput-object p3, p0, Lo/unregisterListener$onNavigationEvent;->extraCallback:Ljava/lang/Iterable;

    iput-object p4, p0, Lo/unregisterListener$onNavigationEvent;->ICustomTabsCallback:Lo/OaidClient$Info;

    iput p5, p0, Lo/unregisterListener$onNavigationEvent;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final extraCallback()Ljava/lang/Object;
    .locals 10

    .line 2000
    iget-object v0, p0, Lo/unregisterListener$onNavigationEvent;->onNavigationEvent:Lo/ae;

    iget-object v1, p0, Lo/unregisterListener$onNavigationEvent;->onMessageChannelReady:Lo/ActivityCompat;

    iget-object v2, p0, Lo/unregisterListener$onNavigationEvent;->extraCallback:Ljava/lang/Iterable;

    iget-object v3, p0, Lo/unregisterListener$onNavigationEvent;->ICustomTabsCallback:Lo/OaidClient$Info;

    iget v4, p0, Lo/unregisterListener$onNavigationEvent;->onPostMessage:I

    .line 2130
    invoke-virtual {v1}, Lo/ActivityCompat;->onMessageChannelReady()Lo/ActivityCompat$onPostMessage;

    move-result-object v5

    sget-object v6, Lo/ActivityCompat$onPostMessage;->onNavigationEvent:Lo/ActivityCompat$onPostMessage;

    const/4 v7, 0x1

    if-ne v5, v6, :cond_0

    .line 2131
    iget-object v1, v0, Lo/ae;->onPostMessage:Lo/ah;

    invoke-interface {v1, v2}, Lo/ah;->extraCallback(Ljava/lang/Iterable;)V

    .line 2132
    iget-object v0, v0, Lo/ae;->onNavigationEvent:Lo/ai;

    add-int/2addr v4, v7

    invoke-interface {v0, v3, v4}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V

    goto :goto_0

    .line 2134
    :cond_0
    iget-object v4, v0, Lo/ae;->onPostMessage:Lo/ah;

    invoke-interface {v4, v2}, Lo/ah;->onNavigationEvent(Ljava/lang/Iterable;)V

    .line 2135
    invoke-virtual {v1}, Lo/ActivityCompat;->onMessageChannelReady()Lo/ActivityCompat$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/ActivityCompat$onPostMessage;->ICustomTabsCallback:Lo/ActivityCompat$onPostMessage;

    if-ne v2, v4, :cond_1

    .line 2136
    iget-object v2, v0, Lo/ae;->onPostMessage:Lo/ah;

    iget-object v4, v0, Lo/ae;->asInterface:Lo/b;

    .line 2137
    invoke-interface {v4}, Lo/b;->onPostMessage()J

    move-result-wide v4

    invoke-virtual {v1}, Lo/ActivityCompat;->onPostMessage()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 2136
    invoke-interface {v2, v3, v4, v5}, Lo/ah;->onPostMessage(Lo/OaidClient$Info;J)V

    .line 2139
    :cond_1
    iget-object v1, v0, Lo/ae;->onPostMessage:Lo/ah;

    invoke-interface {v1, v3}, Lo/ah;->ICustomTabsCallback(Lo/OaidClient$Info;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2140
    iget-object v0, v0, Lo/ae;->onNavigationEvent:Lo/ai;

    invoke-interface {v0, v3, v7}, Lo/ai;->onPostMessage(Lo/OaidClient$Info;I)V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
