.class public final Lo/getItem;
.super Lo/AudioAttributesImplBaseParcelizer;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private mayLaunchUrl:Lo/MediaBrowserCompat;

.field public updateVisuals:Lo/AudioAttributesImplBaseParcelizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/AudioAttributesImplBaseParcelizer;Lo/MediaBrowserCompat;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object p2, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    .line 46
    iput-object p3, p0, Lo/getItem;->mayLaunchUrl:Lo/MediaBrowserCompat;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback()Z

    move-result v0

    return v0
.end method

.method final ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    .line 91
    invoke-virtual {v0, p1, p2}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/AudioAttributesImplBaseParcelizer;Landroid/view/MenuItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final ICustomTabsCallback(Lo/MediaBrowserCompat;)Z
    .locals 1

    .line 138
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(Lo/MediaBrowserCompat;)Z

    move-result p1

    return p1
.end method

.method public final asBinder()Lo/AudioAttributesImplBaseParcelizer;
    .locals 1

    .line 85
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->asBinder()Lo/AudioAttributesImplBaseParcelizer;

    move-result-object v0

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 3

    .line 143
    iget-object v0, p0, Lo/getItem;->mayLaunchUrl:Lo/MediaBrowserCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/MediaBrowserCompat;->getItemId()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 147
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .line 75
    iget-object v0, p0, Lo/getItem;->mayLaunchUrl:Lo/MediaBrowserCompat;

    return-object v0
.end method

.method public final onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/AudioAttributesImplBaseParcelizer$extraCallback;)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady()Z

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Lo/MediaBrowserCompat;)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onMessageChannelReady(Lo/MediaBrowserCompat;)Z

    move-result p1

    return p1
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0}, Lo/AudioAttributesImplBaseParcelizer;->onPostMessage()Z

    move-result v0

    return v0
.end method

.method public final setGroupDividerEnabled(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->setGroupDividerEnabled(Z)V

    return-void
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 0

    .line 113
    invoke-super {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->ICustomTabsCallback(I)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 0

    .line 123
    invoke-super {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(I)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 118
    invoke-super {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->extraCallback(Ljava/lang/CharSequence;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 0

    .line 128
    invoke-super {p0, p1}, Lo/AudioAttributesImplBaseParcelizer;->onNavigationEvent(Landroid/view/View;)Lo/AudioAttributesImplBaseParcelizer;

    move-result-object p1

    check-cast p1, Landroid/view/SubMenu;

    return-object p1
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/getItem;->mayLaunchUrl:Lo/MediaBrowserCompat;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat;->setIcon(I)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 96
    iget-object v0, p0, Lo/getItem;->mayLaunchUrl:Lo/MediaBrowserCompat;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-object p0
.end method

.method public final setQwertyMode(Z)V
    .locals 1

    .line 51
    iget-object v0, p0, Lo/getItem;->updateVisuals:Lo/AudioAttributesImplBaseParcelizer;

    invoke-virtual {v0, p1}, Lo/AudioAttributesImplBaseParcelizer;->setQwertyMode(Z)V

    return-void
.end method
