.class final Lo/updateHomeAccessibility$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateHomeAccessibility;-><init>(Lo/asBinder;Lo/updateNavigationIcon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/getRowCountForAccessibility;",
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
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager;",
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
.field private synthetic onNavigationEvent:Lo/updateHomeAccessibility;


# direct methods
.method constructor <init>(Lo/updateHomeAccessibility;)V
    .locals 0

    iput-object p1, p0, Lo/updateHomeAccessibility$onMessageChannelReady;->onNavigationEvent:Lo/updateHomeAccessibility;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1049
    new-instance v0, Lo/getRowCountForAccessibility;

    iget-object v1, p0, Lo/updateHomeAccessibility$onMessageChannelReady;->onNavigationEvent:Lo/updateHomeAccessibility;

    .line 2042
    iget-object v1, v1, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1049
    check-cast v1, Lo/onSessionEvent;

    invoke-direct {v0, v1}, Lo/getRowCountForAccessibility;-><init>(Lo/onSessionEvent;)V

    return-object v0
.end method
