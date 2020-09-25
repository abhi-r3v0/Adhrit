.class final Lo/dispatchAttachedToWindow$requestPostMessageChannel;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/repositionToWrapContentIfNecessary;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/utils/list/VerticalAdapter;",
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
.field private synthetic extraCallback:Lo/dispatchAttachedToWindow;


# direct methods
.method constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAttachedToWindow$requestPostMessageChannel;->extraCallback:Lo/dispatchAttachedToWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1059
    new-instance v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    invoke-direct {v0}, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;-><init>()V

    .line 1060
    new-instance v1, Lo/removeAndRecycleViewAt;

    iget-object v2, p0, Lo/dispatchAttachedToWindow$requestPostMessageChannel;->extraCallback:Lo/dispatchAttachedToWindow;

    invoke-static {v2}, Lo/dispatchAttachedToWindow;->asInterface(Lo/dispatchAttachedToWindow;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object v2

    iget-object v3, p0, Lo/dispatchAttachedToWindow$requestPostMessageChannel;->extraCallback:Lo/dispatchAttachedToWindow;

    invoke-static {v3}, Lo/dispatchAttachedToWindow;->onRelationshipValidationResult(Lo/dispatchAttachedToWindow;)Lo/dispatchAttachedToWindow$ICustomTabsCallback;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lo/removeAndRecycleViewAt;-><init>(Lo/hasGapsToFix$onMessageChannelReady;Lo/dispatchAttachedToWindow$ICustomTabsCallback;)V

    check-cast v1, Lo/checkForGaps;

    const-string v2, "adapter"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2036
    check-cast v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;

    iget-object v2, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2043
    new-instance v1, Lo/repositionToWrapContentIfNecessary;

    iget-object v0, v0, Lo/repositionToWrapContentIfNecessary$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/repositionToWrapContentIfNecessary;-><init>(Ljava/util/List;B)V

    return-object v1
.end method
