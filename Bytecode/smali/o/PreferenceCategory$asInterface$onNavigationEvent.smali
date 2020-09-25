.class public final Lo/PreferenceCategory$asInterface$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/TwoStatePreference$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PreferenceCategory$asInterface;
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/bankoffers/BankOffersFragment$onViewCreated$4$1$1",
        "Lcom/dreamplug/fabrik/ui/control/bankoffers/InstrumentBottomSheet$OnBottomSheetCtaClicked;",
        "onCtaClicked",
        "",
        "card",
        "Lcom/dreamplug/fabrik/ui/control/CardDetails;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/PreferenceCategory$asInterface;


# direct methods
.method constructor <init>(Lo/PreferenceCategory$asInterface;)V
    .locals 0

    iput-object p1, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V
    .locals 8

    .line 233
    iget-object v0, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object v0, v0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_c

    .line 234
    iget-object v0, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object v0, v0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    const-string v1, "bank_change"

    .line 2038
    iput-object v1, v0, Lo/PreferenceGroup;->onMessageChannelReady:Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object v0, v0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    .line 3032
    iget-object v0, v0, Lo/PreferenceGroup;->onPostMessage:Lo/setActive;

    .line 235
    new-instance v7, Lo/onDetach$onRelationshipValidationResult;

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 236
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move-object v2, v1

    :cond_2
    if-eqz p1, :cond_3

    .line 237
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer_code()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v1

    :cond_4
    if-eqz p1, :cond_5

    .line 238
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getIssuer()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    :cond_5
    move-object v4, v1

    :cond_6
    if-eqz p1, :cond_8

    .line 239
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getBrand()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    move-object v6, v5

    goto :goto_2

    :cond_8
    :goto_1
    move-object v6, v1

    :goto_2
    if-eqz p1, :cond_9

    .line 240
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getAccount_number()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_a

    :cond_9
    move-object v5, v1

    :cond_a
    move-object v1, v7

    .line 235
    invoke-direct/range {v1 .. v6}, Lo/onDetach$onRelationshipValidationResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object v0, v0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onMessageChannelReady(Lo/PreferenceCategory;)V

    .line 243
    iget-object v0, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object v0, v0, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    invoke-static {v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;)Lo/PreferenceGroup;

    move-result-object v0

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/control/CardDetails;->getId()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_b
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Lo/PreferenceGroup;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lo/PreferenceCategory$asInterface$onNavigationEvent;->onNavigationEvent:Lo/PreferenceCategory$asInterface;

    iget-object p1, p1, Lo/PreferenceCategory$asInterface;->onPostMessage:Lo/PreferenceCategory;

    const-string v0, "bank_offer_bank_select"

    invoke-static {p1, v0}, Lo/PreferenceCategory;->onNavigationEvent(Lo/PreferenceCategory;Ljava/lang/String;)Lo/onSupportContentChanged;

    :cond_c
    return-void
.end method
