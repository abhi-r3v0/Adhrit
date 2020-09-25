.class final Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/layoutChildLeft$ICustomTabsCallback;
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/androidapp/payments/fulfilment/PaymentFulfilmentLro$getOrderStatus$1$onResponse$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getViewListMeasuredWidth;

.field private synthetic onPostMessage:Lo/layoutChildLeft$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getViewListMeasuredWidth;Lo/layoutChildLeft$ICustomTabsCallback;)V
    .locals 0

    iput-object p1, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/getViewListMeasuredWidth;

    iput-object p2, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/layoutChildLeft$ICustomTabsCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1147
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/getViewListMeasuredWidth;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1148
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/getViewListMeasuredWidth;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1149
    iget-object v0, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->onPostMessage:Lo/layoutChildLeft$ICustomTabsCallback;

    iget-object v0, v0, Lo/layoutChildLeft$ICustomTabsCallback;->ICustomTabsCallback:Lo/layoutChildLeft;

    iget-object v1, p0, Lo/layoutChildLeft$ICustomTabsCallback$onNavigationEvent;->extraCallback:Lo/getViewListMeasuredWidth;

    .line 2016
    iget-object v1, v1, Lo/getViewListMeasuredWidth;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 2052
    invoke-virtual {v0, v1}, Lo/layoutChildLeft;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    .line 129
    :cond_0
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
