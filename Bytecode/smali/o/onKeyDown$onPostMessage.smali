.class public final Lo/onKeyDown$onPostMessage;
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
.field private synthetic extraCallback:Ljava/util/Map;

.field private synthetic onNavigationEvent:Lo/onKeyDown;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/onKeyDown;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/onKeyDown$onPostMessage;->onNavigationEvent:Lo/onKeyDown;

    iput-object p2, p0, Lo/onKeyDown$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-object p3, p0, Lo/onKeyDown$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 35
    iget-object v0, p0, Lo/onKeyDown$onPostMessage;->onNavigationEvent:Lo/onKeyDown;

    .line 1027
    iget-object v0, v0, Lo/onKeyDown;->onRelationshipValidationResult:Ljava/util/HashSet;

    .line 35
    iget-object v1, p0, Lo/onKeyDown$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lo/onKeyDown$onPostMessage;->onNavigationEvent:Lo/onKeyDown;

    .line 2015
    iget-object v0, v0, Lo/onKeyDown;->asBinder:Lo/rerunTransactionQueue;

    .line 36
    iget-object v1, p0, Lo/onKeyDown$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v2, p0, Lo/onKeyDown$onPostMessage;->extraCallback:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lo/onKeyDown$onPostMessage;->onNavigationEvent:Lo/onKeyDown;

    .line 3015
    iget-object v0, v0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 38
    invoke-virtual {v0}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v0

    iget-object v1, p0, Lo/onKeyDown$onPostMessage;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/createTextView;->ICustomTabsCallback(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lo/onKeyDown$onPostMessage;->onNavigationEvent:Lo/onKeyDown;

    .line 4015
    iget-object v1, v1, Lo/onKeyDown;->asBinder:Lo/rerunTransactionQueue;

    .line 39
    iget-object v2, p0, Lo/onKeyDown$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v3, p0, Lo/onKeyDown$onPostMessage;->extraCallback:Ljava/util/Map;

    invoke-interface {v1, v2, v3, v0}, Lo/rerunTransactionQueue;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
