.class final Lo/scrollVerticallyBy$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/scrollVerticallyBy;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/onDetach$validateRelationship;",
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
        "Lcom/dreamplug/fabrik/ui/FabrikFragmentExtraData$LoanManagementExtra;",
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
.field private synthetic ICustomTabsCallback:Lo/scrollVerticallyBy;


# direct methods
.method constructor <init>(Lo/scrollVerticallyBy;)V
    .locals 0

    iput-object p1, p0, Lo/scrollVerticallyBy$onPostMessage;->ICustomTabsCallback:Lo/scrollVerticallyBy;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1057
    iget-object v0, p0, Lo/scrollVerticallyBy$onPostMessage;->ICustomTabsCallback:Lo/scrollVerticallyBy;

    invoke-static {v0}, Lo/extraCallback;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lo/onDetach$validateRelationship;

    return-object v0
.end method
