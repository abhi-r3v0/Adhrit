.class final Lo/setAllowStacking$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMinWidthMinor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setAllowStacking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final extraCallback:Lo/setAllowStacking$onNavigationEvent;

.field onMessageChannelReady:I

.field onNavigationEvent:Landroid/graphics/Bitmap$Config;

.field onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setAllowStacking$onNavigationEvent;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lo/setAllowStacking$extraCallback;->extraCallback:Lo/setAllowStacking$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 99
    instance-of v0, p1, Lo/setAllowStacking$extraCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    check-cast p1, Lo/setAllowStacking$extraCallback;

    .line 101
    iget v0, p0, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    iget v2, p1, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    iget v2, p1, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 108
    iget v0, p0, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    mul-int/lit8 v0, v0, 0x1f

    .line 109
    iget v1, p0, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 110
    iget-object v1, p0, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 121
    iget-object v0, p0, Lo/setAllowStacking$extraCallback;->extraCallback:Lo/setAllowStacking$onNavigationEvent;

    .line 1019
    iget-object v1, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    .line 1020
    iget-object v0, v0, Lo/ContentFrameLayout;->onPostMessage:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 116
    iget v0, p0, Lo/setAllowStacking$extraCallback;->onMessageChannelReady:I

    iget v1, p0, Lo/setAllowStacking$extraCallback;->onPostMessage:I

    iget-object v2, p0, Lo/setAllowStacking$extraCallback;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lo/setAllowStacking;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
