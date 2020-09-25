.class final Lo/setHandler$onPostMessage;
.super Landroid/view/animation/AnimationSet;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field private final extraCallback:Landroid/view/ViewGroup;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field private onPostMessage:Z


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 263
    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onNavigationEvent:Z

    .line 264
    iput-object p2, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    .line 265
    iput-object p3, p0, Lo/setHandler$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    .line 266
    invoke-virtual {p0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 269
    iget-object p1, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    const/4 v0, 0x1

    .line 274
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onNavigationEvent:Z

    .line 275
    iget-boolean v1, p0, Lo/setHandler$onPostMessage;->onPostMessage:Z

    if-eqz v1, :cond_1

    .line 276
    iget-boolean p1, p0, Lo/setHandler$onPostMessage;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 278
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onPostMessage:Z

    .line 281
    iget-object p1, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    :cond_2
    return v0
.end method

.method public final getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    const/4 v0, 0x1

    .line 289
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onNavigationEvent:Z

    .line 290
    iget-boolean v1, p0, Lo/setHandler$onPostMessage;->onPostMessage:Z

    if-eqz v1, :cond_1

    .line 291
    iget-boolean p1, p0, Lo/setHandler$onPostMessage;->onMessageChannelReady:Z

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 293
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    if-nez p1, :cond_2

    .line 295
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onPostMessage:Z

    .line 296
    iget-object p1, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    :cond_2
    return v0
.end method

.method public final run()V
    .locals 2

    .line 303
    iget-boolean v0, p0, Lo/setHandler$onPostMessage;->onPostMessage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lo/setHandler$onPostMessage;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onNavigationEvent:Z

    .line 306
    iget-object v0, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 308
    :cond_0
    iget-object v0, p0, Lo/setHandler$onPostMessage;->extraCallback:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/setHandler$onPostMessage;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 309
    iput-boolean v0, p0, Lo/setHandler$onPostMessage;->onMessageChannelReady:Z

    return-void
.end method
