.class final Lo/setTargetFragment$onNavigationEvent$1;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTargetFragment$onNavigationEvent;->run()V
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
.field private synthetic ICustomTabsCallback:Lo/setInitialSavedState;

.field private synthetic extraCallback:Lo/setTargetFragment$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/setTargetFragment$onNavigationEvent;Lo/setInitialSavedState;)V
    .locals 0

    iput-object p1, p0, Lo/setTargetFragment$onNavigationEvent$1;->extraCallback:Lo/setTargetFragment$onNavigationEvent;

    iput-object p2, p0, Lo/setTargetFragment$onNavigationEvent$1;->ICustomTabsCallback:Lo/setInitialSavedState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1058
    iget-object v0, p0, Lo/setTargetFragment$onNavigationEvent$1;->ICustomTabsCallback:Lo/setInitialSavedState;

    if-eqz v0, :cond_0

    .line 1059
    sget-object v0, Lo/setTargetFragment;->onPostMessage:Lo/setTargetFragment;

    invoke-static {}, Lo/setTargetFragment;->onMessageChannelReady()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lo/setTargetFragment$onNavigationEvent$1;->ICustomTabsCallback:Lo/setInitialSavedState;

    .line 2006
    iget-object v1, v1, Lo/setInitialSavedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 1059
    iget-object v2, p0, Lo/setTargetFragment$onNavigationEvent$1;->ICustomTabsCallback:Lo/setInitialSavedState;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    :cond_0
    iget-object v0, p0, Lo/setTargetFragment$onNavigationEvent$1;->extraCallback:Lo/setTargetFragment$onNavigationEvent;

    iget-object v0, v0, Lo/setTargetFragment$onNavigationEvent;->onNavigationEvent:Lo/onDisconnectSetValue;

    iget-object v1, p0, Lo/setTargetFragment$onNavigationEvent$1;->ICustomTabsCallback:Lo/setInitialSavedState;

    invoke-interface {v0, v1}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
