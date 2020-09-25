.class final Lo/convertFocusDirectionToLayoutDirection$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/convertFocusDirectionToLayoutDirection;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;


# direct methods
.method constructor <init>(Lo/convertFocusDirectionToLayoutDirection;)V
    .locals 0

    iput-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$asBinder;->onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 28
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1081
    sget-object p1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$asBinder;->onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardParent:I

    invoke-virtual {p1, v0}, Lo/convertFocusDirectionToLayoutDirection;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    const-string v0, "cardParent"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1082
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/convertFocusDirectionToLayoutDirection$asBinder;->onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1083
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string/jumbo v1, "screenshot.jpg"

    invoke-static {p1, v1, v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 1084
    iget-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$asBinder;->onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object p1, p0, Lo/convertFocusDirectionToLayoutDirection$asBinder;->onNavigationEvent:Lo/convertFocusDirectionToLayoutDirection;

    invoke-static {p1}, Lo/convertFocusDirectionToLayoutDirection;->onNavigationEvent(Lo/convertFocusDirectionToLayoutDirection;)Lo/recycleByLayoutState;

    move-result-object p1

    .line 2047
    iget-object p1, p1, Lo/recycleByLayoutState;->ICustomTabsCallback:Lo/setActive;

    .line 2320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    .line 1084
    :goto_0
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;

    if-eqz p1, :cond_2

    .line 3028
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/certificate/CertificateResponseModel;->asInterface:Ljava/lang/String;

    move-object v4, p1

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1c

    .line 1084
    invoke-static/range {v2 .. v7}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 28
    :cond_3
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
