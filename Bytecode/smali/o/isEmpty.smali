.class public final Lo/isEmpty;
.super Lo/extraCallback$onMessageChannelReady;
.source ""


# instance fields
.field ICustomTabsCallback$Stub:Lo/isEmpty;

.field ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

.field asBinder:I

.field asInterface:F

.field extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field getInterfaceDescriptor:I

.field onNavigationEvent:Lo/isEmpty;

.field public onRelationshipValidationResult:F

.field onTransact:Lo/isEmpty;

.field warmup:Lo/unregisterCallbackMessenger;


# direct methods
.method public constructor <init>(Lo/MediaBrowserCompat$ServiceBinderWrapper;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Lo/extraCallback$onMessageChannelReady;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lo/isEmpty;->asBinder:I

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    const/4 v1, 0x1

    .line 47
    iput v1, p0, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 48
    iput-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    .line 52
    iput-object p1, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-void
.end method

.method private static extraCallback(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "DIRECT"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "CENTER"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "MATCH"

    return-object p0

    :cond_2
    const/4 v0, 0x4

    if-ne p0, v0, :cond_3

    const-string p0, "CHAIN"

    return-object p0

    :cond_3
    const/4 v0, 0x5

    if-ne p0, v0, :cond_4

    const-string p0, "BARRIER"

    return-object p0

    :cond_4
    const-string p0, "UNCONNECTED"

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 8

    .line 110
    iget v0, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    iget v0, p0, Lo/isEmpty;->asBinder:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    if-eqz v0, :cond_3

    .line 117
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v0, v1, :cond_2

    return-void

    .line 120
    :cond_2
    iget v0, p0, Lo/isEmpty;->getInterfaceDescriptor:I

    int-to-float v0, v0

    iget-object v2, p0, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    iget v2, v2, Lo/unregisterCallbackMessenger;->onNavigationEvent:F

    mul-float v0, v0, v2

    iput v0, p0, Lo/isEmpty;->asInterface:F

    .line 122
    :cond_3
    iget-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    if-eqz v0, :cond_4

    .line 123
    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eq v0, v1, :cond_4

    return-void

    .line 128
    :cond_4
    iget v0, p0, Lo/isEmpty;->asBinder:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v0, :cond_5

    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_7

    .line 133
    :cond_5
    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-nez v0, :cond_6

    .line 134
    iput-object p0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 135
    iget v0, p0, Lo/isEmpty;->asInterface:F

    iput v0, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    goto :goto_0

    .line 137
    :cond_6
    iget-object v1, v0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    iput-object v1, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 138
    iget v0, v0, Lo/isEmpty;->onRelationshipValidationResult:F

    iget v1, p0, Lo/isEmpty;->asInterface:F

    add-float/2addr v0, v1

    iput v0, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 140
    :goto_0
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    return-void

    .line 141
    :cond_7
    iget v0, p0, Lo/isEmpty;->asBinder:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v0, :cond_11

    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    if-eqz v0, :cond_11

    iget-object v0, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v0, :cond_11

    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_11

    .line 149
    invoke-static {}, Lo/isPlayable;->onPostMessage()Lo/extraCallback$onNavigationEvent;

    .line 152
    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget-object v0, v0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    iput-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 153
    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v2, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget-object v2, v2, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    iput-object v2, v0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 158
    iget-object v0, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v0, v2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_1
    if-eqz v1, :cond_a

    .line 162
    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v0, v0, Lo/isEmpty;->onRelationshipValidationResult:F

    iget-object v2, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v2, v2, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v2, v2, Lo/isEmpty;->onRelationshipValidationResult:F

    goto :goto_2

    .line 164
    :cond_a
    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v0, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v0, v0, Lo/isEmpty;->onRelationshipValidationResult:F

    iget-object v2, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v2, v2, Lo/isEmpty;->onRelationshipValidationResult:F

    :goto_2
    sub-float/2addr v0, v2

    .line 167
    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    const/16 v5, 0x8

    if-eq v2, v4, :cond_d

    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    sget-object v4, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v2, v4, :cond_b

    goto :goto_4

    .line 172
    :cond_b
    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 1830
    iget v4, v2, Lo/removeSubscription;->getExtras:I

    if-ne v4, v5, :cond_c

    const/4 v2, 0x0

    goto :goto_3

    .line 1833
    :cond_c
    iget v2, v2, Lo/removeSubscription;->INotificationSideChannel:I

    :goto_3
    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 173
    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v2, v2, Lo/removeSubscription;->isConnected:F

    goto :goto_6

    .line 169
    :cond_d
    :goto_4
    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 1773
    iget v4, v2, Lo/removeSubscription;->getExtras:I

    if-ne v4, v5, :cond_e

    const/4 v2, 0x0

    goto :goto_5

    .line 1776
    :cond_e
    iget v2, v2, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    :goto_5
    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 170
    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    iget v2, v2, Lo/removeSubscription;->getServiceComponent:F

    .line 175
    :goto_6
    iget-object v4, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v4}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v4

    .line 176
    iget-object v5, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v5, v5, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v5}, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent()I

    move-result v5

    .line 177
    iget-object v6, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 2144
    iget-object v6, v6, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 177
    iget-object v7, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v7, v7, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 3144
    iget-object v7, v7, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-ne v6, v7, :cond_f

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    goto :goto_7

    :cond_f
    move v3, v4

    :goto_7
    int-to-float v3, v3

    sub-float/2addr v0, v3

    int-to-float v4, v5

    sub-float/2addr v0, v4

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_10

    .line 188
    iget-object v1, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v6, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v6, v6, Lo/isEmpty;->onRelationshipValidationResult:F

    add-float/2addr v6, v4

    mul-float v4, v0, v2

    add-float/2addr v6, v4

    iput v6, v1, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 190
    iget-object v1, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v1, v1, Lo/isEmpty;->onRelationshipValidationResult:F

    sub-float/2addr v1, v3

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v1, v0

    iput v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    goto :goto_8

    .line 192
    :cond_10
    iget-object v1, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v1, v1, Lo/isEmpty;->onRelationshipValidationResult:F

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    add-float/2addr v1, v3

    iput v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 193
    iget-object v1, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v3, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget v3, v3, Lo/isEmpty;->onRelationshipValidationResult:F

    sub-float/2addr v3, v4

    sub-float/2addr v5, v2

    mul-float v0, v0, v5

    sub-float/2addr v3, v0

    iput v3, v1, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 197
    :goto_8
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    .line 198
    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    invoke-virtual {v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    return-void

    .line 199
    :cond_11
    iget v0, p0, Lo/isEmpty;->asBinder:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_12

    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v0, :cond_12

    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    if-eqz v0, :cond_12

    iget-object v0, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    if-eqz v0, :cond_12

    iget v0, v0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-ne v0, v1, :cond_12

    .line 207
    invoke-static {}, Lo/isPlayable;->onPostMessage()Lo/extraCallback$onNavigationEvent;

    .line 210
    iget-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget-object v1, v0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    iput-object v1, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 211
    iget-object v1, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    iget-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    iget-object v3, v2, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    iput-object v3, v1, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 213
    iget v0, v0, Lo/isEmpty;->onRelationshipValidationResult:F

    iget v3, p0, Lo/isEmpty;->asInterface:F

    add-float/2addr v0, v3

    iput v0, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 214
    iget v0, v2, Lo/isEmpty;->onRelationshipValidationResult:F

    iget v2, v1, Lo/isEmpty;->asInterface:F

    add-float/2addr v0, v2

    iput v0, v1, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 216
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    .line 217
    iget-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    invoke-virtual {v0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    return-void

    .line 218
    :cond_12
    iget v0, p0, Lo/isEmpty;->asBinder:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 219
    iget-object v0, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    invoke-virtual {v0}, Lo/removeSubscription;->onMessageChannelReady()V

    :cond_13
    return-void
.end method

.method public final ICustomTabsCallback(Lo/isEmpty;F)V
    .locals 1

    .line 79
    iget v0, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    if-eq v0, p1, :cond_2

    iget v0, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_2

    .line 80
    :cond_0
    iput-object p1, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 81
    iput p2, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 82
    iget p1, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 83
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onNavigationEvent()V

    .line 85
    :cond_1
    invoke-virtual {p0}, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady()V

    :cond_2
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    .line 229
    invoke-super {p0}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    const/4 v1, 0x0

    .line 231
    iput v1, p0, Lo/isEmpty;->asInterface:F

    .line 232
    iput-object v0, p0, Lo/isEmpty;->warmup:Lo/unregisterCallbackMessenger;

    const/4 v2, 0x1

    .line 233
    iput v2, p0, Lo/isEmpty;->getInterfaceDescriptor:I

    .line 234
    iput-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub$Proxy:Lo/unregisterCallbackMessenger;

    .line 236
    iput-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    .line 237
    iput v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    .line 239
    iput-object v0, p0, Lo/isEmpty;->onTransact:Lo/isEmpty;

    const/4 v0, 0x0

    .line 241
    iput v0, p0, Lo/isEmpty;->asBinder:I

    return-void
.end method

.method final onNavigationEvent(Lo/isPlayable;)V
    .locals 4

    .line 304
    iget-object v0, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4095
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asInterface:Lo/onSearchResult;

    .line 306
    iget-object v1, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v1, :cond_0

    .line 307
    iget v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;I)V

    return-void

    .line 309
    :cond_0
    iget-object v1, v1, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v1}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v1

    .line 310
    iget v3, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    add-float/2addr v3, v2

    float-to-int v2, v3

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 68
    iget v0, p0, Lo/extraCallback$onMessageChannelReady;->onMessageChannelReady:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    const-string v1, ", RESOLVED: "

    const-string v2, "["

    if-ne v0, p0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]  type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isEmpty;->asBinder:I

    invoke-static {v1}, Lo/isEmpty;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/isEmpty;->ICustomTabsCallback$Stub:Lo/isEmpty;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isEmpty;->onRelationshipValidationResult:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "] type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isEmpty;->asBinder:I

    .line 73
    invoke-static {v1}, Lo/isEmpty;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/isEmpty;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " UNRESOLVED} type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo/isEmpty;->asBinder:I

    invoke-static {v1}, Lo/isEmpty;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
