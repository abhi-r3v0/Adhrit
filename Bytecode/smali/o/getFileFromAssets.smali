.class public final Lo/getFileFromAssets;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/trackApiError;


# instance fields
.field private ICustomTabsCallback:I

.field private asInterface:Z

.field private extraCallback:I

.field private final onMessageChannelReady:Lo/DreamAppGlideModule;

.field private onNavigationEvent:Z

.field private final onPostMessage:Lo/endTransaction;


# direct methods
.method public constructor <init>(Lo/endTransaction;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lo/getFileFromAssets;->onPostMessage:Lo/endTransaction;

    .line 44
    new-instance p1, Lo/DreamAppGlideModule;

    const/16 v0, 0x20

    invoke-direct {p1, v0}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object p1, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 56
    iput-boolean v0, p0, Lo/getFileFromAssets;->asInterface:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lo/getFileFromAssets;->onPostMessage:Lo/endTransaction;

    invoke-interface {v0, p1, p2, p3}, Lo/endTransaction;->onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    const/4 p1, 0x1

    .line 51
    iput-boolean p1, p0, Lo/getFileFromAssets;->asInterface:Z

    return-void
.end method

.method public final onPostMessage(Lo/DreamAppGlideModule;I)V
    .locals 7

    const/4 v0, 0x1

    and-int/2addr p2, v0

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 64
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v2

    .line 65
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    add-int/2addr v3, v2

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 68
    :goto_1
    iget-boolean v2, p0, Lo/getFileFromAssets;->asInterface:Z

    if-eqz v2, :cond_3

    if-nez p2, :cond_2

    return-void

    .line 72
    :cond_2
    iput-boolean v1, p0, Lo/getFileFromAssets;->asInterface:Z

    .line 73
    invoke-virtual {p1, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 74
    iput v1, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    .line 77
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    if-lez p2, :cond_9

    .line 78
    iget p2, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    const/4 v2, 0x3

    if-ge p2, v2, :cond_6

    if-nez p2, :cond_4

    .line 82
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p2

    .line 83
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {p1, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/16 v3, 0xff

    if-ne p2, v3, :cond_4

    .line 86
    iput-boolean v0, p0, Lo/getFileFromAssets;->asInterface:Z

    return-void

    .line 90
    :cond_4
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    iget v3, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    rsub-int/lit8 v3, v3, 0x3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 91
    iget-object v3, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v3, v3, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v4, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    invoke-virtual {p1, v3, v4, p2}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 92
    iget v3, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    add-int/2addr v3, p2

    iput v3, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    if-ne v3, v2, :cond_3

    .line 94
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v2}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 95
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p2, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 96
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result p2

    .line 97
    iget-object v3, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {v3}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v3

    and-int/lit16 v4, p2, 0x80

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    .line 98
    :goto_3
    iput-boolean v4, p0, Lo/getFileFromAssets;->onNavigationEvent:Z

    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x8

    or-int/2addr p2, v3

    add-int/2addr p2, v2

    .line 99
    iput p2, p0, Lo/getFileFromAssets;->extraCallback:I

    .line 101
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {p2}, Lo/DreamAppGlideModule;->extraCallback()I

    move-result p2

    iget v3, p0, Lo/getFileFromAssets;->extraCallback:I

    if-ge p2, v3, :cond_3

    .line 103
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    .line 104
    iget-object v3, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    const/16 v4, 0x1002

    iget v5, p0, Lo/getFileFromAssets;->extraCallback:I

    array-length v6, p2

    shl-int/2addr v6, v0

    .line 105
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 104
    invoke-virtual {v3, v4}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 106
    iget-object v3, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v3, v3, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-static {p2, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    .line 111
    :cond_6
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result p2

    iget v2, p0, Lo/getFileFromAssets;->extraCallback:I

    iget v3, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    sub-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 112
    iget-object v2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object v2, v2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v3, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    invoke-virtual {p1, v2, v3, p2}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 113
    iget v2, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    add-int/2addr v2, p2

    iput v2, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    .line 114
    iget p2, p0, Lo/getFileFromAssets;->extraCallback:I

    if-ne v2, p2, :cond_3

    .line 115
    iget-boolean v2, p0, Lo/getFileFromAssets;->onNavigationEvent:Z

    if-eqz v2, :cond_8

    .line 117
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget-object p2, p2, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v2, p0, Lo/getFileFromAssets;->extraCallback:I

    const/4 v3, -0x1

    invoke-static {p2, v1, v2, v3}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent([BIII)I

    move-result p2

    if-eqz p2, :cond_7

    .line 119
    iput-boolean v0, p0, Lo/getFileFromAssets;->asInterface:Z

    return-void

    .line 122
    :cond_7
    iget-object p2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    iget v2, p0, Lo/getFileFromAssets;->extraCallback:I

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {p2, v2}, Lo/DreamAppGlideModule;->extraCallback(I)V

    goto :goto_4

    .line 125
    :cond_8
    iget-object v2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-virtual {v2, p2}, Lo/DreamAppGlideModule;->extraCallback(I)V

    .line 127
    :goto_4
    iget-object p2, p0, Lo/getFileFromAssets;->onPostMessage:Lo/endTransaction;

    iget-object v2, p0, Lo/getFileFromAssets;->onMessageChannelReady:Lo/DreamAppGlideModule;

    invoke-interface {p2, v2}, Lo/endTransaction;->onPostMessage(Lo/DreamAppGlideModule;)V

    .line 128
    iput v1, p0, Lo/getFileFromAssets;->ICustomTabsCallback:I

    goto/16 :goto_2

    :cond_9
    return-void
.end method
