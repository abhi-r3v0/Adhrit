.class final Lo/getTitleTextView$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTitleTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getTitleTextView;

.field private synthetic onNavigationEvent:Z


# direct methods
.method constructor <init>(Lo/getTitleTextView;Z)V
    .locals 0

    iput-object p1, p0, Lo/getTitleTextView$asInterface;->extraCallback:Lo/getTitleTextView;

    iput-boolean p2, p0, Lo/getTitleTextView$asInterface;->onNavigationEvent:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lo/getTitleTextView$asInterface;->extraCallback:Lo/getTitleTextView;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 108
    iget-boolean v0, p0, Lo/getTitleTextView$asInterface;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lo/getTitleTextView$asInterface;->extraCallback:Lo/getTitleTextView;

    invoke-static {v0}, Lo/getTitleTextView;->onNavigationEvent(Lo/getTitleTextView;)Lo/getDropDownViewTheme;

    move-result-object v0

    iget-object v0, v0, Lo/getDropDownViewTheme;->extraCallback:Lo/onDestroyView;

    invoke-static {v0}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lo/getTitleTextView$asInterface;->extraCallback:Lo/getTitleTextView;

    invoke-static {v0}, Lo/getTitleTextView;->onNavigationEvent(Lo/getTitleTextView;)Lo/getDropDownViewTheme;

    move-result-object v0

    iget-object v0, v0, Lo/getDropDownViewTheme;->extraCallback:Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    :cond_2
    return-void
.end method
