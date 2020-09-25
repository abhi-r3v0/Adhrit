.class public final Lo/getMediaItem;
.super Lo/removeSubscription;
.source ""


# instance fields
.field public ICustomTabsCallback:F

.field private MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

.field public handleMessage:I

.field private onConnectionFailed:I

.field public onMessageChannelReady:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Lo/removeSubscription;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 38
    iput v0, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lo/getMediaItem;->onMessageChannelReady:I

    .line 40
    iput v0, p0, Lo/getMediaItem;->handleMessage:I

    .line 42
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lo/getMediaItem;->onConnectionFailed:I

    .line 51
    iget-object v1, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 52
    iget-object v1, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    array-length v1, v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 55
    iget-object v2, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v3, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;
    .locals 2

    .line 137
    sget-object v0, Lo/getMediaItem$1;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 147
    :pswitch_1
    iget v0, p0, Lo/getMediaItem;->onConnectionFailed:I

    if-nez v0, :cond_0

    .line 148
    iget-object p1, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 140
    :pswitch_2
    iget v0, p0, Lo/getMediaItem;->onConnectionFailed:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    iget-object p1, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    return-object p1

    .line 159
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final ICustomTabsCallback(I)V
    .locals 6

    .line 1555
    iget-object p1, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-nez p1, :cond_0

    return-void

    .line 2121
    :cond_0
    iget v0, p0, Lo/getMediaItem;->onConnectionFailed:I

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 218
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 3058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 218
    iget-object v5, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 4058
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 4262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 4263
    iput-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 4264
    iput v3, v0, Lo/isEmpty;->asInterface:F

    .line 4265
    iget-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 5038
    iget-object v5, v5, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 219
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 5058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 219
    iget-object v5, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 6058
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 6262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 6263
    iput-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 6264
    iput v3, v0, Lo/isEmpty;->asInterface:F

    .line 6265
    iget-object v3, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 7038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 220
    iget v0, p0, Lo/getMediaItem;->onMessageChannelReady:I

    if-eq v0, v2, :cond_1

    .line 221
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 7058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 221
    iget-object v1, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 8058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 221
    iget v2, p0, Lo/getMediaItem;->onMessageChannelReady:I

    .line 8262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 8263
    iput-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v2

    .line 8264
    iput v1, v0, Lo/isEmpty;->asInterface:F

    .line 8265
    iget-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 9038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 9058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 222
    iget-object p1, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 10058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 222
    iget v1, p0, Lo/getMediaItem;->onMessageChannelReady:I

    .line 10262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 10263
    iput-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float p1, v1

    .line 10264
    iput p1, v0, Lo/isEmpty;->asInterface:F

    .line 10265
    iget-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 11038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 223
    :cond_1
    iget v0, p0, Lo/getMediaItem;->handleMessage:I

    if-eq v0, v2, :cond_2

    .line 224
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 11058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 224
    iget-object v1, p1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 12058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 224
    iget v2, p0, Lo/getMediaItem;->handleMessage:I

    neg-int v2, v2

    .line 12262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 12263
    iput-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v2

    .line 12264
    iput v1, v0, Lo/isEmpty;->asInterface:F

    .line 12265
    iget-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 13038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 13058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 225
    iget-object p1, p1, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 14058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 225
    iget v1, p0, Lo/getMediaItem;->handleMessage:I

    neg-int v1, v1

    .line 14262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 14263
    iput-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float p1, v1

    .line 14264
    iput p1, v0, Lo/isEmpty;->asInterface:F

    .line 14265
    iget-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 15038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 226
    :cond_2
    iget v0, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lo/removeSubscription;->postMessage()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v1, :cond_6

    .line 227
    iget v0, p1, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    int-to-float v0, v0

    iget v1, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 15058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 228
    iget-object v2, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 16058
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 16262
    iput v4, v1, Lo/isEmpty;->asBinder:I

    .line 16263
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 16264
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 16265
    iget-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 17038
    iget-object v2, v2, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 17058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 229
    iget-object p1, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 18058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 18262
    iput v4, v1, Lo/isEmpty;->asBinder:I

    .line 18263
    iput-object p1, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 18264
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 18265
    iget-object p1, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 19038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 232
    :cond_3
    iget-object v0, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 19058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 232
    iget-object v5, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 20058
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 20262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 20263
    iput-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 20264
    iput v3, v0, Lo/isEmpty;->asInterface:F

    .line 20265
    iget-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 21038
    iget-object v5, v5, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService$Stub:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 21058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 233
    iget-object v5, p1, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 22058
    iget-object v5, v5, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 22262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 22263
    iput-object v5, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 22264
    iput v3, v0, Lo/isEmpty;->asInterface:F

    .line 22265
    iget-object v3, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 23038
    iget-object v3, v3, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 234
    iget v0, p0, Lo/getMediaItem;->onMessageChannelReady:I

    if-eq v0, v2, :cond_4

    .line 235
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 23058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 235
    iget-object v1, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 24058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 235
    iget v2, p0, Lo/getMediaItem;->onMessageChannelReady:I

    .line 24262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 24263
    iput-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v2

    .line 24264
    iput v1, v0, Lo/isEmpty;->asInterface:F

    .line 24265
    iget-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 25038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 25058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 236
    iget-object p1, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 26058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 236
    iget v1, p0, Lo/getMediaItem;->onMessageChannelReady:I

    .line 26262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 26263
    iput-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float p1, v1

    .line 26264
    iput p1, v0, Lo/isEmpty;->asInterface:F

    .line 26265
    iget-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 27038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 237
    :cond_4
    iget v0, p0, Lo/getMediaItem;->handleMessage:I

    if-eq v0, v2, :cond_5

    .line 238
    iget-object v0, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 27058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 238
    iget-object v1, p1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 28058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 238
    iget v2, p0, Lo/getMediaItem;->handleMessage:I

    neg-int v2, v2

    .line 28262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 28263
    iput-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v1, v2

    .line 28264
    iput v1, v0, Lo/isEmpty;->asInterface:F

    .line 28265
    iget-object v1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 29038
    iget-object v1, v1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 29058
    iget-object v0, v0, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 239
    iget-object p1, p1, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 30058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 239
    iget v1, p0, Lo/getMediaItem;->handleMessage:I

    neg-int v1, v1

    .line 30262
    iput v4, v0, Lo/isEmpty;->asBinder:I

    .line 30263
    iput-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float p1, v1

    .line 30264
    iput p1, v0, Lo/isEmpty;->asInterface:F

    .line 30265
    iget-object p1, v0, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 31038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void

    .line 240
    :cond_5
    iget v0, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lo/removeSubscription;->IPostMessageService()Lo/removeSubscription$onNavigationEvent;

    move-result-object v0

    sget-object v1, Lo/removeSubscription$onNavigationEvent;->extraCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v1, :cond_6

    .line 241
    iget v0, p1, Lo/removeSubscription;->INotificationSideChannel:I

    int-to-float v0, v0

    iget v1, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 242
    iget-object v1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 31058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 242
    iget-object v2, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 32058
    iget-object v2, v2, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 32262
    iput v4, v1, Lo/isEmpty;->asBinder:I

    .line 32263
    iput-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    int-to-float v0, v0

    .line 32264
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 32265
    iget-object v2, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 33038
    iget-object v2, v2, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v1, p0, Lo/removeSubscription;->IPostMessageService:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 33058
    iget-object v1, v1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 243
    iget-object p1, p1, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 34058
    iget-object p1, p1, Lo/MediaBrowserCompat$ServiceBinderWrapper;->onNavigationEvent:Lo/isEmpty;

    .line 34262
    iput v4, v1, Lo/isEmpty;->asBinder:I

    .line 34263
    iput-object p1, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 34264
    iput v0, v1, Lo/isEmpty;->asInterface:F

    .line 34265
    iget-object p1, v1, Lo/isEmpty;->onNavigationEvent:Lo/isEmpty;

    .line 35038
    iget-object p1, p1, Lo/extraCallback$onMessageChannelReady;->ICustomTabsCallback:Ljava/util/HashSet;

    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ICustomTabsService$Stub()V
    .locals 5

    .line 36555
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-static {v0}, Lo/isPlayable;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    .line 293
    iget v1, p0, Lo/getMediaItem;->onConnectionFailed:I

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    .line 294
    invoke-virtual {p0, v0}, Lo/removeSubscription;->onMessageChannelReady(I)V

    .line 295
    invoke-virtual {p0, v4}, Lo/removeSubscription;->extraCallback(I)V

    .line 37555
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 37830
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 37833
    :cond_1
    iget v0, v0, Lo/removeSubscription;->INotificationSideChannel:I

    .line 296
    :goto_0
    invoke-virtual {p0, v0}, Lo/removeSubscription;->onPostMessage(I)V

    .line 297
    invoke-virtual {p0, v4}, Lo/removeSubscription;->onNavigationEvent(I)V

    return-void

    .line 299
    :cond_2
    invoke-virtual {p0, v4}, Lo/removeSubscription;->onMessageChannelReady(I)V

    .line 300
    invoke-virtual {p0, v0}, Lo/removeSubscription;->extraCallback(I)V

    .line 38555
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 38773
    iget v1, v0, Lo/removeSubscription;->getExtras:I

    if-ne v1, v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 38776
    :cond_3
    iget v0, v0, Lo/removeSubscription;->IPostMessageService$Stub$Proxy:I

    .line 301
    :goto_1
    invoke-virtual {p0, v0}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 302
    invoke-virtual {p0, v4}, Lo/removeSubscription;->onPostMessage(I)V

    return-void
.end method

.method public final extraCallback(Lo/isPlayable;)V
    .locals 9

    .line 35555
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    .line 250
    check-cast v0, Lo/addSubscription;

    if-nez v0, :cond_0

    return-void

    .line 254
    :cond_0
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onNavigationEvent:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v1}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v1

    .line 255
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->ICustomTabsCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    .line 256
    iget-object v3, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v3, v3, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v3, v3, v5

    sget-object v6, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v3, v6, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 257
    :goto_0
    iget v6, p0, Lo/getMediaItem;->onConnectionFailed:I

    if-nez v6, :cond_3

    .line 258
    sget-object v1, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onPostMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v1}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v1

    .line 259
    sget-object v2, Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;->onMessageChannelReady:Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;

    invoke-virtual {v0, v2}, Lo/removeSubscription;->ICustomTabsCallback(Lo/MediaBrowserCompat$ServiceBinderWrapper$extraCallback;)Lo/MediaBrowserCompat$ServiceBinderWrapper;

    move-result-object v2

    .line 260
    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/removeSubscription;->cancelAll:Lo/removeSubscription;

    iget-object v0, v0, Lo/removeSubscription;->notify:[Lo/removeSubscription$onNavigationEvent;

    aget-object v0, v0, v4

    sget-object v3, Lo/removeSubscription$onNavigationEvent;->ICustomTabsCallback:Lo/removeSubscription$onNavigationEvent;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    move v3, v4

    .line 262
    :cond_3
    iget v0, p0, Lo/getMediaItem;->onMessageChannelReady:I

    const/4 v4, 0x6

    const/4 v6, -0x1

    const/4 v7, 0x5

    if-eq v0, v6, :cond_5

    .line 263
    iget-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v0

    .line 264
    invoke-virtual {p1, v1}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v1

    .line 265
    iget v6, p0, Lo/getMediaItem;->onMessageChannelReady:I

    invoke-virtual {p1, v0, v1, v6, v4}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-eqz v3, :cond_4

    .line 267
    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v5, v7}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_4
    return-void

    .line 269
    :cond_5
    iget v0, p0, Lo/getMediaItem;->handleMessage:I

    if-eq v0, v6, :cond_7

    .line 270
    iget-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v2

    .line 272
    iget v6, p0, Lo/getMediaItem;->handleMessage:I

    neg-int v6, v6

    invoke-virtual {p1, v0, v2, v6, v4}, Lo/isPlayable;->onPostMessage(Lo/onSearchResult;Lo/onSearchResult;II)Lo/getDescription;

    if-eqz v3, :cond_6

    .line 274
    invoke-virtual {p1, v1}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v1

    invoke-virtual {p1, v0, v1, v5, v7}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    .line 275
    invoke-virtual {p1, v2, v0, v5, v7}, Lo/isPlayable;->onNavigationEvent(Lo/onSearchResult;Lo/onSearchResult;II)V

    :cond_6
    return-void

    .line 277
    :cond_7
    iget v0, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    .line 278
    iget-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v4

    .line 279
    invoke-virtual {p1, v1}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v5

    .line 280
    invoke-virtual {p1, v2}, Lo/isPlayable;->extraCallback(Ljava/lang/Object;)Lo/onSearchResult;

    move-result-object v6

    .line 281
    iget v7, p0, Lo/getMediaItem;->ICustomTabsCallback:F

    const/4 v8, 0x0

    move-object v3, p1

    .line 282
    invoke-static/range {v3 .. v8}, Lo/isPlayable;->onPostMessage(Lo/isPlayable;Lo/onSearchResult;Lo/onSearchResult;Lo/onSearchResult;FZ)Lo/getDescription;

    move-result-object v0

    .line 281
    invoke-virtual {p1, v0}, Lo/isPlayable;->ICustomTabsCallback(Lo/getDescription;)V

    :cond_8
    return-void
.end method

.method public final onRelationshipValidationResult(I)V
    .locals 3

    .line 89
    iget v0, p0, Lo/getMediaItem;->onConnectionFailed:I

    if-ne v0, p1, :cond_0

    return-void

    .line 92
    :cond_0
    iput p1, p0, Lo/getMediaItem;->onConnectionFailed:I

    .line 93
    iget-object p1, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 94
    iget p1, p0, Lo/getMediaItem;->onConnectionFailed:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 95
    iget-object p1, p0, Lo/removeSubscription;->requestPostMessageChannel:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object p1, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    goto :goto_0

    .line 97
    :cond_1
    iget-object p1, p0, Lo/removeSubscription;->postMessage:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iput-object p1, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    .line 99
    :goto_0
    iget-object p1, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    array-length p1, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 102
    iget-object v1, p0, Lo/removeSubscription;->validateRelationship:[Lo/MediaBrowserCompat$ServiceBinderWrapper;

    iget-object v2, p0, Lo/getMediaItem;->MediaBrowserCompat$ConnectionCallback:Lo/MediaBrowserCompat$ServiceBinderWrapper;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final requestPostMessageChannel()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lo/MediaBrowserCompat$ServiceBinderWrapper;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lo/removeSubscription;->cancel:Ljava/util/ArrayList;

    return-object v0
.end method
