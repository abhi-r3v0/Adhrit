.class final Lo/stopInterceptRequestLayout$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
.field private synthetic onNavigationEvent:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$5;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 36
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1266
    iget-object p1, p0, Lo/stopInterceptRequestLayout$5;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 2039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 2069
    iget-object p1, p1, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    .line 1266
    :goto_0
    check-cast p1, Lo/scrollTo;

    if-eqz p1, :cond_1

    .line 3040
    iget-object p1, p1, Lo/scrollTo;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    const-string v0, "address"

    .line 1266
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1267
    iget-object p1, p0, Lo/stopInterceptRequestLayout$5;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 4036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->disconnect:Lo/getServerTime;

    if-eqz p1, :cond_5

    .line 1267
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    goto :goto_2

    .line 1269
    :cond_2
    iget-object p1, p0, Lo/stopInterceptRequestLayout$5;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 4039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 4069
    iget-object p1, p1, Lo/pullGlows;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 4320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 4321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_3

    move-object v1, p1

    .line 1269
    :cond_3
    check-cast v1, Lo/scrollTo;

    if-eqz v1, :cond_5

    .line 1270
    iget-object p1, p0, Lo/stopInterceptRequestLayout$5;->onNavigationEvent:Lo/stopInterceptRequestLayout;

    .line 5039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    .line 6035
    iget-object v0, v1, Lo/scrollTo;->onPostMessage:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "id"

    .line 1270
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6534
    iget-boolean v2, p1, Lo/pullGlows;->onNavigationEvent:Z

    if-eqz v2, :cond_4

    .line 6535
    iget-object p1, p1, Lo/pullGlows;->extraCallback:Lo/consumePendingUpdateOperations;

    invoke-virtual {p1, v0, v1}, Lo/consumePendingUpdateOperations;->onPostMessage(Ljava/lang/String;Z)V

    goto :goto_2

    .line 6537
    :cond_4
    invoke-virtual {p1, v0, v1}, Lo/pullGlows;->extraCallback(Ljava/lang/String;Z)V

    .line 36
    :cond_5
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
