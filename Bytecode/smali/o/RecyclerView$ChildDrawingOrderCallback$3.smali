.class final Lo/RecyclerView$ChildDrawingOrderCallback$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ChildDrawingOrderCallback;-><init>(Lo/isSessionReady;)V
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
.field private synthetic onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;


# direct methods
.method constructor <init>(Lo/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$3;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 25
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1061
    iget-object p1, p0, Lo/RecyclerView$ChildDrawingOrderCallback$3;->onPostMessage:Lo/RecyclerView$ChildDrawingOrderCallback;

    .line 1120
    iget-object v0, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    const/4 v1, 0x1

    const v2, 0x800005

    invoke-virtual {v0, v1, v2}, Lo/isSessionReady;->setDrawerLockMode(II)V

    .line 1121
    iget-object p1, p1, Lo/RecyclerView$ChildDrawingOrderCallback;->asBinder:Lo/isSessionReady;

    invoke-virtual {p1}, Lo/isSessionReady;->onNavigationEvent()V

    .line 25
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
