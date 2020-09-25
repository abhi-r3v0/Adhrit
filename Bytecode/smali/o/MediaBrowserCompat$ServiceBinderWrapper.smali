.class public final Lo/MediaBrowserCompat$ServiceBinderWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;,
        Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;,
        Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/removeSubscription;

.field asBinder:I

.field public asInterface:Lo/onSearchResult;

.field public extraCallback:I

.field public onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public onNavigationEvent:Lo/isEmpty;

.field final onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

.field private onRelationshipValidationResult:I

.field onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/removeSubscription;Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lo/isEmpty;

    invoke-direct {v0, p0}, Lo/isEmpty;-><init>(Lo/MediaBrowserCompat$ServiceBinderWrapper;)V

    iput-object v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    .line 76
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    iput-object v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 77
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    .line 78
    iput v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    .line 87
    iput-object p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 88
    iput-object p2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 175
    iput-object v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v0, 0x0

    .line 176
    iput v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    const/4 v1, -0x1

    .line 177
    iput v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    .line 178
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->extraCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    iput-object v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 179
    iput v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    .line 180
    sget-object v0, Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$onNavigationEvent;

    .line 181
    iget-object v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    invoke-virtual {v0}, Lo/extraCallback$onMessageChannelReady;->extraCallback()V

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 2

    .line 125
    iget-object v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 1643
    iget v0, v0, Lo/removeSubscription;->getExtras:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 128
    :cond_0
    iget v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    if-ltz v0, :cond_1

    iget-object v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 2643
    iget v0, v0, Lo/removeSubscription;->getExtras:I

    if-ne v0, v1, :cond_1

    .line 130
    iget v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    return v0

    .line 132
    :cond_1
    iget v0, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    return v0
.end method

.method public final onPostMessage(Lo/MediaBrowserCompat$ServiceBinderWrapper;IILo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;IZ)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 211
    iput-object p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 212
    iput v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    const/4 p1, -0x1

    .line 213
    iput p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    .line 214
    sget-object p1, Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    iput-object p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    const/4 p1, 0x2

    .line 215
    iput p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    return v0

    :cond_0
    if-nez p6, :cond_e

    if-nez p1, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 4118
    :cond_2
    iget-object p6, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    .line 3272
    iget-object v2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne p6, v2, :cond_6

    .line 3273
    sget-object p6, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne v2, p6, :cond_5

    .line 5112
    iget-object p6, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 6022
    iget p6, p6, Lo/removeSubscription;->connect:I

    if-lez p6, :cond_3

    const/4 p6, 0x1

    goto :goto_1

    :cond_3
    const/4 p6, 0x0

    :goto_1
    if-eqz p6, :cond_1

    .line 6112
    iget-object p6, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 7022
    iget p6, p6, Lo/removeSubscription;->connect:I

    if-lez p6, :cond_4

    const/4 p6, 0x1

    goto :goto_2

    :cond_4
    const/4 p6, 0x0

    :goto_2
    if-nez p6, :cond_5

    goto :goto_0

    :cond_5
    :goto_3
    const/4 v2, 0x1

    goto/16 :goto_a

    .line 3279
    :cond_6
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$4;->onNavigationEvent:[I

    iget-object v3, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3307
    new-instance p1, Ljava/lang/AssertionError;

    iget-object p2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 3295
    :pswitch_1
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq p6, v2, :cond_8

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne p6, v2, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v2, 0x1

    .line 8112
    :goto_5
    iget-object v3, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 3296
    instance-of v3, v3, Lo/getMediaItem;

    if-eqz v3, :cond_d

    if-nez v2, :cond_5

    .line 3297
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne p6, v2, :cond_1

    goto :goto_3

    .line 3287
    :pswitch_2
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq p6, v2, :cond_a

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne p6, v2, :cond_9

    goto :goto_6

    :cond_9
    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v2, 0x1

    .line 7112
    :goto_7
    iget-object v3, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 3288
    instance-of v3, v3, Lo/getMediaItem;

    if-eqz v3, :cond_d

    if-nez v2, :cond_c

    .line 3289
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-ne p6, v2, :cond_b

    goto :goto_8

    :cond_b
    const/4 p6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    const/4 p6, 0x1

    :goto_9
    move v2, p6

    goto :goto_a

    .line 3282
    :pswitch_3
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq p6, v2, :cond_1

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->asBinder:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq p6, v2, :cond_1

    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    if-eq p6, v2, :cond_1

    goto :goto_3

    :cond_d
    :goto_a
    if-nez v2, :cond_e

    return v1

    .line 221
    :cond_e
    iput-object p1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    if-lez p2, :cond_f

    .line 223
    iput p2, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    goto :goto_b

    .line 225
    :cond_f
    iput v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->extraCallback:I

    .line 227
    :goto_b
    iput p3, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onRelationshipValidationResult:I

    .line 228
    iput-object p4, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onTransact:Lo/MediaBrowserCompat$ServiceBinderWrapper$onMessageChannelReady;

    .line 229
    iput p5, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->asBinder:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->ICustomTabsCallback:Lo/removeSubscription;

    .line 8652
    iget-object v1, v1, Lo/removeSubscription;->getSessionToken:Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
