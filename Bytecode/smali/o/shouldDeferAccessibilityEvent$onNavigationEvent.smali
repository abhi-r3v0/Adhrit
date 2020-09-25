.class public final Lo/shouldDeferAccessibilityEvent$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasGapsToFix$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/shouldDeferAccessibilityEvent;-><init>()V
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
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsFragment$clickListener$1",
        "Lcom/dreamplug/utils/list/DiffAwareAdapter$OnItemClickListener;",
        "onClick",
        "",
        "type",
        "",
        "data",
        "Lcom/dreamplug/utils/list/ListItem;",
        "holder",
        "Lcom/dreamplug/utils/list/DiffAwareHolder;",
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
.field private synthetic onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;


# direct methods
.method constructor <init>(Lo/shouldDeferAccessibilityEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
    .locals 3

    const-string/jumbo p3, "type"

    invoke-static {p1, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "data"

    invoke-static {p2, p3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p3, "win_details_card_cta"

    .line 74
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 75
    instance-of p1, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    check-cast p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 1010
    iget-object p2, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    .line 1025
    iget-object p2, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 76
    invoke-static {p1, p2}, Lo/shouldDeferAccessibilityEvent;->onMessageChannelReady(Lo/shouldDeferAccessibilityEvent;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    return-void

    :sswitch_1
    const-string/jumbo p3, "win_details_notify_opt_out"

    .line 92
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 93
    instance-of p1, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz p1, :cond_2

    .line 94
    check-cast p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 3010
    iget-object p1, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz p1, :cond_0

    .line 3043
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsService:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_0

    .line 3050
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 95
    iget-object p2, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p2, v0, p1}, Lo/shouldDeferAccessibilityEvent;->onPostMessage(Lo/shouldDeferAccessibilityEvent;ZLjava/lang/String;)V

    :cond_0
    return-void

    :sswitch_2
    const-string/jumbo p3, "win_details_notify_opt_in"

    .line 84
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 85
    instance-of p1, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    if-eqz p1, :cond_2

    .line 86
    check-cast p2, Lo/processAdapterUpdatesAndSetAnimationFlags;

    .line 2010
    iget-object p1, p2, Lo/processAdapterUpdatesAndSetAnimationFlags;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;

    if-eqz p1, :cond_1

    .line 2041
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinDetailsItem;->ICustomTabsCallback$Stub$Proxy:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_1

    .line 2050
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;->ICustomTabsCallback:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 87
    iget-object p3, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p3, v1, p1}, Lo/shouldDeferAccessibilityEvent;->onPostMessage(Lo/shouldDeferAccessibilityEvent;ZLjava/lang/String;)V

    .line 88
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p1, p2}, Lo/shouldDeferAccessibilityEvent;->extraCallback(Lo/shouldDeferAccessibilityEvent;Lo/processAdapterUpdatesAndSetAnimationFlags;)V

    :cond_1
    return-void

    :sswitch_3
    const-string p3, "output_cta_clicked"

    .line 78
    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 79
    instance-of p1, p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    check-cast p2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    invoke-static {p1, p2}, Lo/shouldDeferAccessibilityEvent;->onMessageChannelReady(Lo/shouldDeferAccessibilityEvent;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;)V

    return-void

    :sswitch_4
    const-string/jumbo p2, "win_details_notify_timer_end"

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p1}, Lo/shouldDeferAccessibilityEvent;->ICustomTabsCallback$Stub(Lo/shouldDeferAccessibilityEvent;)Lo/saveFocusInfo;

    move-result-object p1

    iget-object p2, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p2}, Lo/shouldDeferAccessibilityEvent;->onRelationshipValidationResult(Lo/shouldDeferAccessibilityEvent;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lo/shouldDeferAccessibilityEvent$onNavigationEvent;->onMessageChannelReady:Lo/shouldDeferAccessibilityEvent;

    invoke-static {p3}, Lo/shouldDeferAccessibilityEvent;->asBinder(Lo/shouldDeferAccessibilityEvent;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "id"

    invoke-static {p3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4058
    iput v1, p1, Lo/saveFocusInfo;->onTransact:I

    .line 4059
    iput-boolean v1, p1, Lo/saveFocusInfo;->onRelationshipValidationResult:Z

    .line 4060
    iput-boolean v0, p1, Lo/saveFocusInfo;->ICustomTabsCallback$Stub:Z

    .line 4061
    iget-object v0, p1, Lo/saveFocusInfo;->ICustomTabsCallback$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 3066
    invoke-virtual {p1, p2, p3}, Lo/saveFocusInfo;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x16580d35 -> :sswitch_4
        -0x4dc5946 -> :sswitch_3
        0x1330dc87 -> :sswitch_2
        0x52eacc2c -> :sswitch_1
        0x6fc817c1 -> :sswitch_0
    .end sparse-switch
.end method
