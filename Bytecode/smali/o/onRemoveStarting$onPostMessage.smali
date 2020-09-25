.class final Lo/onRemoveStarting$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRemoveStarting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic extraCallback:Lo/onAddStarting;

.field private synthetic onPostMessage:Lo/onRemoveStarting;


# direct methods
.method constructor <init>(Lo/onRemoveStarting;Lo/onAddStarting;)V
    .locals 0

    iput-object p1, p0, Lo/onRemoveStarting$onPostMessage;->onPostMessage:Lo/onRemoveStarting;

    iput-object p2, p0, Lo/onRemoveStarting$onPostMessage;->extraCallback:Lo/onAddStarting;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 10
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1055
    iget-object p1, p0, Lo/onRemoveStarting$onPostMessage;->onPostMessage:Lo/onRemoveStarting;

    .line 2010
    iget-object p1, p1, Lo/onRemoveStarting;->extraCallback:Lo/shouldBeKeptAsChild$onPostMessage;

    .line 1055
    new-instance v0, Lo/snapFromFling$asBinder;

    iget-object v1, p0, Lo/onRemoveStarting$onPostMessage;->extraCallback:Lo/onAddStarting;

    new-instance v2, Lo/snapFromFling$ICustomTabsCallback;

    const-string v3, "SECONDARY_BUTTON"

    invoke-direct {v2, v3}, Lo/snapFromFling$ICustomTabsCallback;-><init>(Ljava/lang/String;)V

    check-cast v2, Lo/postShow;

    invoke-direct {v0, v1, v2}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-interface {p1, v0}, Lo/shouldBeKeptAsChild$onPostMessage;->onNavigationEvent(Lo/snapFromFling$asBinder;)V

    .line 10
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
