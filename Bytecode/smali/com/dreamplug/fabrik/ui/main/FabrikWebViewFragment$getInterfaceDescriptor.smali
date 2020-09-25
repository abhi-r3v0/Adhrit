.class final Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$getInterfaceDescriptor;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 93
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    sget-object p1, Lo/setTitleInt;->onTransact:Lo/setTitleInt;

    .line 1320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1270
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    const-string v0, "ConnectionLiveData.value!!"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1271
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment$getInterfaceDescriptor;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/main/FabrikWebViewFragment;->extraCallback()V

    .line 93
    :cond_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
