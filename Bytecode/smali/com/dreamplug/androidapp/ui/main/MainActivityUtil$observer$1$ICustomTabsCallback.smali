.class final Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback(Lo/toLegacyStreamType;)V
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
        "Lo/ensureContentInsets;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "viewModelAction",
        "Lcom/dreamplug/androidapp/ui/ViewModelAction;",
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
.field private synthetic onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 6

    .line 54
    check-cast p1, Lo/ensureContentInsets;

    if-eqz p1, :cond_4

    .line 1077
    instance-of v0, p1, Lo/ensureContentInsets$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1078
    check-cast p1, Lo/ensureContentInsets$onPostMessage;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 2042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 2043
    invoke-virtual {p1, v0, v1, v1}, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent(Lo/asBinder;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1079
    :cond_0
    instance-of v0, p1, Lo/ensureContentInsets$extraCallback;

    if-eqz v0, :cond_3

    .line 1080
    check-cast p1, Lo/ensureContentInsets$extraCallback;

    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 3042
    iget-object v0, v0, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    .line 1080
    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v2, v2, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 4148
    iget-object v3, v2, Lo/updateHomeAccessibility;->onPostMessage:Lo/setCardBackgroundColor;

    if-nez v3, :cond_1

    .line 4149
    new-instance v3, Lo/setCardBackgroundColor;

    iget-object v4, v2, Lo/updateHomeAccessibility;->onTransact:Lo/asBinder;

    check-cast v4, Landroid/app/Activity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lo/setCardBackgroundColor;-><init>(Landroid/app/Activity;Z)V

    iput-object v3, v2, Lo/updateHomeAccessibility;->onPostMessage:Lo/setCardBackgroundColor;

    .line 4152
    :cond_1
    iget-object v2, v2, Lo/updateHomeAccessibility;->onPostMessage:Lo/setCardBackgroundColor;

    if-nez v2, :cond_2

    .line 1080
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {p1, v0, v2}, Lo/ensureContentInsets$extraCallback;->onPostMessage(Landroid/app/Activity;Lo/setCardBackgroundColor;)V

    .line 1081
    iget-object v0, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object v0, v0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 5042
    iput-object p1, v0, Lo/updateHomeAccessibility;->onMessageChannelReady:Lo/ensureContentInsets$extraCallback;

    .line 1084
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1$ICustomTabsCallback;->onMessageChannelReady:Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;

    iget-object p1, p1, Lcom/dreamplug/androidapp/ui/main/MainActivityUtil$observer$1;->ICustomTabsCallback:Lo/updateHomeAccessibility;

    .line 6042
    iget-object p1, p1, Lo/updateHomeAccessibility;->extraCallback:Lo/setActive;

    .line 1084
    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
