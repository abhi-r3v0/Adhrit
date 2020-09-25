.class final Lo/onAttachedFromWindow$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getMinWidthMinor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAttachedFromWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field extraCallback:Landroid/graphics/Bitmap$Config;

.field onMessageChannelReady:I

.field private final onPostMessage:Lo/onAttachedFromWindow$extraCallback;


# direct methods
.method public constructor <init>(Lo/onAttachedFromWindow$extraCallback;)V
    .locals 0

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->onPostMessage:Lo/onAttachedFromWindow$extraCallback;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 230
    instance-of v0, p1, Lo/onAttachedFromWindow$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    check-cast p1, Lo/onAttachedFromWindow$ICustomTabsCallback;

    .line 232
    iget v0, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    iget v2, p1, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lo/getHorizontalOffset;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 239
    iget v0, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    mul-int/lit8 v0, v0, 0x1f

    .line 240
    iget-object v1, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

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

    .line 220
    iget-object v0, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->onPostMessage:Lo/onAttachedFromWindow$extraCallback;

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
    .locals 2

    .line 225
    iget v0, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->onMessageChannelReady:I

    iget-object v1, p0, Lo/onAttachedFromWindow$ICustomTabsCallback;->extraCallback:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lo/onAttachedFromWindow;->ICustomTabsCallback(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
