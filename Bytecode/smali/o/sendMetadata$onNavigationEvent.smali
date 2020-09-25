.class final Lo/sendMetadata$onNavigationEvent;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private onMessageChannelReady:Z

.field private final onPostMessage:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 186
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lo/sendMetadata$onNavigationEvent;->onMessageChannelReady:Z

    .line 187
    iput-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 201
    iget-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lo/equals;->onPostMessage(Landroid/view/View;F)V

    .line 202
    iget-boolean p1, p0, Lo/sendMetadata$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 192
    iget-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->IPostMessageService$Stub(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    .line 193
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lo/sendMetadata$onNavigationEvent;->onMessageChannelReady:Z

    .line 195
    iget-object p1, p0, Lo/sendMetadata$onNavigationEvent;->onPostMessage:Landroid/view/View;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
