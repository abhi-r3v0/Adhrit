.class public final Lo/onDestroy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onDestroy$extraCallback;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/lang/String;


# instance fields
.field public ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

.field public ICustomTabsCallback$Stub$Proxy:J

.field public ICustomTabsService:Lo/getPlaybackSpeed;

.field public asBinder:J

.field public asInterface:Lo/PlaybackStateCompat$Builder;

.field public extraCallback:Ljava/lang/String;

.field public extraCommand:J

.field public getInterfaceDescriptor:I

.field public mayLaunchUrl:J

.field public newSession:J

.field public onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

.field public onNavigationEvent:Ljava/lang/String;

.field public onPostMessage:Ljava/lang/String;

.field public onRelationshipValidationResult:J

.field public onTransact:J

.field public requestPostMessageChannel:Z

.field public warmup:Lo/getErrorCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 59
    invoke-static {v0}, Lo/setActiveQueueItemId;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/onDestroy;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v0, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 78
    sget-object v0, Lo/PlaybackStateCompat$Builder;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    iput-object v0, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 82
    sget-object v0, Lo/PlaybackStateCompat$Builder;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    .line 95
    sget-object v0, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iput-object v0, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 103
    sget-object v0, Lo/getPlaybackSpeed;->onNavigationEvent:Lo/getPlaybackSpeed;

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    const-wide/16 v0, 0x7530

    .line 107
    iput-wide v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    const-wide/16 v0, -0x1

    .line 128
    iput-wide v0, p0, Lo/onDestroy;->extraCommand:J

    .line 138
    iput-object p1, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lo/onDestroy;)V
    .locals 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v0, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 78
    sget-object v0, Lo/PlaybackStateCompat$Builder;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    iput-object v0, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 82
    sget-object v0, Lo/PlaybackStateCompat$Builder;->onMessageChannelReady:Lo/PlaybackStateCompat$Builder;

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    .line 95
    sget-object v0, Lo/getErrorCode;->extraCallback:Lo/getErrorCode;

    iput-object v0, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 103
    sget-object v0, Lo/getPlaybackSpeed;->onNavigationEvent:Lo/getPlaybackSpeed;

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    const-wide/16 v0, 0x7530

    .line 107
    iput-wide v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    const-wide/16 v0, -0x1

    .line 128
    iput-wide v0, p0, Lo/onDestroy;->extraCommand:J

    .line 143
    iget-object v0, p1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    iput-object v0, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iput-object v0, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 146
    iget-object v0, p1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    iput-object v0, p0, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 147
    new-instance v0, Lo/PlaybackStateCompat$Builder;

    iget-object v1, p1, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    invoke-direct {v0, v1}, Lo/PlaybackStateCompat$Builder;-><init>(Lo/PlaybackStateCompat$Builder;)V

    iput-object v0, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 148
    new-instance v0, Lo/PlaybackStateCompat$Builder;

    iget-object v1, p1, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    invoke-direct {v0, v1}, Lo/PlaybackStateCompat$Builder;-><init>(Lo/PlaybackStateCompat$Builder;)V

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    .line 149
    iget-wide v0, p1, Lo/onDestroy;->onTransact:J

    iput-wide v0, p0, Lo/onDestroy;->onTransact:J

    .line 150
    iget-wide v0, p1, Lo/onDestroy;->onRelationshipValidationResult:J

    iput-wide v0, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    .line 151
    iget-wide v0, p1, Lo/onDestroy;->asBinder:J

    iput-wide v0, p0, Lo/onDestroy;->asBinder:J

    .line 152
    new-instance v0, Lo/getErrorCode;

    iget-object v1, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-direct {v0, v1}, Lo/getErrorCode;-><init>(Lo/getErrorCode;)V

    iput-object v0, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 153
    iget v0, p1, Lo/onDestroy;->getInterfaceDescriptor:I

    iput v0, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    .line 154
    iget-object v0, p1, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    iput-object v0, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    .line 155
    iget-wide v0, p1, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    .line 156
    iget-wide v0, p1, Lo/onDestroy;->newSession:J

    iput-wide v0, p0, Lo/onDestroy;->newSession:J

    .line 157
    iget-wide v0, p1, Lo/onDestroy;->mayLaunchUrl:J

    iput-wide v0, p0, Lo/onDestroy;->mayLaunchUrl:J

    .line 158
    iget-wide v0, p1, Lo/onDestroy;->extraCommand:J

    iput-wide v0, p0, Lo/onDestroy;->extraCommand:J

    .line 159
    iget-boolean p1, p1, Lo/onDestroy;->requestPostMessageChannel:Z

    iput-boolean p1, p0, Lo/onDestroy;->requestPostMessageChannel:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 304
    :cond_0
    instance-of v1, p1, Lo/onDestroy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 306
    :cond_1
    check-cast p1, Lo/onDestroy;

    .line 308
    iget-wide v3, p0, Lo/onDestroy;->onTransact:J

    iget-wide v5, p1, Lo/onDestroy;->onTransact:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 309
    :cond_2
    iget-wide v3, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    iget-wide v5, p1, Lo/onDestroy;->onRelationshipValidationResult:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 310
    :cond_3
    iget-wide v3, p0, Lo/onDestroy;->asBinder:J

    iget-wide v5, p1, Lo/onDestroy;->asBinder:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 311
    :cond_4
    iget v1, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    iget v3, p1, Lo/onDestroy;->getInterfaceDescriptor:I

    if-eq v1, v3, :cond_5

    return v2

    .line 312
    :cond_5
    iget-wide v3, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    iget-wide v5, p1, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 313
    :cond_6
    iget-wide v3, p0, Lo/onDestroy;->newSession:J

    iget-wide v5, p1, Lo/onDestroy;->newSession:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 314
    :cond_7
    iget-wide v3, p0, Lo/onDestroy;->mayLaunchUrl:J

    iget-wide v5, p1, Lo/onDestroy;->mayLaunchUrl:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 315
    :cond_8
    iget-wide v3, p0, Lo/onDestroy;->extraCommand:J

    iget-wide v5, p1, Lo/onDestroy;->extraCommand:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 316
    :cond_9
    iget-boolean v1, p0, Lo/onDestroy;->requestPostMessageChannel:Z

    iget-boolean v3, p1, Lo/onDestroy;->requestPostMessageChannel:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 317
    :cond_a
    iget-object v1, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    iget-object v3, p1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 318
    :cond_b
    iget-object v1, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    iget-object v3, p1, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    if-eq v1, v3, :cond_c

    return v2

    .line 319
    :cond_c
    iget-object v1, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p1, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 320
    :cond_d
    iget-object v1, p0, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v3, p1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_e
    iget-object v1, p1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_f

    :goto_0
    return v2

    .line 325
    :cond_f
    iget-object v1, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    iget-object v3, p1, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 326
    :cond_10
    iget-object v1, p0, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    iget-object v3, p1, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 327
    :cond_11
    iget-object v1, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    iget-object v3, p1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 328
    :cond_12
    iget-object v1, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    iget-object p1, p1, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    if-ne v1, p1, :cond_13

    return v0

    :cond_13
    return v2
.end method

.method public final hashCode()I
    .locals 6

    .line 333
    iget-object v0, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 334
    iget-object v1, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 335
    iget-object v1, p0, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 336
    iget-object v1, p0, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 337
    iget-object v1, p0, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 338
    iget-object v1, p0, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-wide v1, p0, Lo/onDestroy;->onTransact:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 340
    iget-wide v1, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 341
    iget-wide v1, p0, Lo/onDestroy;->asBinder:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 342
    iget-object v1, p0, Lo/onDestroy;->warmup:Lo/getErrorCode;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 343
    iget v1, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 344
    iget-object v1, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 345
    iget-wide v1, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 346
    iget-wide v1, p0, Lo/onDestroy;->newSession:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 347
    iget-wide v1, p0, Lo/onDestroy;->mayLaunchUrl:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 348
    iget-wide v1, p0, Lo/onDestroy;->extraCommand:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 349
    iget-boolean v1, p0, Lo/onDestroy;->requestPostMessageChannel:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public final onPostMessage()J
    .locals 11

    .line 1183
    iget-object v0, p0, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    sget-object v1, Lo/PlaybackStateCompat$CustomAction$onPostMessage;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 257
    iget-object v0, p0, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    sget-object v1, Lo/getPlaybackSpeed;->onPostMessage:Lo/getPlaybackSpeed;

    if-ne v0, v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    .line 258
    iget-wide v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    iget v2, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_1

    .line 259
    :cond_2
    iget-wide v0, p0, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    long-to-float v0, v0

    iget v1, p0, Lo/onDestroy;->getInterfaceDescriptor:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 260
    :goto_1
    iget-wide v2, p0, Lo/onDestroy;->newSession:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 2179
    :cond_3
    iget-wide v0, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-eqz v6, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_a

    .line 262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 263
    iget-wide v6, p0, Lo/onDestroy;->newSession:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_5

    iget-wide v6, p0, Lo/onDestroy;->onTransact:J

    add-long/2addr v6, v0

    .line 264
    :cond_5
    iget-wide v0, p0, Lo/onDestroy;->asBinder:J

    iget-wide v8, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    cmp-long v10, v0, v8

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :cond_6
    if-eqz v2, :cond_8

    .line 275
    iget-wide v0, p0, Lo/onDestroy;->newSession:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_7

    const-wide/16 v0, -0x1

    iget-wide v2, p0, Lo/onDestroy;->asBinder:J

    mul-long v4, v2, v0

    .line 276
    :cond_7
    iget-wide v0, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    add-long/2addr v6, v0

    add-long/2addr v6, v4

    return-wide v6

    .line 283
    :cond_8
    iget-wide v0, p0, Lo/onDestroy;->newSession:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    iget-wide v4, p0, Lo/onDestroy;->onRelationshipValidationResult:J

    :goto_3
    add-long/2addr v6, v4

    return-wide v6

    .line 289
    :cond_a
    iget-wide v0, p0, Lo/onDestroy;->newSession:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 290
    :cond_b
    iget-wide v2, p0, Lo/onDestroy;->onTransact:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
