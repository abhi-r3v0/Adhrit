.class final Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsFragment$handleNotificationPermission$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

.field private synthetic onPostMessage:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/shouldDeferAccessibilityEvent;)V
    .locals 0

    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 235
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 236
    sget-object p1, Lo/detectDisplayOptions;->onPostMessage:Lo/detectDisplayOptions;

    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onPostMessage:Landroid/content/Context;

    const-string p2, "it"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lo/detectDisplayOptions;->onPostMessage(Landroid/content/Context;)V

    const/4 p1, 0x6

    new-array p2, p1, [Lo/addWrite;

    .line 238
    iget-object v0, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v0}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, v0, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 1043
    :goto_0
    new-instance v2, Lo/addWrite;

    const-string v3, "card_id"

    invoke-direct {v2, v3, v0}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    aput-object v2, p2, v0

    const/4 v0, 0x1

    .line 239
    iget-object v2, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v2}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2010
    iget v2, v2, Lo/processAdapterUpdatesAndSetAnimationFlags;->ICustomTabsCallback:I

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 2043
    :goto_1
    new-instance v3, Lo/addWrite;

    const-string v4, "position_vertical"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v0

    const/4 v0, 0x2

    .line 240
    iget-object v2, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v2}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3010
    iget-object v2, v2, Lo/processAdapterUpdatesAndSetAnimationFlags;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v2, v1

    .line 3043
    :goto_2
    new-instance v3, Lo/addWrite;

    const-string v4, "game_id"

    invoke-direct {v3, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p2, v0

    const/4 v0, 0x3

    .line 241
    iget-object v2, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v2}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 4010
    iget-object v2, v2, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v2, :cond_3

    .line 4039
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    :cond_3
    if-nez v1, :cond_4

    const-string v1, "N"

    goto :goto_3

    :cond_4
    const-string v1, "Y"

    .line 4043
    :goto_3
    new-instance v2, Lo/addWrite;

    const-string v3, "interested_count_displayed"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    const/4 v0, 0x4

    .line 242
    iget-object v1, p0, Lo/shouldDeferAccessibilityEvent$onRelationshipValidationResult;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {v1}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;)Lo/processAdapterUpdatesAndSetAnimationFlags;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 5010
    iget-object v1, v1, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz v1, :cond_5

    .line 5039
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;

    if-eqz v1, :cond_5

    .line 5087
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/CounterConfig;->ICustomTabsCallback:Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 242
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    goto :goto_4

    :cond_5
    const-wide/16 v1, 0x0

    .line 243
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 6043
    new-instance v2, Lo/addWrite;

    const-string v3, "interested_count"

    invoke-direct {v2, v3, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, p2, v0

    const/4 v0, 0x5

    .line 7043
    new-instance v1, Lo/addWrite;

    const-string v2, "action"

    const-string/jumbo v3, "settings"

    invoke-direct {v1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, p2, v0

    const-string v0, "pairs"

    .line 237
    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {p1}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result p1

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "notify_me_permission_popup_click"

    .line 237
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method
