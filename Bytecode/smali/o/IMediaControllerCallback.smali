.class public abstract Lo/IMediaControllerCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/IMediaControllerCallback$ICustomTabsCallback;,
        Lo/IMediaControllerCallback$onPostMessage;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionProvider(support)"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSubUiVisibilityListener:Lo/IMediaControllerCallback$onPostMessage;

.field private mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lo/IMediaControllerCallback;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/IMediaControllerCallback;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public hasSubMenu()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onCreateActionView()Landroid/view/View;
.end method

.method public onCreateActionView(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 0

    .line 170
    invoke-virtual {p0}, Lo/IMediaControllerCallback;->onCreateActionView()Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onPerformDefaultAction()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareSubMenu(Landroid/view/SubMenu;)V
    .locals 0

    return-void
.end method

.method public overridesItemVisibility()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public refreshVisibility()V
    .locals 1

    .line 206
    iget-object v0, p0, Lo/IMediaControllerCallback;->mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lo/IMediaControllerCallback;->overridesItemVisibility()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lo/IMediaControllerCallback;->mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;

    invoke-virtual {p0}, Lo/IMediaControllerCallback;->isVisible()Z

    invoke-interface {v0}, Lo/IMediaControllerCallback$ICustomTabsCallback;->onMessageChannelReady()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 312
    iput-object v0, p0, Lo/IMediaControllerCallback;->mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;

    .line 313
    iput-object v0, p0, Lo/IMediaControllerCallback;->mSubUiVisibilityListener:Lo/IMediaControllerCallback$onPostMessage;

    return-void
.end method

.method public setSubUiVisibilityListener(Lo/IMediaControllerCallback$onPostMessage;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lo/IMediaControllerCallback;->mSubUiVisibilityListener:Lo/IMediaControllerCallback$onPostMessage;

    return-void
.end method

.method public setVisibilityListener(Lo/IMediaControllerCallback$ICustomTabsCallback;)V
    .locals 2

    .line 299
    iget-object v0, p0, Lo/IMediaControllerCallback;->mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " instance while it is still in use somewhere else?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActionProvider(support)"

    .line 300
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    iput-object p1, p0, Lo/IMediaControllerCallback;->mVisibilityListener:Lo/IMediaControllerCallback$ICustomTabsCallback;

    return-void
.end method

.method public subUiVisibilityChanged(Z)V
    .locals 1

    .line 279
    iget-object v0, p0, Lo/IMediaControllerCallback;->mSubUiVisibilityListener:Lo/IMediaControllerCallback$onPostMessage;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1}, Lo/IMediaControllerCallback$onPostMessage;->onPostMessage(Z)V

    :cond_0
    return-void
.end method
