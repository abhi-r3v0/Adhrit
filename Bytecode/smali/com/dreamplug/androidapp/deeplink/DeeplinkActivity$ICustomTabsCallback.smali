.class final Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/setActive;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Lo/setActive;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    iput-object p2, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->ICustomTabsCallback:Lo/setActive;

    iput-object p3, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1084
    iget-object v0, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->ICustomTabsCallback:Lo/setActive;

    iget-object v1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    check-cast v1, Lo/toLegacyStreamType;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onPostMessage(Lo/toLegacyStreamType;)V

    .line 1085
    iget-object v0, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->onPostMessage:Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;

    iget-object v1, p0, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;->onNavigationEvent(Lcom/dreamplug/androidapp/deeplink/DeeplinkActivity;Ljava/lang/String;)V

    .line 39
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method