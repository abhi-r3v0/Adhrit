.class final Lo/isForwardFling$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isForwardFling;->onPostMessage(Landroid/widget/TextView;Landroid/widget/TextView;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/holders/BaseLifestyleHolder$updateTimer$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/isForwardFling;

.field private synthetic onPostMessage:Lo/StaggeredGridLayoutManager;


# direct methods
.method constructor <init>(Lo/isForwardFling;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/isForwardFling$asBinder;->extraCallback:Lo/isForwardFling;

    iput-object p2, p0, Lo/isForwardFling$asBinder;->onPostMessage:Lo/StaggeredGridLayoutManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1277
    iget-object v0, p0, Lo/isForwardFling$asBinder;->extraCallback:Lo/isForwardFling;

    iget-object v1, p0, Lo/isForwardFling$asBinder;->onPostMessage:Lo/StaggeredGridLayoutManager;

    invoke-virtual {v0, v1}, Lo/createOrientationHelpers;->ICustomTabsCallback(Lo/StaggeredGridLayoutManager;)V

    .line 42
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
