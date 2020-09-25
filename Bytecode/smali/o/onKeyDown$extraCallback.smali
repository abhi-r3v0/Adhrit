.class final Lo/onKeyDown$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onKeyDown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic extraCallback:Lo/onKeyDown;

.field private synthetic onNavigationEvent:Lo/getServerTime;


# direct methods
.method constructor <init>(Lo/onKeyDown;Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/onKeyDown$extraCallback;->extraCallback:Lo/onKeyDown;

    iput-object p2, p0, Lo/onKeyDown$extraCallback;->onNavigationEvent:Lo/getServerTime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 46
    iget-object v0, p0, Lo/onKeyDown$extraCallback;->extraCallback:Lo/onKeyDown;

    .line 1027
    iget-object v0, v0, Lo/onKeyDown;->onRelationshipValidationResult:Ljava/util/HashSet;

    .line 46
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 47
    iget-object v0, p0, Lo/onKeyDown$extraCallback;->extraCallback:Lo/onKeyDown;

    .line 2015
    iget-object v0, v0, Lo/onKeyDown;->onMessageChannelReady:Lclub/cred/interjection/data/db/CampaignDatabase;

    .line 47
    invoke-virtual {v0}, Lclub/cred/interjection/data/db/CampaignDatabase;->onTransact()Lo/createTextView;

    move-result-object v0

    invoke-interface {v0}, Lo/createTextView;->onNavigationEvent()Ljava/util/List;

    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Iterable;

    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclub/cred/interjection/data/models/Campaign;

    .line 2081
    iget-object v1, v1, Lclub/cred/interjection/data/models/Campaign;->asBinder:Lclub/cred/interjection/data/models/DataCampaign;

    if-eqz v1, :cond_0

    .line 2095
    iget-object v1, v1, Lclub/cred/interjection/data/models/DataCampaign;->onMessageChannelReady:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 50
    invoke-static {v1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lclub/cred/interjection/data/models/Sequence;

    if-eqz v1, :cond_0

    .line 2129
    iget-object v1, v1, Lclub/cred/interjection/data/models/Sequence;->onMessageChannelReady:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 50
    check-cast v1, Ljava/lang/Iterable;

    .line 131
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lclub/cred/interjection/data/models/Rule;

    .line 51
    iget-object v3, p0, Lo/onKeyDown$extraCallback;->extraCallback:Lo/onKeyDown;

    .line 3027
    iget-object v3, v3, Lo/onKeyDown;->onRelationshipValidationResult:Ljava/util/HashSet;

    .line 3139
    iget-object v2, v2, Lclub/cred/interjection/data/models/Rule;->onNavigationEvent:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    .line 51
    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lo/onKeyDown$extraCallback;->onNavigationEvent:Lo/getServerTime;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_3
    return-void
.end method
