.class final Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isItemChanged$getInterfaceDescriptor;
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
        "<no name provided>",
        "",
        "view",
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
.field private synthetic onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;


# direct methods
.method constructor <init>(Lo/isItemChanged$getInterfaceDescriptor;)V
    .locals 0

    iput-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 67
    check-cast p1, Landroid/view/View;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    iget-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    iget-object p1, p1, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    .line 2114
    iget-object v0, p1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    sget-object v1, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;

    invoke-virtual {v0, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 2115
    iput-boolean v0, p1, Lo/RecyclerView$OnFlingListener;->asBinder:Z

    const/4 v0, 0x0

    .line 2116
    iput-object v0, p1, Lo/RecyclerView$OnFlingListener;->asInterface:Ljava/lang/String;

    .line 2117
    invoke-virtual {p1}, Lo/RecyclerView$OnFlingListener;->onPostMessage()V

    .line 1301
    iget-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    iget-object p1, p1, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    invoke-static {p1}, Lo/isItemChanged;->onRelationshipValidationResult(Lo/isItemChanged;)Lo/RecyclerView$OnFlingListener;

    move-result-object p1

    const/4 v0, 0x1

    .line 3057
    iput-boolean v0, p1, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult:Z

    .line 3058
    iget-boolean v0, p1, Lo/RecyclerView$OnFlingListener;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 3059
    iget-object p1, p1, Lo/RecyclerView$OnFlingListener;->newSession:Lo/setActive;

    sget-object v0, Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;->onNavigationEvent:Lo/RecyclerView$OnFlingListener$onNavigationEvent$onPostMessage;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1302
    :cond_0
    iget-object p1, p0, Lo/isItemChanged$getInterfaceDescriptor$onPostMessage;->onMessageChannelReady:Lo/isItemChanged$getInterfaceDescriptor;

    iget-object p1, p1, Lo/isItemChanged$getInterfaceDescriptor;->onMessageChannelReady:Lo/isItemChanged;

    .line 3077
    iget-object p1, p1, Lo/isItemChanged;->extraCallback:Lo/calculateScrollDistance;

    if-eqz p1, :cond_1

    .line 4031
    sget-object v0, Lo/setHeight;->onPostMessage:Lo/setHeight;

    .line 6000
    sget-object v0, Lo/setHeight;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 5028
    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 4031
    new-instance v1, Lo/calculateScrollDistance$onMessageChannelReady;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2}, Lo/calculateScrollDistance$onMessageChannelReady;-><init>(Lo/calculateScrollDistance;I)V

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Lo/setPlaybackToRemote;)V

    :cond_1
    const-string/jumbo p1, "track_bb_fetch_error_refresh_cta"

    .line 1303
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 67
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
