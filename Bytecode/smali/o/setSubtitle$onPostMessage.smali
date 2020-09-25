.class public final Lo/setSubtitle$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setSubtitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/app/PendingIntent;

.field private extraCallback:I

.field private onMessageChannelReady:Landroid/app/PendingIntent;

.field private onNavigationEvent:Landroidx/core/graphics/drawable/IconCompat;

.field private onPostMessage:I

.field private onRelationshipValidationResult:I


# direct methods
.method public static onNavigationEvent(Lo/setSubtitle$onPostMessage;)Landroid/app/Notification$BubbleMetadata;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5516
    :cond_0
    new-instance v0, Landroid/app/Notification$BubbleMetadata$Builder;

    invoke-direct {v0}, Landroid/app/Notification$BubbleMetadata$Builder;-><init>()V

    .line 5518
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->asBinder()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setAutoExpandBubble(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5519
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->onMessageChannelReady()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5520
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->onNavigationEvent()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->ICustomTabsCallback()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5521
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->extraCallback()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5523
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->ICustomTabsCallback$Stub()Z

    move-result v1

    .line 5522
    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setSuppressNotification(Z)Landroid/app/Notification$BubbleMetadata$Builder;

    move-result-object v0

    .line 5525
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->ICustomTabsCallback()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5526
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->ICustomTabsCallback()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeight(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 5529
    :cond_1
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->onPostMessage()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5531
    invoke-virtual {p0}, Lo/setSubtitle$onPostMessage;->onPostMessage()I

    move-result p0

    .line 5530
    invoke-virtual {v0, p0}, Landroid/app/Notification$BubbleMetadata$Builder;->setDesiredHeightResId(I)Landroid/app/Notification$BubbleMetadata$Builder;

    .line 5534
    :cond_2
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata$Builder;->build()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 5470
    iget v0, p0, Lo/setSubtitle$onPostMessage;->extraCallback:I

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 5498
    iget v0, p0, Lo/setSubtitle$onPostMessage;->onRelationshipValidationResult:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final asBinder()Z
    .locals 2

    .line 5489
    iget v0, p0, Lo/setSubtitle$onPostMessage;->onRelationshipValidationResult:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final extraCallback()Landroid/app/PendingIntent;
    .locals 1

    .line 5444
    iget-object v0, p0, Lo/setSubtitle$onPostMessage;->onMessageChannelReady:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final onMessageChannelReady()Landroid/app/PendingIntent;
    .locals 1

    .line 5452
    iget-object v0, p0, Lo/setSubtitle$onPostMessage;->ICustomTabsCallback:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final onNavigationEvent()Landroidx/core/graphics/drawable/IconCompat;
    .locals 1

    .line 5460
    iget-object v0, p0, Lo/setSubtitle$onPostMessage;->onNavigationEvent:Landroidx/core/graphics/drawable/IconCompat;

    return-object v0
.end method

.method public final onPostMessage()I
    .locals 1

    .line 5480
    iget v0, p0, Lo/setSubtitle$onPostMessage;->onPostMessage:I

    return v0
.end method
