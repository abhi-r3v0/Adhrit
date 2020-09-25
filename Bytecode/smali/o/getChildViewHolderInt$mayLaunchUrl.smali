.class final Lo/getChildViewHolderInt$mayLaunchUrl;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolderInt;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/findContainingItemView;",
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
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel;",
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
.field private synthetic extraCallback:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0

    iput-object p1, p0, Lo/getChildViewHolderInt$mayLaunchUrl;->extraCallback:Lo/getChildViewHolderInt;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1063
    iget-object v0, p0, Lo/getChildViewHolderInt$mayLaunchUrl;->extraCallback:Lo/getChildViewHolderInt;

    .line 1463
    new-instance v1, Lo/setMetadata;

    invoke-direct {v1, v0}, Lo/setMetadata;-><init>(Lo/removeOnActiveChangeListener;)V

    const-class v0, Lo/findContainingItemView;

    invoke-virtual {v1, v0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object v0

    const-string v1, "ViewModelProvider(this).get(T::class.java)"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1063
    check-cast v0, Lo/findContainingItemView;

    .line 1064
    iget-object v1, p0, Lo/getChildViewHolderInt$mayLaunchUrl;->extraCallback:Lo/getChildViewHolderInt;

    invoke-static {v1}, Lo/getChildViewHolderInt;->ICustomTabsCallback$Stub(Lo/getChildViewHolderInt;)Lo/getChildViewHolderInt$onMessageChannelReady;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "data"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2456
    iget-object v2, v1, Lo/getChildViewHolderInt$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 2094
    iput-object v2, v0, Lo/findContainingItemView;->requestPostMessageChannel:Ljava/lang/String;

    .line 3456
    iget-object v2, v1, Lo/getChildViewHolderInt$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/String;

    .line 2095
    iput-object v2, v0, Lo/findContainingItemView;->postMessage:Ljava/lang/String;

    .line 4456
    iget-boolean v1, v1, Lo/getChildViewHolderInt$onMessageChannelReady;->onNavigationEvent:Z

    .line 2096
    iput-boolean v1, v0, Lo/findContainingItemView;->mayLaunchUrl:Z

    .line 2097
    invoke-virtual {v0}, Lo/findContainingItemView;->onPostMessage()V

    return-object v0
.end method
