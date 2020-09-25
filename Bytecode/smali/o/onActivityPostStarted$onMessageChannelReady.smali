.class final Lo/onActivityPostStarted$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostStarted;->ICustomTabsCallback(ILo/PlaybackStateCompat;)Landroid/view/View;
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
.field private synthetic ICustomTabsCallback:Lo/onActivityPostStarted;

.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

.field private synthetic onNavigationEvent:I


# direct methods
.method constructor <init>(Lo/onActivityPostStarted;ILcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPostStarted$onMessageChannelReady;->ICustomTabsCallback:Lo/onActivityPostStarted;

    iput p2, p0, Lo/onActivityPostStarted$onMessageChannelReady;->onNavigationEvent:I

    iput-object p3, p0, Lo/onActivityPostStarted$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 22
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    new-array v0, p1, [Lo/addWrite;

    .line 1040
    iget v1, p0, Lo/onActivityPostStarted$onMessageChannelReady;->onNavigationEvent:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2043
    new-instance v2, Lo/addWrite;

    const-string v3, "position"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    const-string v1, "pairs"

    .line 1039
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "greeting_carousel_card_clicked"

    .line 1039
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1042
    iget-object p1, p0, Lo/onActivityPostStarted$onMessageChannelReady;->ICustomTabsCallback:Lo/onActivityPostStarted;

    .line 3022
    iget-object p1, p1, Lo/onActivityPostStarted;->onNavigationEvent:Lo/hasGapsToFix$onMessageChannelReady;

    .line 1042
    iget-object v0, p0, Lo/onActivityPostStarted$onMessageChannelReady;->extraCallback:Lcom/dreamplug/fabrik/ui/contacts/festives/GreetingCardCreative;

    check-cast v0, Lo/StaggeredGridLayoutManager;

    const-string v1, "click"

    const/4 v2, 0x0

    .line 3066
    invoke-interface {p1, v1, v0, v2}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 22
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
