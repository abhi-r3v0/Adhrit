.class final Lo/saveOriginalDelegate$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/saveOriginalDelegate;-><init>(Lo/onSessionEvent;Lo/shouldBeKeptAsChild$onPostMessage;Lo/getServerTime;)V
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
.field private synthetic extraCallback:Lo/getServerTime;

.field private synthetic onNavigationEvent:Lo/saveOriginalDelegate;


# direct methods
.method constructor <init>(Lo/saveOriginalDelegate;Lo/getServerTime;)V
    .locals 0

    iput-object p1, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    iput-object p2, p0, Lo/saveOriginalDelegate$5;->extraCallback:Lo/getServerTime;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 21
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1098
    iget-object p1, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    .line 2021
    invoke-virtual {p1}, Lo/saveOriginalDelegate;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1099
    iget-object p1, p0, Lo/saveOriginalDelegate$5;->extraCallback:Lo/getServerTime;

    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1100
    iget-object p1, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    .line 3021
    iget-object p1, p1, Lo/saveOriginalDelegate;->onRelationshipValidationResult:Lo/snapFromFling$onNavigationEvent;

    if-eqz p1, :cond_0

    .line 1101
    iget-object v0, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    .line 4021
    iget-object v0, v0, Lo/saveOriginalDelegate;->ICustomTabsCallback$Stub:Lo/shouldBeKeptAsChild$onPostMessage;

    .line 1101
    new-instance v1, Lo/snapFromFling$asBinder;

    sget-object v2, Lo/dispatchRemoveFinished;->ICustomTabsCallback:Lo/dispatchRemoveFinished;

    check-cast v2, Lo/onAddStarting;

    new-instance v3, Lo/snapFromFling$extraCallback;

    .line 4056
    iget-object v4, p1, Lo/snapFromFling$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 1101
    iget-object v5, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    .line 5021
    iget-object v5, v5, Lo/saveOriginalDelegate;->onMessageChannelReady:Ljava/lang/String;

    .line 1101
    iget-object v6, p0, Lo/saveOriginalDelegate$5;->onNavigationEvent:Lo/saveOriginalDelegate;

    .line 6021
    iget-object v6, v6, Lo/saveOriginalDelegate;->ICustomTabsCallback:Ljava/lang/String;

    .line 6056
    iget-object p1, p1, Lo/snapFromFling$onNavigationEvent;->onNavigationEvent:Ljava/lang/String;

    .line 1101
    invoke-direct {v3, v4, v5, v6, p1}, Lo/snapFromFling$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v3, Lo/postShow;

    invoke-direct {v1, v2, v3}, Lo/snapFromFling$asBinder;-><init>(Lo/onAddStarting;Lo/postShow;)V

    invoke-interface {v0, v1}, Lo/shouldBeKeptAsChild$onPostMessage;->onNavigationEvent(Lo/snapFromFling$asBinder;)V

    .line 21
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
