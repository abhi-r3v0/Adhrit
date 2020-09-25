.class public final Lo/sendSMS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/trackApiError;


# instance fields
.field private final ICustomTabsCallback:Lo/PublisherException;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsService:J

.field private asBinder:I

.field private asInterface:I

.field private final extraCallback:Lo/getPermissions;

.field private onMessageChannelReady:Lo/getWaivers;

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:Z

.field private onTransact:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Lo/getPermissions;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    .line 59
    new-instance p1, Lo/PublisherException;

    const/16 v0, 0xa

    new-array v0, v0, [B

    invoke-direct {p1, v0}, Lo/PublisherException;-><init>([B)V

    iput-object p1, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 p1, 0x0

    .line 60
    iput p1, p0, Lo/sendSMS;->onNavigationEvent:I

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 10

    .line 211
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 212
    iput-wide v0, p0, Lo/sendSMS;->ICustomTabsService:J

    .line 213
    iget-boolean v0, p0, Lo/sendSMS;->onTransact:Z

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 215
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    int-to-long v3, v0

    const/16 v0, 0x1e

    shl-long/2addr v3, v0

    .line 216
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 217
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v7, 0xf

    invoke-virtual {v5, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    shl-int/2addr v5, v7

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 218
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 219
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v5

    int-to-long v8, v5

    or-long/2addr v3, v8

    .line 220
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 221
    iget-boolean v5, p0, Lo/sendSMS;->onRelationshipValidationResult:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lo/sendSMS;->ICustomTabsCallback$Stub:Z

    if-eqz v5, :cond_0

    .line 222
    iget-object v5, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v5, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 223
    iget-object v1, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v1, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    int-to-long v1, v1

    shl-long v0, v1, v0

    .line 224
    iget-object v2, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 225
    iget-object v2, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    shl-int/2addr v2, v7

    int-to-long v8, v2

    or-long/2addr v0, v8

    .line 226
    iget-object v2, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 227
    iget-object v2, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v7}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v0, v7

    .line 228
    iget-object v2, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v2, v6}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 234
    iget-object v2, p0, Lo/sendSMS;->onMessageChannelReady:Lo/getWaivers;

    invoke-virtual {v2, v0, v1}, Lo/getWaivers;->extraCallback(J)J

    .line 235
    iput-boolean v6, p0, Lo/sendSMS;->onRelationshipValidationResult:Z

    .line 237
    :cond_0
    iget-object v0, p0, Lo/sendSMS;->onMessageChannelReady:Lo/getWaivers;

    invoke-virtual {v0, v3, v4}, Lo/getWaivers;->extraCallback(J)J

    move-result-wide v0

    iput-wide v0, p0, Lo/sendSMS;->ICustomTabsService:J

    :cond_1
    return-void
.end method

.method private extraCallback()Z
    .locals 6

    .line 181
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/PublisherException;->onMessageChannelReady(I)V

    .line 182
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Unexpected start code prefix: "

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "PesReader"

    invoke-static {v3, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iput v2, p0, Lo/sendSMS;->asBinder:I

    return v1

    .line 189
    :cond_0
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 190
    iget-object v0, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v0

    .line 191
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 192
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    iput-boolean v4, p0, Lo/sendSMS;->warmup:Z

    .line 193
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 194
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    iput-boolean v4, p0, Lo/sendSMS;->onTransact:Z

    .line 195
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4}, Lo/PublisherException;->extraCallback()Z

    move-result v4

    iput-boolean v4, p0, Lo/sendSMS;->ICustomTabsCallback$Stub:Z

    .line 198
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lo/PublisherException;->ICustomTabsCallback(I)V

    .line 199
    iget-object v4, p0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    invoke-virtual {v4, v1}, Lo/PublisherException;->onNavigationEvent(I)I

    move-result v1

    iput v1, p0, Lo/sendSMS;->asInterface:I

    if-nez v0, :cond_1

    .line 202
    iput v2, p0, Lo/sendSMS;->asBinder:I

    goto :goto_0

    :cond_1
    add-int/2addr v0, v5

    add-int/lit8 v0, v0, -0x9

    sub-int/2addr v0, v1

    .line 204
    iput v0, p0, Lo/sendSMS;->asBinder:I

    :goto_0
    return v3
.end method

.method private onNavigationEvent(I)V
    .locals 0

    .line 152
    iput p1, p0, Lo/sendSMS;->onNavigationEvent:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lo/sendSMS;->onPostMessage:I

    return-void
.end method

.method private onPostMessage(Lo/DreamAppGlideModule;[BI)Z
    .locals 3

    .line 166
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v0

    iget v1, p0, Lo/sendSMS;->onPostMessage:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-nez p2, :cond_1

    .line 170
    invoke-virtual {p1, v0}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto :goto_0

    .line 172
    :cond_1
    iget v2, p0, Lo/sendSMS;->onPostMessage:I

    invoke-virtual {p1, p2, v2, v0}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 174
    :goto_0
    iget p1, p0, Lo/sendSMS;->onPostMessage:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/sendSMS;->onPostMessage:I

    if-ne p1, p3, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lo/sendSMS;->onNavigationEvent:I

    .line 75
    iput v0, p0, Lo/sendSMS;->onPostMessage:I

    .line 76
    iput-boolean v0, p0, Lo/sendSMS;->onRelationshipValidationResult:Z

    .line 77
    iget-object v0, p0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    invoke-interface {v0}, Lo/getPermissions;->onNavigationEvent()V

    return-void
.end method

.method public final onNavigationEvent(Lo/getWaivers;Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lo/sendSMS;->onMessageChannelReady:Lo/getWaivers;

    .line 67
    iget-object p1, p0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    invoke-interface {p1, p2, p3}, Lo/getPermissions;->onPostMessage(Lo/ExceptionTracker;Lo/trackApiError$onMessageChannelReady;)V

    return-void
.end method

.method public final onPostMessage(Lo/DreamAppGlideModule;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    and-int/lit8 v0, p2, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    .line 83
    iget v0, p0, Lo/sendSMS;->onNavigationEvent:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_3

    const-string v5, "PesReader"

    if-eq v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    .line 96
    iget v0, p0, Lo/sendSMS;->asBinder:I

    if-eq v0, v1, :cond_0

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Unexpected start indicator: expected "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lo/sendSMS;->asBinder:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " more bytes"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    invoke-interface {v0}, Lo/getPermissions;->onPostMessage()V

    goto :goto_0

    .line 103
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_2
    const-string v0, "Unexpected start indicator reading extended header"

    .line 89
    invoke-static {v5, v0}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move-object v0, p0

    goto :goto_3

    :cond_4
    move-object v0, p0

    .line 108
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    if-lez v5, :cond_e

    .line 109
    iget v5, v0, Lo/sendSMS;->onNavigationEvent:I

    if-eqz v5, :cond_d

    const/4 v6, 0x0

    if-eq v5, v4, :cond_b

    if-eq v5, v3, :cond_9

    if-ne v5, v2, :cond_8

    .line 130
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    .line 131
    iget v7, v0, Lo/sendSMS;->asBinder:I

    if-ne v7, v1, :cond_6

    goto :goto_2

    :cond_6
    sub-int v6, v5, v7

    :goto_2
    if-lez v6, :cond_7

    sub-int/2addr v5, v6

    .line 134
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onNavigationEvent()I

    move-result v6

    add-int/2addr v6, v5

    invoke-virtual {p1, v6}, Lo/DreamAppGlideModule;->onNavigationEvent(I)V

    .line 136
    :cond_7
    iget-object v6, v0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    invoke-interface {v6, p1}, Lo/getPermissions;->onNavigationEvent(Lo/DreamAppGlideModule;)V

    .line 137
    iget v6, v0, Lo/sendSMS;->asBinder:I

    if-eq v6, v1, :cond_5

    sub-int/2addr v6, v5

    .line 138
    iput v6, v0, Lo/sendSMS;->asBinder:I

    if-nez v6, :cond_5

    .line 140
    iget-object v5, v0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    invoke-interface {v5}, Lo/getPermissions;->onPostMessage()V

    .line 105
    :goto_3
    invoke-direct {v0, v4}, Lo/sendSMS;->onNavigationEvent(I)V

    goto :goto_1

    .line 146
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_9
    const/16 v5, 0xa

    .line 119
    iget v7, v0, Lo/sendSMS;->asInterface:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 121
    iget-object v7, v0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v7, v7, Lo/PublisherException;->onMessageChannelReady:[B

    invoke-direct {v0, p1, v7, v5}, Lo/sendSMS;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    iget v7, v0, Lo/sendSMS;->asInterface:I

    .line 122
    invoke-direct {v0, p1, v5, v7}, Lo/sendSMS;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    invoke-direct {v0}, Lo/sendSMS;->ICustomTabsCallback()V

    .line 124
    iget-boolean v5, v0, Lo/sendSMS;->warmup:Z

    if-eqz v5, :cond_a

    const/4 v6, 0x4

    :cond_a
    or-int/2addr p2, v6

    .line 125
    iget-object v5, v0, Lo/sendSMS;->extraCallback:Lo/getPermissions;

    iget-wide v6, v0, Lo/sendSMS;->ICustomTabsService:J

    invoke-interface {v5, v6, v7, p2}, Lo/getPermissions;->extraCallback(JI)V

    .line 126
    invoke-direct {v0, v2}, Lo/sendSMS;->onNavigationEvent(I)V

    goto :goto_1

    .line 114
    :cond_b
    iget-object v5, v0, Lo/sendSMS;->ICustomTabsCallback:Lo/PublisherException;

    iget-object v5, v5, Lo/PublisherException;->onMessageChannelReady:[B

    const/16 v7, 0x9

    invoke-direct {v0, p1, v5, v7}, Lo/sendSMS;->onPostMessage(Lo/DreamAppGlideModule;[BI)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    invoke-direct {v0}, Lo/sendSMS;->extraCallback()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v6, 0x2

    :cond_c
    invoke-direct {v0, v6}, Lo/sendSMS;->onNavigationEvent(I)V

    goto/16 :goto_1

    .line 111
    :cond_d
    invoke-virtual {p1}, Lo/DreamAppGlideModule;->onMessageChannelReady()I

    move-result v5

    invoke-virtual {p1, v5}, Lo/DreamAppGlideModule;->onPostMessage(I)V

    goto/16 :goto_1

    :cond_e
    return-void
.end method
