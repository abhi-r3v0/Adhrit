.class final Lo/interpolateOutOfBoundsScroll$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/interpolateOutOfBoundsScroll;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/interpolateOutOfBoundsScroll$extraCallback;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/dreamplug/fabrik/ui/lending/okyc/dialog/AadhaarMultiSimSelectorDialog$SimSelectionData;",
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
.field private synthetic onNavigationEvent:Lo/interpolateOutOfBoundsScroll;


# direct methods
.method constructor <init>(Lo/interpolateOutOfBoundsScroll;)V
    .locals 0

    iput-object p1, p0, Lo/interpolateOutOfBoundsScroll$ICustomTabsCallback;->onNavigationEvent:Lo/interpolateOutOfBoundsScroll;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1043
    iget-object v0, p0, Lo/interpolateOutOfBoundsScroll$ICustomTabsCallback;->onNavigationEvent:Lo/interpolateOutOfBoundsScroll;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/interpolateOutOfBoundsScroll$extraCallback;

    return-object v0
.end method
