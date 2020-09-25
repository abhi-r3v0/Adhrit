.class final Lo/RecyclerView$OnFlingListener$onRelationshipValidationResult;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$OnFlingListener;->onNavigationEvent(Lo/MediaSessionCompat$1$onMessageChannelReady;)V
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/track/TrackViewModel$setMpinResponse$uiState$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/RecyclerView$OnFlingListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$OnFlingListener$onRelationshipValidationResult;->onMessageChannelReady:Lo/RecyclerView$OnFlingListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1396
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$onRelationshipValidationResult;->onMessageChannelReady:Lo/RecyclerView$OnFlingListener;

    .line 1437
    iget-object v0, v0, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    if-eqz v0, :cond_1

    .line 1397
    iget-object v0, p0, Lo/RecyclerView$OnFlingListener$onRelationshipValidationResult;->onMessageChannelReady:Lo/RecyclerView$OnFlingListener;

    invoke-static {v0}, Lo/RecyclerView$OnFlingListener;->ICustomTabsCallback(Lo/RecyclerView$OnFlingListener;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/addWrite;

    iget-object v3, p0, Lo/RecyclerView$OnFlingListener$onRelationshipValidationResult;->onMessageChannelReady:Lo/RecyclerView$OnFlingListener;

    .line 2437
    iget-object v3, v3, Lo/RecyclerView$OnFlingListener;->ICustomTabsService$Stub:Lo/snapFromFling$extraCallback;

    if-nez v3, :cond_0

    .line 1397
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string/jumbo v4, "retry"

    invoke-direct {v2, v4, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 40
    :cond_1
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
