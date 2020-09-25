.class Lo/MediaSessionCompat$SessionFlags;
.super Lo/MediaSessionCompat$Token;
.source ""

# interfaces
.implements Lo/performClick$extraCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lo/MediaSessionCompat$Token;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static onMessageChannelReady(Landroid/view/ViewGroup;)Lo/MediaSessionCompat$SessionFlags;
    .locals 0

    .line 32
    invoke-static {p0}, Lo/MediaSessionCompat$Token;->onMessageChannelReady(Landroid/view/View;)Lo/MediaSessionCompat$Token;

    move-result-object p0

    check-cast p0, Lo/MediaSessionCompat$SessionFlags;

    return-object p0
.end method


# virtual methods
.method public extraCallback(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lo/MediaSessionCompat$Token;->onMessageChannelReady:Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onPostMessage(Landroid/view/View;)V

    return-void
.end method

.method public onNavigationEvent(Landroid/view/View;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lo/MediaSessionCompat$Token;->onMessageChannelReady:Lo/MediaSessionCompat$Token$ICustomTabsCallback;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Token$ICustomTabsCallback;->onMessageChannelReady(Landroid/view/View;)V

    return-void
.end method
