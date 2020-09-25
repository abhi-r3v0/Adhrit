.class public final Lo/ensureContentInsets$extraCallback$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setCardBackgroundColor$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ensureContentInsets$extraCallback;->onPostMessage(Landroid/app/Activity;Lo/setCardBackgroundColor;)V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/dreamplug/androidapp/ui/ViewModelAction$AskPermissions$showPermissionDialog$onClick$1",
        "Lcom/dreamplug/androidapp/ui/widget/PermissionInfoDialog$OnItemClickListener;",
        "onClick",
        "",
        "askPermission",
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
.field private synthetic ICustomTabsCallback:Lo/setCardBackgroundColor;

.field private synthetic extraCallback:Lo/ensureContentInsets$extraCallback;

.field private synthetic onNavigationEvent:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lo/ensureContentInsets$extraCallback;Lo/setCardBackgroundColor;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCardBackgroundColor;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->extraCallback:Lo/ensureContentInsets$extraCallback;

    iput-object p2, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/setCardBackgroundColor;

    iput-object p3, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->onNavigationEvent:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Z)V
    .locals 2

    if-eqz p1, :cond_2

    .line 105
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/setCardBackgroundColor;

    .line 1027
    iget-boolean p1, p1, Lo/setCardBackgroundColor;->onMessageChannelReady:Z

    if-eqz p1, :cond_1

    .line 106
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->extraCallback:Lo/ensureContentInsets$extraCallback;

    .line 1087
    iget-object p1, p1, Lo/ensureContentInsets$extraCallback;->onPostMessage:Lo/getServerTime;

    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->extraCallback:Lo/ensureContentInsets$extraCallback;

    iget-object v0, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->onNavigationEvent:Landroid/app/Activity;

    const-string v1, "activity"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1094
    iget-object p1, p1, Lo/ensureContentInsets$extraCallback;->onMessageChannelReady:[Ljava/lang/String;

    const/16 v1, 0x2711

    invoke-static {v0, p1, v1}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 110
    :cond_2
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->onNavigationEvent:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p1, v0}, Lo/fromParcel;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 111
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/setCardBackgroundColor;

    invoke-virtual {p1}, Lo/setCardBackgroundColor;->extraCallback()V

    return-void

    .line 113
    :cond_3
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->ICustomTabsCallback:Lo/setCardBackgroundColor;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 114
    iget-object p1, p0, Lo/ensureContentInsets$extraCallback$onMessageChannelReady;->extraCallback:Lo/ensureContentInsets$extraCallback;

    .line 2087
    iget-object p1, p1, Lo/ensureContentInsets$extraCallback;->extraCallback:Lo/getServerTime;

    if-eqz p1, :cond_4

    .line 114
    invoke-interface {p1}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    :cond_4
    return-void
.end method
