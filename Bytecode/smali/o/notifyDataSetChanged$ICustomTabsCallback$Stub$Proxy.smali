.class public final Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setFrom$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/main/MainActivity$onCreate$2",
        "Lcom/dreamplug/fabrik/ui/main/widget/BottomNavigationBar$BottomBarItemClick;",
        "onBottomBarItemClick",
        "",
        "id",
        "",
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
.field private synthetic extraCallback:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 165
    :sswitch_0
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    const-string v0, "money"

    invoke-virtual {p1, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Ljava/lang/String;)V

    const-string p1, "navigation_money_click"

    .line 166
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 167
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object p1

    .line 2037
    sget-object v0, Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;->onPostMessage:Lo/onGetChildDrawingOrder$onItemLoaded$onMessageChannelReady;

    check-cast v0, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 3018
    iget-object p1, p1, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_0

    .line 155
    :sswitch_1
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    const-string v0, "lifestyle"

    invoke-virtual {p1, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Ljava/lang/String;)V

    const-string p1, "navigation_rewards_click"

    .line 156
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 157
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object p1

    invoke-static {p1}, Lo/dispatchAnimationStarted;->extraCallback(Lo/dispatchAnimationStarted;)V

    return-void

    .line 150
    :sswitch_2
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    const-string v0, "home"

    invoke-virtual {p1, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Ljava/lang/String;)V

    .line 151
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object p1

    .line 1033
    sget-object v0, Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;->onNavigationEvent:Lo/onGetChildDrawingOrder$onItemLoaded$extraCallback;

    check-cast v0, Lo/onGetChildDrawingOrder$onItemLoaded;

    .line 2018
    iget-object p1, p1, Lo/dispatchAnimationStarted;->ICustomTabsCallback:Lo/setActive;

    new-instance v1, Lo/getThumbTintList;

    invoke-direct {v1, v0}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const-string p1, "navigation_home_click"

    .line 152
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void

    .line 160
    :sswitch_3
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    const-string v0, "cards"

    invoke-virtual {p1, v0}, Lo/notifyDataSetChanged;->onMessageChannelReady(Ljava/lang/String;)V

    const-string p1, "navigation_cards_click"

    .line 161
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 162
    iget-object p1, p0, Lo/notifyDataSetChanged$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lo/notifyDataSetChanged;

    invoke-static {p1}, Lo/notifyDataSetChanged;->onMessageChannelReady(Lo/notifyDataSetChanged;)Lo/dispatchAnimationStarted;

    move-result-object p1

    new-instance v0, Lo/onDetach$ICustomTabsService;

    const-string v1, "menu_selection"

    invoke-direct {v0, v1}, Lo/onDetach$ICustomTabsService;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lo/dispatchAnimationStarted;->ICustomTabsCallback(Lo/onDetach$ICustomTabsService;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0186 -> :sswitch_3
        0x7f0b042d -> :sswitch_2
        0x7f0b04e3 -> :sswitch_1
        0x7f0b0580 -> :sswitch_0
    .end sparse-switch
.end method
