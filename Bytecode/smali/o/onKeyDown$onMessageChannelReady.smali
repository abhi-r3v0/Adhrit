.class public final Lo/onKeyDown$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onKeyDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/onKeyDown;

.field private synthetic onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/onKeyDown;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/onKeyDown$onMessageChannelReady;->extraCallback:Lo/onKeyDown;

    iput-boolean p2, p0, Lo/onKeyDown$onMessageChannelReady;->onPostMessage:Z

    iput-object p3, p0, Lo/onKeyDown$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 70
    iget-boolean v0, p0, Lo/onKeyDown$onMessageChannelReady;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lo/onKeyDown$onMessageChannelReady;->extraCallback:Lo/onKeyDown;

    .line 1024
    iget v1, v0, Lo/onKeyDown;->onNavigationEvent:I

    add-int/lit8 v1, v1, 0x1

    .line 2024
    iput v1, v0, Lo/onKeyDown;->onNavigationEvent:I

    .line 72
    :cond_0
    iget-object v0, p0, Lo/onKeyDown$onMessageChannelReady;->extraCallback:Lo/onKeyDown;

    .line 2025
    iget-object v0, v0, Lo/onKeyDown;->extraCallback:Ljava/util/HashMap;

    .line 72
    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lo/onKeyDown$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/onKeyDown$onMessageChannelReady;->extraCallback:Lo/onKeyDown;

    .line 3025
    iget-object v2, v2, Lo/onKeyDown;->extraCallback:Ljava/util/HashMap;

    .line 72
    iget-object v3, p0, Lo/onKeyDown$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v0, p0, Lo/onKeyDown$onMessageChannelReady;->extraCallback:Lo/onKeyDown;

    .line 4015
    iget-object v0, v0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 73
    invoke-virtual {v0}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v0

    iget-object v1, p0, Lo/onKeyDown$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/createTextView;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method
