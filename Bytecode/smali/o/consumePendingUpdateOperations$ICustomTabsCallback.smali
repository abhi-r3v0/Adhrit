.class final Lo/consumePendingUpdateOperations$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/consumePendingUpdateOperations;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
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
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:I

.field private synthetic onMessageChannelReady:Ljava/util/Map;

.field private synthetic onPostMessage:Lo/consumePendingUpdateOperations;


# direct methods
.method constructor <init>(Lo/consumePendingUpdateOperations;ILjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    iput p2, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->ICustomTabsCallback:I

    iput-object p3, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Map;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1253
    iget-object v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 2024
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->onMessageChannelReady:Ljava/util/Map;

    .line 1253
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1254
    iget-object v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    const/4 v1, 0x0

    .line 2025
    iput-object v1, v0, Lo/consumePendingUpdateOperations;->onPostMessage:Ljava/lang/String;

    .line 1255
    iget v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->ICustomTabsCallback:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 3021
    iget-object v1, v1, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    .line 1255
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 1256
    iget-object v2, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 3027
    iget-object v2, v2, Lo/consumePendingUpdateOperations;->extraCallback:Ljava/util/Map;

    .line 1256
    iget-object v3, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 4021
    iget-object v3, v3, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    .line 1256
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;

    .line 4027
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/Section;->onPostMessage:Ljava/lang/String;

    .line 1256
    iget-object v4, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 5021
    iget-object v4, v4, Lo/consumePendingUpdateOperations;->onNavigationEvent:Ljava/util/List;

    .line 1256
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1258
    :cond_0
    iget-object v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 6021
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 1258
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1259
    iget-object v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 7021
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback:Ljava/util/Map;

    .line 1259
    iget-object v1, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onMessageChannelReady:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1260
    iget-object v0, p0, Lo/consumePendingUpdateOperations$ICustomTabsCallback;->onPostMessage:Lo/consumePendingUpdateOperations;

    .line 8021
    iget-object v0, v0, Lo/consumePendingUpdateOperations;->ICustomTabsCallback$Stub:Lo/pullGlows;

    .line 8078
    iget-object v0, v0, Lo/pullGlows;->updateVisuals:Lo/setActive;

    const-string v1, "post_slider_form "

    .line 1260
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 21
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
