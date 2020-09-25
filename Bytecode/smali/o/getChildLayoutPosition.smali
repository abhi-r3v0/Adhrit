.class public final Lo/getChildLayoutPosition;
.super Lo/MediaControllerCompat$PlaybackInfo;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0010 \n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0014\u0010\r\u001a\u00020\u000e2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u000fR\u0014\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/card/WinMachineAdapter;",
        "Landroidx/fragment/app/FragmentPagerAdapter;",
        "fm",
        "Landroidx/fragment/app/FragmentManager;",
        "(Landroidx/fragment/app/FragmentManager;)V",
        "listItems",
        "",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$WinMachineViewData;",
        "getCount",
        "",
        "getItem",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/machine/card/WinMachineCardFragment;",
        "position",
        "updateData",
        "",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/findContainingItemView$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 1

    const-string v0, "fm"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lo/MediaControllerCompat$PlaybackInfo;-><init>(Lo/requestExtraBinder;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lo/getChildLayoutPosition;->onNavigationEvent:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final extraCallback()I
    .locals 1

    .line 13
    iget-object v0, p0, Lo/getChildLayoutPosition;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final synthetic onPostMessage(I)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 1011
    sget-object v0, Lo/getChildAdapterPosition;->extraCallback:Lo/getChildAdapterPosition$extraCallback;

    iget-object v0, p0, Lo/getChildLayoutPosition;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/findContainingItemView$onNavigationEvent;

    const-string/jumbo v0, "winMachineCard"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1333
    new-instance v0, Lo/getChildAdapterPosition;

    invoke-direct {v0}, Lo/getChildAdapterPosition;-><init>()V

    .line 1334
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1335
    :cond_0
    check-cast p1, Landroid/os/Parcelable;

    const-string v2, "data"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1334
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    check-cast v0, Landroidx/fragment/app/Fragment;

    return-object v0
.end method
