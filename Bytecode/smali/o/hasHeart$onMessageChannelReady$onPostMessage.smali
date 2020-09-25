.class public Lo/hasHeart$onMessageChannelReady$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasHeart$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private final onPostMessage:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onPostMessage:Landroid/text/TextPaint;

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    .line 119
    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onMessageChannelReady:I

    .line 120
    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 122
    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onMessageChannelReady:I

    .line 124
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_1

    .line 125
    sget-object p1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    return-void
.end method


# virtual methods
.method public extraCallback(I)Lo/hasHeart$onMessageChannelReady$onPostMessage;
    .locals 0

    .line 163
    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    return-object p0
.end method

.method public onMessageChannelReady(I)Lo/hasHeart$onMessageChannelReady$onPostMessage;
    .locals 0

    .line 145
    iput p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onMessageChannelReady:I

    return-object p0
.end method

.method public onMessageChannelReady(Landroid/text/TextDirectionHeuristic;)Lo/hasHeart$onMessageChannelReady$onPostMessage;
    .locals 0

    .line 181
    iput-object p1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public onMessageChannelReady()Lo/hasHeart$onMessageChannelReady;
    .locals 5

    .line 191
    new-instance v0, Lo/hasHeart$onMessageChannelReady;

    iget-object v1, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onPostMessage:Landroid/text/TextPaint;

    iget-object v2, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->ICustomTabsCallback:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onMessageChannelReady:I

    iget v4, p0, Lo/hasHeart$onMessageChannelReady$onPostMessage;->onNavigationEvent:I

    invoke-direct {v0, v1, v2, v3, v4}, Lo/hasHeart$onMessageChannelReady;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method
