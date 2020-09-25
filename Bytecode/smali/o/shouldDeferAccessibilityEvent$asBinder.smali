.class final Lo/shouldDeferAccessibilityEvent$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/shouldDeferAccessibilityEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "dialog",
        "Landroid/content/DialogInterface;",
        "kotlin.jvm.PlatformType",
        "<anonymous parameter 1>",
        "",
        "onClick",
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsFragment$handleNotificationPermission$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 249
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1010
    iget-object p1, p1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz p1, :cond_6

    .line 1041
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_6

    .line 1050
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_6

    .line 250
    iget-object p2, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p2}, Lo/shouldDeferAccessibilityEvent;->ICustomTabsCallback(Lo/shouldDeferAccessibilityEvent;)Lo/setActive;

    move-result-object p2

    new-instance v0, Lo/throwIfInMutationOperation;

    sget-object v1, Lo/isComputingLayout;->onPostMessage:Lo/isComputingLayout;

    invoke-direct {v0, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 251
    iget-object p2, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lo/shouldDeferAccessibilityEvent;->onPostMessage(Lo/shouldDeferAccessibilityEvent;ZLjava/lang/String;)V

    const/4 p1, 0x6

    new-array p2, p1, [Lo/addWrite;

    .line 253
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v1, :cond_0

    .line 2021
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 2043
    :goto_0
    new-instance v3, Lo/addWrite;

    const-string v4, "card_id"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v0

    const/4 v0, 0x1

    .line 254
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3010
    iget v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 254
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 3043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v4, "position_vertical"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v0

    const/4 v0, 0x2

    .line 255
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v1, v2

    .line 4043
    :goto_2
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v0

    const/4 v0, 0x3

    .line 256
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 5010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v1, :cond_3

    .line 5039
    iget-object v2, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    :cond_3
    if-nez v2, :cond_4

    const-string v1, "N"

    goto :goto_3

    :cond_4
    const-string v1, "Y"

    .line 5043
    :goto_3
    new-instance v2, Lo/addWrite;

    const-string v3, "interested_count_displayed"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    const/4 v0, 0x4

    .line 257
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$asBinder;->extraCallback:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 6010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v1, :cond_5

    .line 6039
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    if-eqz v1, :cond_5

    .line 6087
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;->ICustomTabsCallback:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 257
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x0

    .line 258
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 7043
    new-instance v2, Lo/addWrite;

    const-string v3, "interested_count"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    const/4 v0, 0x5

    .line 8043
    new-instance v1, Lo/addWrite;

    const-string v2, "action"

    const-string v3, "later"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    const-string v0, "pairs"

    .line 252
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "notify_me_permission_popup_click"

    .line 252
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    :cond_6
    return-void
.end method
