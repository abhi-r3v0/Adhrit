.class final Lo/inflate$ICustomTabsService;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/inflate;->extraCallback(Lcom/dreamplug/utils/model/BaseResponse;I)V
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
.field private synthetic onNavigationEvent:Lo/inflate;


# direct methods
.method constructor <init>(Lo/inflate;)V
    .locals 0

    iput-object p1, p0, Lo/inflate$ICustomTabsService;->onNavigationEvent:Lo/inflate;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1725
    iget-object v0, p0, Lo/inflate$ICustomTabsService;->onNavigationEvent:Lo/inflate;

    invoke-static {v0}, Lo/inflate;->asInterface(Lo/inflate;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/inflate$extraCallback$ICustomTabsCallback;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lo/inflate$extraCallback$ICustomTabsCallback;-><init>(I)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 44
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
