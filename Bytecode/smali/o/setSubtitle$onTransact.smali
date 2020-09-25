.class public abstract Lo/setSubtitle$onTransact;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onTransact"
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/CharSequence;

.field onMessageChannelReady:Ljava/lang/CharSequence;

.field onNavigationEvent:Z

.field protected onPostMessage:Lo/setSubtitle$ICustomTabsCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1768
    iput-boolean v0, p0, Lo/setSubtitle$onTransact;->onNavigationEvent:Z

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/setIconUri;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onMessageChannelReady(Lo/setIconUri;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onMessageChannelReady(Lo/setSubtitle$ICustomTabsCallback;)V
    .locals 1

    .line 1771
    iget-object v0, p0, Lo/setSubtitle$onTransact;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    if-eq v0, p1, :cond_0

    .line 1772
    iput-object p1, p0, Lo/setSubtitle$onTransact;->onPostMessage:Lo/setSubtitle$ICustomTabsCallback;

    if-eqz p1, :cond_0

    .line 1774
    invoke-virtual {p1, p0}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;

    :cond_0
    return-void
.end method

.method public onNavigationEvent(Lo/setIconUri;)Landroid/widget/RemoteViews;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onPostMessage(Lo/setIconUri;)V
    .locals 0

    return-void
.end method
