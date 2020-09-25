.class final Lo/p;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final ICustomTabsCallback:J

.field public final asBinder:Z

.field public final extraCallback:J

.field public final onMessageChannelReady:J

.field public final onNavigationEvent:J

.field public final onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

.field public final onRelationshipValidationResult:Z


# direct methods
.method constructor <init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 69
    iput-wide p2, p0, Lo/p;->onNavigationEvent:J

    .line 70
    iput-wide p4, p0, Lo/p;->onMessageChannelReady:J

    .line 71
    iput-wide p6, p0, Lo/p;->ICustomTabsCallback:J

    .line 72
    iput-wide p8, p0, Lo/p;->extraCallback:J

    .line 73
    iput-boolean p10, p0, Lo/p;->onRelationshipValidationResult:Z

    .line 74
    iput-boolean p11, p0, Lo/p;->asBinder:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    check-cast p1, Lo/p;

    .line 120
    iget-wide v2, p0, Lo/p;->onNavigationEvent:J

    iget-wide v4, p1, Lo/p;->onNavigationEvent:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/p;->onMessageChannelReady:J

    iget-wide v4, p1, Lo/p;->onMessageChannelReady:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/p;->ICustomTabsCallback:J

    iget-wide v4, p1, Lo/p;->ICustomTabsCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lo/p;->extraCallback:J

    iget-wide v4, p1, Lo/p;->extraCallback:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-boolean v2, p0, Lo/p;->onRelationshipValidationResult:Z

    iget-boolean v3, p1, Lo/p;->onRelationshipValidationResult:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/p;->asBinder:Z

    iget-boolean v3, p1, Lo/p;->asBinder:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-object p1, p1, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    .line 126
    invoke-static {v2, p1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(J)Lo/p;
    .locals 15

    move-object v0, p0

    .line 99
    iget-wide v1, v0, Lo/p;->onMessageChannelReady:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lo/p;

    iget-object v4, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v5, v0, Lo/p;->onNavigationEvent:J

    iget-wide v9, v0, Lo/p;->ICustomTabsCallback:J

    iget-wide v11, v0, Lo/p;->extraCallback:J

    iget-boolean v13, v0, Lo/p;->onRelationshipValidationResult:Z

    iget-boolean v14, v0, Lo/p;->asBinder:Z

    move-object v3, v1

    move-wide/from16 v7, p1

    invoke-direct/range {v3 .. v14}, Lo/p;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V

    return-object v1
.end method

.method public final hashCode()I
    .locals 3

    .line 132
    iget-object v0, p0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    .line 133
    iget-wide v1, p0, Lo/p;->onNavigationEvent:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 134
    iget-wide v1, p0, Lo/p;->onMessageChannelReady:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 135
    iget-wide v1, p0, Lo/p;->ICustomTabsCallback:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 136
    iget-wide v1, p0, Lo/p;->extraCallback:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 137
    iget-boolean v1, p0, Lo/p;->onRelationshipValidationResult:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget-boolean v1, p0, Lo/p;->asBinder:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady(J)Lo/p;
    .locals 15

    move-object v0, p0

    .line 82
    iget-wide v1, v0, Lo/p;->onNavigationEvent:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lo/p;

    iget-object v4, v0, Lo/p;->onPostMessage:Lo/InstrumentsCompleteJsonAdapter$extraCallback;

    iget-wide v7, v0, Lo/p;->onMessageChannelReady:J

    iget-wide v9, v0, Lo/p;->ICustomTabsCallback:J

    iget-wide v11, v0, Lo/p;->extraCallback:J

    iget-boolean v13, v0, Lo/p;->onRelationshipValidationResult:Z

    iget-boolean v14, v0, Lo/p;->asBinder:Z

    move-object v3, v1

    move-wide/from16 v5, p1

    invoke-direct/range {v3 .. v14}, Lo/p;-><init>(Lo/InstrumentsCompleteJsonAdapter$extraCallback;JJJJZZ)V

    return-object v1
.end method
