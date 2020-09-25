.class final Lo/setTitleMarginTop$ICustomTabsCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginTop;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/lang/Boolean;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "haveInternet",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/setTitleMarginTop;


# direct methods
.method constructor <init>(Lo/setTitleMarginTop;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/setTitleMarginTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 9

    .line 82
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    .line 1353
    iget-object v0, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const v1, 0x7f0b0544

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1354
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1355
    instance-of p1, v0, Lo/getVerticalMargins;

    if-eqz p1, :cond_2

    .line 1356
    iget-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/setTitleMarginTop;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 1359
    :cond_1
    instance-of p1, v0, Lo/getVerticalMargins;

    if-nez p1, :cond_2

    .line 1360
    iget-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub$Proxy;->onPostMessage:Lo/setTitleMarginTop;

    invoke-static {p1}, Lo/setTitleMarginTop;->extraCallback(Lo/setTitleMarginTop;)Lo/setTitleMarginStart;

    move-result-object p1

    .line 2000
    iget-object p1, p1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setActive;

    .line 1360
    new-instance v0, Lo/getThumbTintList;

    new-instance v8, Lo/setTitleMarginStart$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1e

    const-string v2, "NO_INTERNET_FRAGMENT"

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v0, v8}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
