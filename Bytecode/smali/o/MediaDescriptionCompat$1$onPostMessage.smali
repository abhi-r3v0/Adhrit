.class final Lo/MediaDescriptionCompat$1$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaDescriptionCompat$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Landroid/app/Activity;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 178
    iput-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->ICustomTabsCallback:Z

    .line 179
    iput-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onNavigationEvent:Z

    .line 180
    iput-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onMessageChannelReady:Z

    .line 183
    iput-object p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->extraCallback:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 228
    iget-object v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->extraCallback:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    .line 232
    iput-object p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->extraCallback:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 206
    iget-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onPostMessage:Ljava/lang/Object;

    .line 210
    invoke-static {v0, p1}, Lo/MediaDescriptionCompat$1;->onPostMessage(Ljava/lang/Object;Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 211
    iput-boolean p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onMessageChannelReady:Z

    const/4 p1, 0x0

    .line 213
    iput-object p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->onPostMessage:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->extraCallback:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    .line 196
    iput-boolean p1, p0, Lo/MediaDescriptionCompat$1$onPostMessage;->ICustomTabsCallback:Z

    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
