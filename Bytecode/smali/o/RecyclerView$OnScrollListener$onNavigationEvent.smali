.class final Lo/RecyclerView$OnScrollListener$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$OnScrollListener;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/RecyclerView$OnScrollListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$OnScrollListener$onNavigationEvent;->onNavigationEvent:Lo/RecyclerView$OnScrollListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 18
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    iget-object p1, p0, Lo/RecyclerView$OnScrollListener$onNavigationEvent;->onNavigationEvent:Lo/RecyclerView$OnScrollListener;

    invoke-virtual {p1}, Lo/onAudioInfoChanged;->m_()V

    .line 1050
    iget-object p1, p0, Lo/RecyclerView$OnScrollListener$onNavigationEvent;->onNavigationEvent:Lo/RecyclerView$OnScrollListener;

    invoke-static {p1}, Lo/RecyclerView$OnScrollListener;->onPostMessage(Lo/RecyclerView$OnScrollListener;)Lo/RecyclerView$OnScrollListener$onMessageChannelReady;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1081
    iget-object p1, p1, Lo/RecyclerView$OnScrollListener$onMessageChannelReady;->onTransact:Lo/onDisconnectSetValue;

    if-eqz p1, :cond_0

    .line 1050
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0}, Lo/onDisconnectSetValue;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
