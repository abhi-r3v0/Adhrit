.class final Lo/dispatchAnimationsFinished$5$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/dispatchAnimationsFinished$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getViewPosition;",
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
        "Lcom/dreamplug/fabrik/ui/tabholder/TabHolderFragment;",
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
.field private synthetic onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded;


# direct methods
.method constructor <init>(Lo/onGetChildDrawingOrder$onItemLoaded;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAnimationsFinished$5$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 4

    .line 1018
    sget-object v0, Lo/getViewPosition;->extraCallback:Lo/getViewPosition$onPostMessage;

    iget-object v0, p0, Lo/dispatchAnimationsFinished$5$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded;

    invoke-virtual {v0}, Lo/onGetChildDrawingOrder;->extraCallback()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tag"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1674
    new-instance v1, Lo/getViewPosition;

    invoke-direct {v1}, Lo/getViewPosition;-><init>()V

    .line 1675
    move-object v2, v1

    check-cast v2, Landroidx/fragment/app/Fragment;

    new-instance v3, Lo/onDetach$RemoteActionCompatParcelizer;

    invoke-direct {v3, v0}, Lo/onDetach$RemoteActionCompatParcelizer;-><init>(Ljava/lang/String;)V

    check-cast v3, Landroid/os/Parcelable;

    const-string v0, "extra"

    .line 2016
    invoke-static {v2, v3, v0}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    return-object v1
.end method
