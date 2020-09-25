.class final Lo/getMaxAvailableHeight$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMaxAvailableHeight;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/onItemHoverExit;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/cred/pay/ui/PaymentScreen;",
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
.field final synthetic ICustomTabsCallback:Lo/getMaxAvailableHeight;


# direct methods
.method constructor <init>(Lo/getMaxAvailableHeight;)V
    .locals 0

    iput-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 45
    check-cast p1, Lo/throwIfInMutationOperation;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1098
    :goto_0
    check-cast p1, Lo/onItemHoverExit;

    if-eqz p1, :cond_1f

    .line 1100
    instance-of v0, p1, Lo/onItemHoverExit$newSession;

    if-eqz v0, :cond_1

    .line 1101
    new-instance v0, Lo/removeTabAt;

    invoke-direct {v0}, Lo/removeTabAt;-><init>()V

    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1103
    :cond_1
    instance-of v0, p1, Lo/onItemHoverExit$onRelationshipValidationResult;

    if-eqz v0, :cond_2

    .line 1104
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/getMaxAvailableHeight;->onNavigationEvent(Lo/getMaxAvailableHeight;Ljava/lang/String;)V

    return-void

    .line 1106
    :cond_2
    instance-of v0, p1, Lo/onItemHoverExit$onPostMessage;

    const-string/jumbo v3, "source"

    if-eqz v0, :cond_3

    .line 1107
    sget-object v0, Lo/createDrawableIfNeeded;->extraCallback:Lo/createDrawableIfNeeded$onNavigationEvent;

    move-object v0, p1

    check-cast v0, Lo/onItemHoverExit$onPostMessage;

    .line 2018
    iget-object v0, v0, Lo/onItemHoverExit$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 1107
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2186
    new-instance v1, Lo/createDrawableIfNeeded;

    invoke-direct {v1}, Lo/createDrawableIfNeeded;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1107
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1109
    :cond_3
    instance-of v0, p1, Lo/onItemHoverExit$onMessageChannelReady;

    if-eqz v0, :cond_4

    .line 1110
    sget-object v0, Lo/setEnterTransition;->onMessageChannelReady:Lo/setEnterTransition$onPostMessage;

    move-object v0, p1

    check-cast v0, Lo/onItemHoverExit$onMessageChannelReady;

    .line 3022
    iget-object v0, v0, Lo/onItemHoverExit$onMessageChannelReady;->onNavigationEvent:Ljava/lang/String;

    .line 1110
    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3292
    new-instance v1, Lo/setEnterTransition;

    invoke-direct {v1}, Lo/setEnterTransition;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    sget-object v3, Lo/setEnterTransition;->onMessageChannelReady:Lo/setEnterTransition$onPostMessage;

    .line 4290
    invoke-static {}, Lo/setEnterTransition;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    .line 3292
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1110
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1112
    :cond_4
    instance-of v0, p1, Lo/onItemHoverExit$ICustomTabsCallback$Stub;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 1113
    sget-object v0, Lo/setHoverListener;->onRelationshipValidationResult:Lo/setHoverListener$onMessageChannelReady;

    move-object v0, p1

    check-cast v0, Lo/onItemHoverExit$ICustomTabsCallback$Stub;

    .line 5026
    iget-object v1, v0, Lo/onItemHoverExit$ICustomTabsCallback$Stub;->onMessageChannelReady:Ljava/lang/String;

    .line 6026
    iget-boolean v0, v0, Lo/onItemHoverExit$ICustomTabsCallback$Stub;->extraCallback:Z

    const-string v2, "NB"

    .line 6251
    invoke-static {v2, v3, v1, v0}, Lo/setHoverListener$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;ZLjava/lang/String;Z)Lo/setHoverListener;

    move-result-object v0

    .line 1113
    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1115
    :cond_5
    instance-of v0, p1, Lo/onItemHoverExit$asBinder;

    if-eqz v0, :cond_6

    .line 1116
    sget-object v0, Lo/setHoverListener;->onRelationshipValidationResult:Lo/setHoverListener$onMessageChannelReady;

    move-object v0, p1

    check-cast v0, Lo/onItemHoverExit$asBinder;

    .line 7030
    iget-boolean v1, v0, Lo/onItemHoverExit$asBinder;->ICustomTabsCallback:Z

    .line 8030
    iget-object v2, v0, Lo/onItemHoverExit$asBinder;->onNavigationEvent:Ljava/lang/String;

    .line 9030
    iget-boolean v0, v0, Lo/onItemHoverExit$asBinder;->onPostMessage:Z

    const-string v3, "UPI_APPS"

    .line 1116
    invoke-static {v3, v1, v2, v0}, Lo/setHoverListener$onMessageChannelReady;->ICustomTabsCallback(Ljava/lang/String;ZLjava/lang/String;Z)Lo/setHoverListener;

    move-result-object v0

    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1118
    :cond_6
    instance-of v0, p1, Lo/onItemHoverExit$onNavigationEvent;

    if-eqz v0, :cond_7

    .line 1119
    sget-object v0, Lo/setExitTransition;->onMessageChannelReady:Lo/setExitTransition$ICustomTabsCallback;

    move-object v0, p1

    check-cast v0, Lo/onItemHoverExit$onNavigationEvent;

    .line 9034
    iget-boolean v0, v0, Lo/onItemHoverExit$onNavigationEvent;->ICustomTabsCallback:Z

    .line 9312
    new-instance v1, Lo/setExitTransition;

    invoke-direct {v1}, Lo/setExitTransition;-><init>()V

    .line 9313
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "show_confirmation"

    .line 9314
    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 9313
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1119
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1121
    :cond_7
    instance-of v0, p1, Lo/onItemHoverExit$getInterfaceDescriptor;

    if-eqz v0, :cond_b

    .line 1122
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.action.VIEW"

    .line 1123
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1124
    check-cast p1, Lo/onItemHoverExit$getInterfaceDescriptor;

    .line 10038
    iget-object v4, p1, Lo/onItemHoverExit$getInterfaceDescriptor;->onPostMessage:Ljava/lang/String;

    .line 1124
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v4, 0x2

    new-array v5, v4, [Lo/addWrite;

    .line 11038
    iget-object v6, p1, Lo/onItemHoverExit$getInterfaceDescriptor;->onPostMessage:Ljava/lang/String;

    .line 11043
    new-instance v7, Lo/addWrite;

    const-string v8, "deeplink"

    invoke-direct {v7, v8, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v3

    .line 12038
    iget-object v3, p1, Lo/onItemHoverExit$getInterfaceDescriptor;->ICustomTabsCallback:Ljava/lang/String;

    .line 12043
    new-instance v6, Lo/addWrite;

    const-string v7, "package_name"

    invoke-direct {v6, v7, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v2

    const-string v2, "pairs"

    .line 1125
    invoke-static {v5, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v3, "payment_upi_app_launch"

    .line 1125
    invoke-static {v3, v2}, Lo/setWindowLayoutType;->extraCallback(Ljava/lang/String;Ljava/util/Map;)V

    .line 1126
    iget-object v2, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 13038
    iget-object v3, p1, Lo/onItemHoverExit$getInterfaceDescriptor;->ICustomTabsCallback:Ljava/lang/String;

    .line 1126
    invoke-static {v2, v3}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;Ljava/lang/String;)V

    .line 14038
    iget-object p1, p1, Lo/onItemHoverExit$getInterfaceDescriptor;->ICustomTabsCallback:Ljava/lang/String;

    .line 1127
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1128
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    goto :goto_1

    :cond_8
    move-object p1, v1

    :goto_1
    if-nez p1, :cond_9

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_9
    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1129
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {}, Lo/getMaxAvailableHeight;->onMessageChannelReady()I

    move-result v2

    invoke-virtual {p1, v0, v2, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void

    .line 1131
    :cond_a
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 15000
    iget-object p1, p1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 15051
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsCallback$Stub$Proxy:Lo/setActive;

    .line 1131
    new-instance v0, Lo/addWrite;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1132
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    sget-object v0, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    sget v0, Lo/onItemHoverEnter$ICustomTabsCallback$Stub;->app_not_found:I

    invoke-static {v0}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lo/getMaxAvailableHeight;->extraCallback(Lo/getMaxAvailableHeight;Ljava/lang/String;)V

    return-void

    .line 1135
    :cond_b
    instance-of v0, p1, Lo/onItemHoverExit$asInterface;

    if-eqz v0, :cond_c

    .line 1136
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {p1}, Lo/getMaxAvailableHeight;->ICustomTabsCallback(Lo/getMaxAvailableHeight;)V

    return-void

    .line 1138
    :cond_c
    instance-of v0, p1, Lo/onItemHoverExit$extraCallback;

    if-eqz v0, :cond_14

    .line 1139
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eq v0, v2, :cond_d

    goto :goto_2

    .line 1145
    :cond_d
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast p1, Lo/onItemHoverExit$extraCallback;

    .line 19046
    iget-boolean p1, p1, Lo/onItemHoverExit$extraCallback;->extraCallback:Z

    .line 20045
    iput-boolean p1, v0, Lo/getCachedDrawable;->extraCallback:Z

    .line 1146
    :cond_e
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {p1}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lo/getCachedDrawable;->onPostMessage()V

    :cond_f
    return-void

    .line 1140
    :cond_10
    :goto_2
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    sget-object v1, Lo/getCachedDrawable;->onMessageChannelReady:Lo/getCachedDrawable$onPostMessage;

    new-instance v1, Lo/getCachedDrawable$onMessageChannelReady;

    move-object v2, p1

    check-cast v2, Lo/onItemHoverExit$extraCallback;

    .line 16046
    iget-object v3, v2, Lo/onItemHoverExit$extraCallback;->onMessageChannelReady:Ljava/util/List;

    .line 1140
    invoke-direct {v1, v3}, Lo/getCachedDrawable$onMessageChannelReady;-><init>(Ljava/util/List;)V

    const-string v3, "extra"

    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16260
    new-instance v4, Lo/getCachedDrawable;

    invoke-direct {v4}, Lo/getCachedDrawable;-><init>()V

    .line 16261
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v5, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 1140
    invoke-static {v0, v4}, Lo/getMaxAvailableHeight;->onPostMessage(Lo/getMaxAvailableHeight;Lo/getCachedDrawable;)V

    .line 1141
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 17046
    iget-boolean v1, v2, Lo/onItemHoverExit$extraCallback;->extraCallback:Z

    .line 18045
    iput-boolean v1, v0, Lo/getCachedDrawable;->extraCallback:Z

    .line 1142
    :cond_11
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 18046
    iget-boolean v1, v2, Lo/onItemHoverExit$extraCallback;->onNavigationEvent:Z

    .line 18049
    iput-boolean v1, v0, Lo/getCachedDrawable;->ICustomTabsCallback:Z

    .line 1143
    :cond_12
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-static {v0}, Lo/getMaxAvailableHeight;->onMessageChannelReady(Lo/getMaxAvailableHeight;)Lo/getCachedDrawable;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_13
    return-void

    .line 1149
    :cond_14
    instance-of v0, p1, Lo/onItemHoverExit$onTransact;

    if-eqz v0, :cond_15

    .line 1151
    new-instance v0, Lo/updateAllRemainingSpans;

    invoke-direct {v0}, Lo/updateAllRemainingSpans;-><init>()V

    .line 1152
    new-instance v1, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;

    invoke-direct {v1, p1, p0}, Lo/getMaxAvailableHeight$ICustomTabsService$onNavigationEvent;-><init>(Lo/onItemHoverExit;Lo/getMaxAvailableHeight$ICustomTabsService;)V

    check-cast v1, Lo/onDisconnectSetValue;

    invoke-virtual {v0, v1}, Lo/updateAllRemainingSpans;->onMessageChannelReady(Lo/onDisconnectSetValue;)V

    .line 1159
    invoke-virtual {v0, v3}, Lo/onAudioInfoChanged;->extraCallback(Z)V

    .line 1160
    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1162
    :cond_15
    instance-of v0, p1, Lo/onItemHoverExit$ICustomTabsCallback$Stub$Proxy;

    if-eqz v0, :cond_1a

    .line 1163
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 21000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    if-eqz v0, :cond_16

    .line 21041
    iput-boolean v3, v0, Lo/MenuItemHoverListener;->onRelationshipValidationResult:Z

    .line 1165
    :cond_16
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21896
    iget-object v0, v0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    const-string v1, "childFragmentManager.fragments"

    .line 1165
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    .line 1799
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 1166
    instance-of v4, v1, Lo/setSelected;

    if-eqz v4, :cond_18

    const/4 v3, 0x1

    goto :goto_3

    .line 1168
    :cond_18
    instance-of v4, v1, Lo/getAllExperimentsInAnalytics;

    if-eqz v4, :cond_17

    check-cast v1, Lo/getAllExperimentsInAnalytics;

    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    goto :goto_3

    :cond_19
    if-nez v3, :cond_1f

    .line 1171
    new-instance v0, Lo/setSelected;

    invoke-direct {v0}, Lo/setSelected;-><init>()V

    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    return-void

    .line 1173
    :cond_1a
    instance-of v0, p1, Lo/onItemHoverExit$ICustomTabsCallback;

    if-eqz v0, :cond_1f

    .line 1174
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 22000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 22048
    iget-object v0, v0, Lo/MenuItemHoverListener;->newSession:Lcom/cred/pay/repository/models/PaymentMethod;

    if-eqz v0, :cond_1f

    .line 1175
    iget-object v0, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 23000
    iget-object v0, v0, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MenuItemHoverListener;

    .line 23048
    iget-object v0, v0, Lo/MenuItemHoverListener;->newSession:Lcom/cred/pay/repository/models/PaymentMethod;

    if-eqz v0, :cond_1b

    .line 24025
    iget-object v1, v0, Lcom/cred/pay/repository/models/PaymentMethod;->onPostMessage:Ljava/util/List;

    .line 1175
    :cond_1b
    check-cast v1, Ljava/util/Collection;

    if-eqz v1, :cond_1d

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_4

    :cond_1c
    const/4 v2, 0x0

    :cond_1d
    :goto_4
    if-eqz v2, :cond_1e

    .line 1176
    iget-object p1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    .line 25000
    iget-object p1, p1, Lo/getMaxAvailableHeight;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MenuItemHoverListener;

    .line 25416
    iget-object p1, p1, Lo/MenuItemHoverListener;->ICustomTabsService:Lo/setActive;

    new-instance v0, Lo/throwIfInMutationOperation;

    new-instance v1, Lo/onItemHoverExit$onNavigationEvent;

    invoke-direct {v1, v3}, Lo/onItemHoverExit$onNavigationEvent;-><init>(Z)V

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 1178
    :cond_1e
    new-instance v0, Lo/createTabView;

    invoke-direct {v0}, Lo/createTabView;-><init>()V

    iget-object v1, p0, Lo/getMaxAvailableHeight$ICustomTabsService;->ICustomTabsCallback:Lo/getMaxAvailableHeight;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    invoke-virtual {p1}, Lo/onItemHoverExit;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method
