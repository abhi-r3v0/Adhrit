.class final Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/androidapp/SplashActivity;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;


# direct methods
.method constructor <init>(Lcom/dreamplug/androidapp/SplashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 50
    check-cast p1, Lo/ensureContentInsets;

    if-eqz p1, :cond_3

    .line 1091
    instance-of v0, p1, Lo/ensureContentInsets$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1092
    check-cast p1, Lo/ensureContentInsets$onPostMessage;

    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;

    check-cast v0, Lo/asBinder;

    .line 2043
    invoke-virtual {p1, v0, v1, v1}, Lo/ensureContentInsets$onPostMessage;->onNavigationEvent(Lo/asBinder;Landroidx/fragment/app/Fragment;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1093
    :cond_0
    instance-of v0, p1, Lo/ensureContentInsets$extraCallback;

    if-eqz v0, :cond_2

    .line 1094
    check-cast p1, Lo/ensureContentInsets$extraCallback;

    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;

    move-object v2, v0

    check-cast v2, Landroid/app/Activity;

    invoke-static {v0}, Lcom/dreamplug/androidapp/SplashActivity;->extraCallback(Lcom/dreamplug/androidapp/SplashActivity;)Lo/setCardBackgroundColor;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {p1, v2, v0}, Lo/ensureContentInsets$extraCallback;->onPostMessage(Landroid/app/Activity;Lo/setCardBackgroundColor;)V

    .line 1095
    iget-object v0, p0, Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-static {v0, p1}, Lcom/dreamplug/androidapp/SplashActivity;->onPostMessage(Lcom/dreamplug/androidapp/SplashActivity;Lo/ensureContentInsets$extraCallback;)V

    .line 1098
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/dreamplug/androidapp/SplashActivity$onMessageChannelReady;->onNavigationEvent:Lcom/dreamplug/androidapp/SplashActivity;

    invoke-static {p1}, Lcom/dreamplug/androidapp/SplashActivity;->onMessageChannelReady(Lcom/dreamplug/androidapp/SplashActivity;)Lo/setActive;

    move-result-object p1

    invoke-virtual {p1, v1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method
