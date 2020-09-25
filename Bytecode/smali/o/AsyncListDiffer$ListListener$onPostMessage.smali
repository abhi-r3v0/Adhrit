.class final Lo/AsyncListDiffer$ListListener$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/AsyncListDiffer$ListListener;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V
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
.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/StaggeredGridLayoutManager;

.field private synthetic onNavigationEvent:Lo/AsyncListDiffer$ListListener;


# direct methods
.method constructor <init>(Lo/AsyncListDiffer$ListListener;Lo/toDebugString$onMessageChannelReady;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->onNavigationEvent:Lo/AsyncListDiffer$ListListener;

    iput-object p2, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 19
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1047
    iget-object p1, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iget-boolean p1, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez p1, :cond_0

    .line 1048
    iget-object p1, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->onNavigationEvent:Lo/AsyncListDiffer$ListListener;

    invoke-static {p1}, Lo/AsyncListDiffer$ListListener;->extraCallback(Lo/AsyncListDiffer$ListListener;)Lo/hasGapsToFix$onMessageChannelReady;

    move-result-object p1

    iget-object v0, p0, Lo/AsyncListDiffer$ListListener$onPostMessage;->onMessageChannelReady:Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string/jumbo v2, "select_reason"

    .line 1066
    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 19
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
