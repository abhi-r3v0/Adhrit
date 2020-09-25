.class public final Lo/PlaybackStateCompat$CustomAction$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setActions;


# instance fields
.field private final onMessageChannelReady:Lo/getSupportParentActivityIntent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSupportParentActivityIntent<",
            "Lo/setActions$ICustomTabsCallback$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/setActive;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setActive<",
            "Lo/setActions$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lo/setActive;

    invoke-direct {v0}, Lo/setActive;-><init>()V

    iput-object v0, p0, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage:Lo/setActive;

    .line 41
    invoke-static {}, Lo/getSupportParentActivityIntent;->onNavigationEvent()Lo/getSupportParentActivityIntent;

    move-result-object v0

    iput-object v0, p0, Lo/PlaybackStateCompat$CustomAction$Builder;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 43
    sget-object v0, Lo/setActions;->extraCallback:Lo/setActions$ICustomTabsCallback$onNavigationEvent;

    invoke-virtual {p0, v0}, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage(Lo/setActions$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/setActions$ICustomTabsCallback;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$Builder;->onPostMessage:Lo/setActive;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 65
    instance-of v0, p1, Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$Builder;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    check-cast p1, Lo/setActions$ICustomTabsCallback$onMessageChannelReady;

    invoke-virtual {v0, p1}, Lo/getSupportParentActivityIntent;->ICustomTabsCallback(Ljava/lang/Object;)Z

    return-void

    .line 67
    :cond_0
    instance-of v0, p1, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;

    if-eqz v0, :cond_1

    .line 68
    check-cast p1, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;

    .line 69
    iget-object v0, p0, Lo/PlaybackStateCompat$CustomAction$Builder;->onMessageChannelReady:Lo/getSupportParentActivityIntent;

    .line 1139
    iget-object p1, p1, Lo/setActions$ICustomTabsCallback$ICustomTabsCallback;->ICustomTabsCallback:Ljava/lang/Throwable;

    .line 69
    invoke-virtual {v0, p1}, Lo/getSupportParentActivityIntent;->onMessageChannelReady(Ljava/lang/Throwable;)Z

    :cond_1
    return-void
.end method
