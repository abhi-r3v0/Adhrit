.class public final Lo/installDefaultInflateDelegates$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/installDefaultInflateDelegates;-><init>()V
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
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$onClickListener$1",
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
.field private synthetic extraCallback:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lo/installDefaultInflateDelegates$onPostMessage;->extraCallback:Lo/installDefaultInflateDelegates;

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

    .line 233
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const v0, -0x72dd30f6

    if-eq p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p3, "select_instrument"

    .line 234
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 235
    instance-of p1, p2, Lo/ResourceManagerInternal$onNavigationEvent;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    check-cast p2, Lo/ResourceManagerInternal$onNavigationEvent;

    if-eqz p2, :cond_2

    .line 236
    iget-object p1, p0, Lo/installDefaultInflateDelegates$onPostMessage;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->asInterface(Lo/installDefaultInflateDelegates;)Lo/setHooks;

    move-result-object p1

    const-string/jumbo p3, "selectedItem"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2117
    iget-object p2, p2, Lo/ResourceManagerInternal$onNavigationEvent;->ICustomTabsCallback:Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;

    .line 1164
    invoke-virtual {p1, p2}, Lo/setHooks;->onPostMessage(Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;)V

    .line 1165
    invoke-virtual {p1}, Lo/setHooks;->extraCallback()V

    .line 237
    iget-object p1, p0, Lo/installDefaultInflateDelegates$onPostMessage;->extraCallback:Lo/installDefaultInflateDelegates;

    invoke-static {p1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback$Stub(Lo/installDefaultInflateDelegates;)V

    :cond_2
    :goto_0
    return-void
.end method
