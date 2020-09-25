.class final Lo/cancelScroll$onPostMessage$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelScroll$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/trimToSize;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lcom/dreamplug/androidapp/utils/DownloadListeners;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/holder/StoreGridViewHolder$InnerCardHolder$bind$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Landroid/graphics/drawable/Drawable;

.field final synthetic onPostMessage:Lo/cancelScroll$onPostMessage;


# direct methods
.method constructor <init>(Lo/cancelScroll$onPostMessage;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lo/cancelScroll$onPostMessage$extraCallback;->onPostMessage:Lo/cancelScroll$onPostMessage;

    iput-object p2, p0, Lo/cancelScroll$onPostMessage$extraCallback;->onMessageChannelReady:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 90
    check-cast p1, Lo/trimToSize;

    const-string v0, "$receiver"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1134
    new-instance v0, Lo/cancelScroll$onPostMessage$extraCallback$3;

    invoke-direct {v0, p0}, Lo/cancelScroll$onPostMessage$extraCallback$3;-><init>(Lo/cancelScroll$onPostMessage$extraCallback;)V

    check-cast v0, Lo/nextTransactionOrder;

    const-string v1, "downloadFinishListener"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2104
    new-instance v1, Lo/trimToSize$onPostMessage;

    invoke-direct {v1, v0}, Lo/trimToSize$onPostMessage;-><init>(Lo/nextTransactionOrder;)V

    check-cast v1, Lo/trimToSize$onNavigationEvent;

    iput-object v1, p1, Lo/trimToSize;->onPostMessage:Lo/trimToSize$onNavigationEvent;

    .line 1137
    new-instance v0, Lo/cancelScroll$onPostMessage$extraCallback$4;

    invoke-direct {v0, p0}, Lo/cancelScroll$onPostMessage$extraCallback$4;-><init>(Lo/cancelScroll$onPostMessage$extraCallback;)V

    check-cast v0, Lo/nextTransactionOrder;

    const-string v1, "downloadFailedListener"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2112
    new-instance v1, Lo/trimToSize$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lo/trimToSize$ICustomTabsCallback;-><init>(Lo/nextTransactionOrder;)V

    check-cast v1, Lo/trimToSize$extraCallback;

    iput-object v1, p1, Lo/trimToSize;->extraCallback:Lo/trimToSize$extraCallback;

    .line 90
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
