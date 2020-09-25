.class final Lo/setContentInsetEndWithActions$extraCallback$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setContentInsetEndWithActions$extraCallback;
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
.field private synthetic onMessageChannelReady:Lo/setContentInsetEndWithActions$extraCallback;


# direct methods
.method constructor <init>(Lo/setContentInsetEndWithActions$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setContentInsetEndWithActions$extraCallback$4;->onMessageChannelReady:Lo/setContentInsetEndWithActions$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1097
    iget-object v0, p0, Lo/setContentInsetEndWithActions$extraCallback$4;->onMessageChannelReady:Lo/setContentInsetEndWithActions$extraCallback;

    iget-object v0, v0, Lo/setContentInsetEndWithActions$extraCallback;->ICustomTabsCallback:Lo/setContentInsetEndWithActions;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string/jumbo v1, "upiFragment"

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1098
    iget-object v0, p0, Lo/setContentInsetEndWithActions$extraCallback$4;->onMessageChannelReady:Lo/setContentInsetEndWithActions$extraCallback;

    iget-object v0, v0, Lo/setContentInsetEndWithActions$extraCallback;->ICustomTabsCallback:Lo/setContentInsetEndWithActions;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 1464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1100
    iget-object v0, p0, Lo/setContentInsetEndWithActions$extraCallback$4;->onMessageChannelReady:Lo/setContentInsetEndWithActions$extraCallback;

    iget-object v0, v0, Lo/setContentInsetEndWithActions$extraCallback;->onNavigationEvent:Lo/dispatchAddStarting;

    check-cast v0, Landroidx/fragment/app/Fragment;

    const v3, 0x7f0b0961

    const/4 v4, 0x2

    .line 2343
    invoke-virtual {v2, v3, v0, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1101
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 32
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
