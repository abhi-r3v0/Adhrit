.class public final Lo/getChildFragmentManager$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildFragmentManager;->extraCallback(Landroid/app/Application;Ljava/util/Map;Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V
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
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/dreamplug/fabrik/helper/onelink/OnelinkUtils$generate$responseListener$1",
        "Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;",
        "onResponse",
        "",
        "message",
        "",
        "onResponseError",
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
.field private synthetic onPostMessage:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;


# direct methods
.method constructor <init>(Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lo/getChildFragmentManager$onMessageChannelReady;->onPostMessage:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/String;)V
    .locals 4

    const-string v0, "invite_link_create_success"

    .line 38
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 39
    iget-object v0, p0, Lo/getChildFragmentManager$onMessageChannelReady;->onPostMessage:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v1, Lo/isInLayout;->onReceiveResult:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x4d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-string v2, "https://cred.onelink.me/spQx/"

    const-string v3, "https://app.cred.club/spQx/"

    .line 1075
    invoke-static {p1, v2, v3, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 39
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public final onResponseError(Ljava/lang/String;)V
    .locals 4

    const-string v0, "invite_link_create_failure"

    .line 43
    invoke-static {v0}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 44
    iget-object v0, p0, Lo/getChildFragmentManager$onMessageChannelReady;->onPostMessage:Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;

    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v1, Lo/isInLayout;->onReceiveResult:Lo/isAdded;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x4d

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    const-string v2, "https://cred.onelink.me/spQx/"

    const-string v3, "https://app.cred.club/spQx/"

    .line 2075
    invoke-static {p1, v2, v3, v1}, Lo/childWrites;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 44
    :cond_1
    :goto_0
    invoke-interface {v0, p1}, Lcom/appsflyer/CreateOneLinkHttpTask$ResponseListener;->onResponseError(Ljava/lang/String;)V

    return-void
.end method
