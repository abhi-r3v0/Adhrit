.class public final Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PopupMenu$OnMenuItemClickListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/cred/pay/ui/checkout/instrumentlist/list/CheckoutInstrumentListFragment$onClickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener;


# direct methods
.method constructor <init>(Lo/PopupMenu$OnMenuItemClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;->onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 1

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x72dd30f6

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "select_instrument"

    .line 133
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 134
    instance-of p1, p2, Lo/ResourceManagerInternal$onNavigationEvent;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lo/ResourceManagerInternal$onNavigationEvent;

    if-eqz p2, :cond_3

    .line 135
    iget-object p1, p0, Lo/PopupMenu$OnMenuItemClickListener$onMessageChannelReady;->onMessageChannelReady:Lo/PopupMenu$OnMenuItemClickListener;

    invoke-static {p1}, Lo/PopupMenu$OnMenuItemClickListener;->onPostMessage(Lo/PopupMenu$OnMenuItemClickListener;)Lo/PopupMenu$OnDismissListener;

    move-result-object p1

    const-string/jumbo p3, "selectedItem"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    iget-object p2, p2, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 2032
    iget-object p3, p1, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback:Lo/inflate;

    if-nez p3, :cond_2

    const-string v0, "parentViewModel"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 2063
    :cond_2
    iput-object p2, p3, Lo/inflate;->warmup:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 2033
    iget-object p3, p1, Lo/PopupMenu$OnDismissListener;->extraCallback:Lo/setActive;

    invoke-virtual {p3, p2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 2034
    invoke-static {p1, p2}, Lo/extraCallback;->onMessageChannelReady(Lo/PopupMenu$OnDismissListener;Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    .line 1077
    invoke-virtual {p1}, Lo/PopupMenu$OnDismissListener;->ICustomTabsCallback()V

    :cond_3
    :goto_0
    return-void
.end method
