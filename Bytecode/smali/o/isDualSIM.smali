.class public final Lo/isDualSIM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPermissions;


# instance fields
.field private ICustomTabsCallback:J

.field private final extraCallback:Lo/DreamAppGlideModule;

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/CryptLib;

.field private onRelationshipValidationResult:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lo/DreamAppGlideModule;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object v0, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    return-void
.end method


# virtual methods
.method public final extraCallback(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    .line 72
    iput-boolean p3, p0, Lo/isDualSIM;->onNavigationEvent:Z

    .line 73
    iput-wide p1, p0, Lo/isDualSIM;->ICustomTabsCallback:J

    const/4 p1, 0x0

    .line 74
    iput p1, p0, Lo/isDualSIM;->onMessageChannelReady:I

    .line 75
    iput p1, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lo/isDualSIM;->onNavigationEvent:Z

    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 7

    .line 80
    iget-boolean v0, p0, Lo/isDualSIM;->onNavigationEvent:Z

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    .line 84
    iget v1, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 86
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 87
    iget-object v3, p1, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v4

    iget-object v5, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    iget-object v5, v5, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v6, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    iget v3, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    .line 91
    iget-object v1, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    const/16 v1, 0x49

    .line 92
    iget-object v4, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x44

    iget-object v4, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    if-ne v1, v4, :cond_2

    const/16 v1, 0x33

    iget-object v4, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    .line 93
    invoke-virtual {v4}, Lo/DreamAppGlideModule;->onRelationshipValidationResult()I

    move-result v4

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    iget-object v1, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    .line 99
    iget-object v1, p0, Lo/isDualSIM;->extraCallback:Lo/DreamAppGlideModule;

    invoke-virtual {v1}, Lo/DreamAppGlideModule;->extraCommand()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lo/isDualSIM;->onMessageChannelReady:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 94
    invoke-static {p1, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-boolean v3, p0, Lo/isDualSIM;->onNavigationEvent:Z

    return-void

    .line 103
    :cond_3
    :goto_1
    iget v1, p0, Lo/isDualSIM;->onMessageChannelReady:I

    iget v2, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 104
    iget-object v1, p0, Lo/isDualSIM;->onPostMessage:Lo/CryptLib;

    invoke-interface {v1, p1, v0}, Lo/CryptLib;->extraCallback(Lo/DreamAppGlideModule;I)V

    .line 105
    iget p1, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onPostMessage()V
    .locals 8

    .line 110
    iget-boolean v0, p0, Lo/isDualSIM;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lo/isDualSIM;->onMessageChannelReady:I

    if-eqz v5, :cond_1

    iget v0, p0, Lo/isDualSIM;->onRelationshipValidationResult:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lo/isDualSIM;->onPostMessage:Lo/CryptLib;

    iget-wide v2, p0, Lo/isDualSIM;->ICustomTabsCallback:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lo/CryptLib;->onMessageChannelReady(JIIILo/CryptLib$extraCallback;)V

    const/4 v0, 0x0

    .line 114
    iput-boolean v0, p0, Lo/isDualSIM;->onNavigationEvent:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 3

    .line 61
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->extraCallback()V

    .line 62
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onMessageChannelReady()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lo/ExceptionTracker;->onPostMessage(II)Lo/CryptLib;

    move-result-object p1

    iput-object p1, p0, Lo/isDualSIM;->onPostMessage:Lo/CryptLib;

    .line 63
    invoke-virtual {p2}, Lo/trackApiError$onMessageChannelReady;->onNavigationEvent()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "application/id3"

    const/4 v2, -0x1

    invoke-static {p2, v1, v0, v2, v0}, Lo/p$a;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILo/generateLink;)Lo/p$a;

    move-result-object p2

    invoke-interface {p1, p2}, Lo/CryptLib;->onPostMessage(Lo/p$a;)V

    return-void
.end method
