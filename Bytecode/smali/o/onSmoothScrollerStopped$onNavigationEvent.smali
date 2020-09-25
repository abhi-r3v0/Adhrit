.class public final Lo/onSmoothScrollerStopped$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSmoothScrollerStopped;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/addWrite<",
        "+",
        "Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;",
        "+",
        "Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012.\u0010\u0002\u001a*\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u0014\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "response",
        "Lkotlin/Pair;",
        "Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Landroid/os/Bundle;

.field public final synthetic onNavigationEvent:Lo/onSmoothScrollerStopped;


# direct methods
.method constructor <init>(Lo/onSmoothScrollerStopped;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    iput-object p2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->extraCallback:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 39
    check-cast p1, Lo/addWrite;

    .line 2028
    iget-object v0, p1, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1088
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-static {p1}, Lo/onSmoothScrollerStopped;->onNavigationEvent(Lo/onSmoothScrollerStopped;)Lo/setReenterTransition$onPostMessage;

    move-result-object v3

    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "requireContext()"

    invoke-static {v4, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    const v0, 0x7f130412

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p1, "getString(R.string.something_went_wrong)"

    invoke-static {v5, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static/range {v3 .. v9}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 1089
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 3000
    iget-object p1, p1, Lo/onSmoothScrollerStopped;->onPostMessage:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v3, 0x5

    .line 1089
    invoke-static {p1, v2, v1, v0, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    :cond_0
    if-eqz p1, :cond_12

    .line 3027
    iget-object p1, p1, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 1091
    check-cast p1, Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;

    if-eqz p1, :cond_12

    .line 1092
    iget-object v0, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 4000
    iget-object v0, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 4014
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/rent/Config;

    .line 4026
    iput-object v3, v0, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    .line 1093
    iget-object v0, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 5000
    iget-object v0, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 5013
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1093
    invoke-static {v3}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/rent/Order;

    if-eqz v3, :cond_1

    .line 5062
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/rent/Order;->onPostMessage:Lcom/dreamplug/fabrik/ui/rent/PlutusOrder;

    if-eqz v3, :cond_1

    .line 5071
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/rent/PlutusOrder;->ICustomTabsCallback:Ljava/lang/Double;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 6024
    :goto_0
    iput-object v3, v0, Lo/stopSmoothScroller;->extraCallback:Ljava/lang/Double;

    .line 1094
    iget-object v0, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 7000
    iget-object v0, v0, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/stopSmoothScroller;

    .line 7013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/rent/RentOrderResponse;->onNavigationEvent:Ljava/util/List;

    const-string v3, ""

    if-eqz p1, :cond_2

    .line 1094
    invoke-static {p1}, Lo/getSessionPersistenceKey;->onPostMessage(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/rent/Order;

    if-eqz p1, :cond_2

    .line 7065
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/rent/Order;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Biller;

    if-eqz p1, :cond_2

    .line 7077
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/rent/Biller;->ICustomTabsCallback:Ljava/lang/String;

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v3

    :cond_3
    const-string v4, "<set-?>"

    .line 1094
    invoke-static {p1, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8025
    iput-object p1, v0, Lo/stopSmoothScroller;->onNavigationEvent:Ljava/lang/String;

    .line 1095
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 9000
    iget-object p1, p1, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/stopSmoothScroller;

    .line 9019
    iget-object p1, p1, Lo/stopSmoothScroller;->onPostMessage:Lo/onDetach$cancel;

    if-nez p1, :cond_4

    const-string v0, "extra"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9168
    :cond_4
    iget-object p1, p1, Lo/onDetach$cancel;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_12

    .line 1096
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    const-string v0, "paymentFragment"

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->extraCallback:Landroid/os/Bundle;

    if-eqz p1, :cond_5

    goto :goto_1

    .line 1112
    :cond_5
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lo/getMaxAvailableHeight;

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 24049
    iput-object v0, p1, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    goto/16 :goto_4

    .line 1112
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.cred.pay.ui.PaymentContainerFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1106
    :cond_7
    :goto_1
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 1097
    new-instance v4, Lcom/cred/pay/ui/CredPaymentUiBuilder;

    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 11000
    sget-object v5, Lo/setTrackTintMode;->onRelationshipValidationResult:Lo/setSubtitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_8

    move-object v5, v3

    .line 1097
    :cond_8
    invoke-direct {v4, v5}, Lcom/cred/pay/ui/CredPaymentUiBuilder;-><init>(Ljava/lang/String;)V

    .line 1098
    new-instance v5, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    iget-object v6, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 12000
    iget-object v6, v6, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v6}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/stopSmoothScroller;

    .line 12026
    iget-object v6, v6, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v6, :cond_9

    .line 12033
    iget-object v6, v6, Lcom/dreamplug/fabrik/ui/rent/Config;->onTransact:Ljava/lang/String;

    if-nez v6, :cond_a

    .line 1099
    :cond_9
    sget-object v6, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v6, 0x7f13037d

    invoke-static {v6}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v6

    .line 1100
    :cond_a
    iget-object v7, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 13000
    iget-object v7, v7, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v7}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lo/stopSmoothScroller;

    .line 13024
    iget-object v7, v7, Lo/stopSmoothScroller;->extraCallback:Ljava/lang/Double;

    .line 1100
    check-cast v7, Ljava/lang/Number;

    const/16 v8, 0x3c

    invoke-static {v7, v1, v2, v2, v8}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/Number;ZLjava/lang/String;Ljava/util/Locale;I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 1098
    invoke-direct {v5, v1, v6}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    const-string v1, "headerTemplate"

    invoke-static {v5, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14015
    iput-object v5, v4, Lcom/cred/pay/ui/CredPaymentUiBuilder;->extraCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$onNavigationEvent;

    .line 1101
    new-instance v1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;

    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 15000
    iget-object v2, v2, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/stopSmoothScroller;

    .line 15026
    iget-object v2, v2, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v2, :cond_b

    .line 16023
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/rent/Config;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 1102
    :cond_b
    sget-object v2, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v2, 0x7f13037e

    invoke-static {v2}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v2

    :cond_c
    move-object v9, v2

    .line 1103
    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 17000
    iget-object v2, v2, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/stopSmoothScroller;

    .line 17026
    iget-object v2, v2, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v2, :cond_d

    .line 18025
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/rent/Config;->onPostMessage:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 1103
    :cond_d
    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 19000
    iget-object v2, v2, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/stopSmoothScroller;

    .line 19025
    iget-object v2, v2, Lo/stopSmoothScroller;->onNavigationEvent:Ljava/lang/String;

    :cond_e
    move-object v10, v2

    .line 1104
    iget-object v2, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 20000
    iget-object v2, v2, Lo/onSmoothScrollerStopped;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/stopSmoothScroller;

    .line 20026
    iget-object v2, v2, Lo/stopSmoothScroller;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/rent/Config;

    if-eqz v2, :cond_10

    .line 21020
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/rent/Config;->onNavigationEvent:Ljava/lang/String;

    if-nez v2, :cond_f

    goto :goto_2

    :cond_f
    move-object v7, v2

    goto :goto_3

    :cond_10
    :goto_2
    move-object v7, v3

    :goto_3
    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x12

    move-object v6, v1

    .line 1101
    invoke-direct/range {v6 .. v12}, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady$onPostMessage;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZI)V

    check-cast v1, Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    const-string v2, "confirmationTemplate"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22020
    iput-object v1, v4, Lcom/cred/pay/ui/CredPaymentUiBuilder;->onNavigationEvent:Lcom/cred/pay/ui/CredPaymentUiBuilder$onMessageChannelReady;

    .line 1105
    sget-object v1, Lo/getCurrentContentInsetLeft;->ICustomTabsCallback:Lo/getCurrentContentInsetLeft;

    invoke-static {}, Lo/getCurrentContentInsetLeft;->onPostMessage()Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    move-result-object v1

    const-string v2, "remoteConfigs"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22025
    iput-object v1, v4, Lcom/cred/pay/ui/CredPaymentUiBuilder;->ICustomTabsCallback:Lcom/cred/pay/ui/CredPaymentUiBuilder$extraCallback;

    .line 1106
    invoke-virtual {v4}, Lcom/cred/pay/ui/CredPaymentUiBuilder;->ICustomTabsCallback()Lo/getMaxAvailableHeight;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 22049
    iput-object v1, p1, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    .line 1107
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 22464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1109
    iget-object p1, p0, Lo/onSmoothScrollerStopped$onNavigationEvent;->onNavigationEvent:Lo/onSmoothScrollerStopped;

    .line 23049
    iget-object p1, p1, Lo/onSmoothScrollerStopped;->ICustomTabsCallback:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_11

    .line 1109
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_11
    const v2, 0x7f0b0542

    const/4 v3, 0x2

    .line 23343
    invoke-virtual {v1, v2, p1, v0, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 1110
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 1114
    :goto_4
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p1, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/onSmoothScrollerStopped$onNavigationEvent$onMessageChannelReady;-><init>(Lo/onSmoothScrollerStopped$onNavigationEvent;)V

    check-cast p1, Lo/getServerTime;

    const-string v0, "command"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x3e8

    .line 25018
    new-instance v2, Lo/updateItemAt$extraCallback;

    invoke-direct {v2, p1}, Lo/updateItemAt$extraCallback;-><init>(Lo/getServerTime;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lo/updateItemAt;->onPostMessage(JLjava/lang/Runnable;)Ljava/io/Closeable;

    :cond_12
    return-void
.end method
