.class final Lo/updateAnchorFromChildren$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromChildren;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/setIconifiedByDefault;",
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
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Lcom/cred/sproxlib/share/medium/sound/SoundPublisher;",
        "kotlin.jvm.PlatformType",
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
.field private synthetic onNavigationEvent:Lo/updateAnchorFromChildren;


# direct methods
.method constructor <init>(Lo/updateAnchorFromChildren;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$onTransact;->onNavigationEvent:Lo/updateAnchorFromChildren;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1536
    iget-object v0, p0, Lo/updateAnchorFromChildren$onTransact;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1537
    sget-object v1, Lo/getQueryHint;->onNavigationEvent:Lo/getQueryHint;

    sget-object v2, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    invoke-static {}, Lo/isInLayout;->onTransact()I

    move-result v2

    .line 1536
    invoke-static {v0, v1, v2}, Lo/setIconifiedByDefault;->ICustomTabsCallback(Landroid/content/Context;Lo/getQueryHint;I)Lo/setIconifiedByDefault;

    move-result-object v0

    return-object v0
.end method
