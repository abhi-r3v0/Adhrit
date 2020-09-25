.class final Lo/cancelScroll$onPostMessage$ICustomTabsCallback$4;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/cancelScroll$onPostMessage$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/store/landing/holder/StoreGridViewHolder$InnerCardHolder$bind$2$2$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/cancelScroll$onPostMessage$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/cancelScroll$onPostMessage$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/cancelScroll$onPostMessage$ICustomTabsCallback$4;->onMessageChannelReady:Lo/cancelScroll$onPostMessage$ICustomTabsCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1157
    iget-object p1, p0, Lo/cancelScroll$onPostMessage$ICustomTabsCallback$4;->onMessageChannelReady:Lo/cancelScroll$onPostMessage$ICustomTabsCallback;

    iget-object p1, p1, Lo/cancelScroll$onPostMessage$ICustomTabsCallback;->onPostMessage:Lo/cancelScroll$onPostMessage;

    iget-object p2, p0, Lo/cancelScroll$onPostMessage$ICustomTabsCallback$4;->onMessageChannelReady:Lo/cancelScroll$onPostMessage$ICustomTabsCallback;

    iget-object p2, p2, Lo/cancelScroll$onPostMessage$ICustomTabsCallback;->extraCallback:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, p2}, Lo/cancelScroll$onPostMessage;->ICustomTabsCallback(Lo/cancelScroll$onPostMessage;Landroid/graphics/drawable/Drawable;)V

    .line 90
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
