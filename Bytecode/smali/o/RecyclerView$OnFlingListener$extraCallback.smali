.class final Lo/RecyclerView$OnFlingListener$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$OnFlingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Boolean;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field private synthetic extraCallback:Lo/RecyclerView$OnFlingListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$OnFlingListener;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$OnFlingListener$extraCallback;->extraCallback:Lo/RecyclerView$OnFlingListener;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1189
    iget-object p1, p0, Lo/RecyclerView$OnFlingListener$extraCallback;->extraCallback:Lo/RecyclerView$OnFlingListener;

    invoke-static {p1}, Lo/RecyclerView$OnFlingListener;->onPostMessage(Lo/RecyclerView$OnFlingListener;)Lo/setActive;

    move-result-object p1

    new-instance v0, Lo/throwIfInMutationOperation;

    iget-object v1, p0, Lo/RecyclerView$OnFlingListener$extraCallback;->extraCallback:Lo/RecyclerView$OnFlingListener;

    .line 2051
    iget-object v1, v1, Lo/RecyclerView$OnFlingListener;->onTransact:Lcom/cred/pay/repository/models/VpaAccount;

    if-nez v1, :cond_0

    .line 1189
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 40
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
