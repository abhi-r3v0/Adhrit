.class public final Lo/unsubscribe;
.super Lo/subscribe;
.source ""

# interfaces
.implements Landroid/view/SubMenu;


# instance fields
.field private final onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/MediaMetadataCompat$LongKey;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lo/subscribe;-><init>(Landroid/content/Context;Lo/MediaMetadataCompatApi21$Builder;)V

    .line 40
    iput-object p2, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    return-void
.end method


# virtual methods
.method public final clearHeader()V
    .locals 1

    .line 75
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$LongKey;->clearHeader()V

    return-void
.end method

.method public final getItem()Landroid/view/MenuItem;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0}, Lo/MediaMetadataCompat$LongKey;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/compareTo;->onNavigationEvent(Landroid/view/MenuItem;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public final setHeaderIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setHeaderIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 63
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setHeaderIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(I)Landroid/view/SubMenu;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setHeaderTitle(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1

    .line 51
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setHeaderView(Landroid/view/View;)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(I)Landroid/view/SubMenu;
    .locals 1

    .line 80
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setIcon(I)Landroid/view/SubMenu;

    return-object p0
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/unsubscribe;->onMessageChannelReady:Lo/MediaMetadataCompat$LongKey;

    invoke-interface {v0, p1}, Lo/MediaMetadataCompat$LongKey;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/SubMenu;

    return-object p0
.end method
