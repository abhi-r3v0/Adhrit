.class final Lo/getChildPosition$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getChildPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onPostMessage:Lo/getChildPosition;


# direct methods
.method constructor <init>(Lo/getChildPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildPosition$asInterface;->onPostMessage:Lo/getChildPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 60
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1691
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 1130
    iget-object v1, p0, Lo/getChildPosition$asInterface;->onPostMessage:Lo/getChildPosition;

    invoke-static {v1}, Lo/getChildPosition;->ICustomTabsCallback(Lo/getChildPosition;)Lo/evictionCount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lo/evictionCount;->onMessageChannelReady()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "time_spent"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "slots_machine_cta_click"

    .line 1691
    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const/4 v0, 0x0

    .line 1132
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 1133
    iget-object p1, p0, Lo/getChildPosition$asInterface;->onPostMessage:Lo/getChildPosition;

    invoke-static {p1}, Lo/getChildPosition;->onMessageChannelReady(Lo/getChildPosition;)Lo/findViewHolderForItemId;

    move-result-object p1

    .line 2149
    iget-object v0, p1, Lo/findViewHolderForItemId;->extraCallback:Lo/assertValidTrackedQuery;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3192
    invoke-interface {v0, v1}, Lo/assertValidTrackedQuery;->onNavigationEvent(Ljava/util/concurrent/CancellationException;)V

    .line 2151
    iput-object v1, p1, Lo/findViewHolderForItemId;->extraCallback:Lo/assertValidTrackedQuery;

    .line 2153
    iget-object v0, p1, Lo/findViewHolderForItemId;->newSession:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    invoke-direct {v2, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 2157
    :cond_1
    invoke-virtual {p1}, Lo/findViewHolderForItemId;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4074
    iget v1, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->extraCallback:I

    .line 4076
    iget v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SpinDetail;->onMessageChannelReady:I

    if-lt v1, v0, :cond_2

    .line 2159
    iget-object p1, p1, Lo/findViewHolderForItemId;->onRelationshipValidationResult:Lo/setActive;

    new-instance v0, Lo/findChildViewUnder$onMessageChannelReady;

    invoke-direct {v0}, Lo/findChildViewUnder$onMessageChannelReady;-><init>()V

    invoke-virtual {p1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto :goto_1

    .line 2165
    :cond_2
    iget-object v0, p1, Lo/findViewHolderForItemId;->onRelationshipValidationResult:Lo/setActive;

    sget-object v1, Lo/findChildViewUnder$onPostMessage;->onNavigationEvent:Lo/findChildViewUnder$onPostMessage;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 5000
    iget-object v0, p1, Lo/findViewHolderForItemId;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findViewHolderForPosition;

    .line 2167
    iget-object v1, p1, Lo/findViewHolderForItemId;->onMessageChannelReady:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v2, "gameId"

    invoke-static {v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0, v1}, Lo/findViewHolderForPosition;->ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    new-instance v1, Lo/findViewHolderForItemId$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/findViewHolderForItemId$onMessageChannelReady;-><init>(Lo/findViewHolderForItemId;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    .line 60
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
