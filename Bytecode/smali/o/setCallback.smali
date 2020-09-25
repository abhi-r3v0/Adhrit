.class public Lo/setCallback;
.super Lo/MediaControllerCompatApi21$CallbackProxy;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setCallback$onPostMessage;
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

.field private ICustomTabsCallback$Stub:Z

.field private extraCallback:I

.field private final onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/toLegacyStreamType;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImpl<",
            "Lo/MediaControllerCompatApi21$TransportControls;",
            "Lo/setCallback$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Lo/toLegacyStreamType;)V
    .locals 1

    .line 94
    invoke-direct {p0}, Lo/MediaControllerCompatApi21$CallbackProxy;-><init>()V

    .line 56
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImpl;-><init>()V

    iput-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    const/4 v0, 0x0

    .line 71
    iput v0, p0, Lo/setCallback;->extraCallback:I

    .line 73
    iput-boolean v0, p0, Lo/setCallback;->onTransact:Z

    .line 74
    iput-boolean v0, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/setCallback;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    .line 96
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iput-object p1, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void
.end method

.method public static ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;
    .locals 2

    .line 243
    sget-object v0, Lo/setCallback$5;->onNavigationEvent:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected event value "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :pswitch_0
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-object p0

    .line 251
    :pswitch_1
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-object p0

    .line 249
    :pswitch_2
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-object p0

    .line 246
    :pswitch_3
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;
    .locals 1

    if-eqz p1, :cond_0

    .line 346
    invoke-virtual {p1, p0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    return-object p0
.end method

.method private ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 7

    .line 307
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 10150
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onMessageChannelReady;

    iget-object v2, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    iget-object v3, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    invoke-direct {v1, v2, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onMessageChannelReady;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;)V

    .line 10151
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onMessageChannelReady:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_6

    .line 310
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 311
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCallback$onPostMessage;

    .line 312
    :goto_0
    iget-object v3, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iget-object v4, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-lez v3, :cond_0

    iget-boolean v3, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 11066
    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 314
    iget-object v3, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 11261
    sget-object v4, Lo/setCallback$5;->onPostMessage:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-eq v4, v6, :cond_3

    const/4 v6, 0x4

    if-eq v4, v6, :cond_2

    const/4 p1, 0x5

    if-eq v4, p1, :cond_1

    .line 11273
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected state value "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11271
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 11269
    :cond_2
    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    goto :goto_1

    .line 11267
    :cond_3
    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    goto :goto_1

    .line 11265
    :cond_4
    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 315
    :goto_1
    invoke-static {v3}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    .line 12206
    iget-object v6, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-virtual {v2, p1, v3}, Lo/setCallback$onPostMessage;->ICustomTabsCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 13202
    iget-object v3, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 11263
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_6
    return-void
.end method

.method private extraCallback()V
    .locals 3

    .line 325
    iget-object v0, p0, Lo/setCallback;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toLegacyStreamType;

    if-eqz v0, :cond_3

    .line 330
    :cond_0
    :goto_0
    invoke-direct {p0}, Lo/setCallback;->onMessageChannelReady()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 331
    iput-boolean v2, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    .line 333
    iget-object v1, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iget-object v2, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 14169
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 333
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCallback$onPostMessage;

    iget-object v2, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_1

    .line 334
    invoke-direct {p0, v0}, Lo/setCallback;->ICustomTabsCallback(Lo/toLegacyStreamType;)V

    .line 336
    :cond_1
    iget-object v1, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 14176
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 337
    iget-boolean v2, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 338
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setCallback$onPostMessage;

    iget-object v1, v1, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v2, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_0

    .line 339
    invoke-direct {p0, v0}, Lo/setCallback;->extraCallback(Lo/toLegacyStreamType;)V

    goto :goto_0

    .line 342
    :cond_2
    iput-boolean v2, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    return-void

    .line 327
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private extraCallback(Lo/toLegacyStreamType;)V
    .locals 5

    .line 292
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 7160
    new-instance v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;

    invoke-direct {v1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21;)V

    .line 7161
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onMessageChannelReady:Ljava/util/WeakHashMap;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    if-nez v0, :cond_1

    .line 295
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCallback$onPostMessage;

    .line 297
    :goto_0
    iget-object v3, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iget-object v4, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    iget-boolean v3, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 8066
    iget-object v3, v3, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 8206
    iget-object v4, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v3, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-static {v3}, Lo/setCallback;->onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lo/setCallback$onPostMessage;->ICustomTabsCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 9202
    iget-object v3, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;
    .locals 2

    .line 277
    sget-object v0, Lo/setCallback$5;->onPostMessage:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Unexpected state value "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 286
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 284
    :cond_2
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-object p0

    .line 282
    :cond_3
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-object p0

    .line 280
    :cond_4
    :goto_0
    sget-object p0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    return-object p0
.end method

.method private onMessageChannelReady()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 1130
    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 1169
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 153
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCallback$onPostMessage;

    iget-object v0, v0, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 154
    iget-object v2, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 1176
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    .line 154
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/setCallback$onPostMessage;

    iget-object v2, v2, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, v2, :cond_1

    .line 155
    iget-object v0, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private onNavigationEvent(Lo/MediaControllerCompatApi21$TransportControls;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;
    .locals 3

    .line 159
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 3066
    iget-object v1, v0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2076
    iget-object v0, v0, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    iget-object p1, p1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21$onPostMessage;

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 161
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/setCallback$onPostMessage;

    iget-object p1, p1, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    goto :goto_1

    :cond_1
    move-object p1, v2

    .line 162
    :goto_1
    iget-object v0, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 164
    :cond_2
    iget-object v0, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eqz p1, :cond_3

    .line 3346
    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-gez v1, :cond_3

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz v2, :cond_4

    .line 4346
    invoke-virtual {v2, p1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gez v0, :cond_4

    return-object v2

    :cond_4
    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V
    .locals 6

    .line 169
    iget-object v0, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, v1, :cond_0

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    goto :goto_0

    :cond_0
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 170
    :goto_0
    new-instance v1, Lo/setCallback$onPostMessage;

    invoke-direct {v1, p1, v0}, Lo/setCallback$onPostMessage;-><init>(Lo/MediaControllerCompatApi21$TransportControls;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 171
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    invoke-virtual {v0, p1, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setCallback$onPostMessage;

    if-eqz v0, :cond_1

    return-void

    .line 176
    :cond_1
    iget-object v0, p0, Lo/setCallback;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toLegacyStreamType;

    if-nez v0, :cond_2

    return-void

    .line 182
    :cond_2
    iget v2, p0, Lo/setCallback;->extraCallback:I

    const/4 v3, 0x1

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lo/setCallback;->onTransact:Z

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v2, 0x1

    .line 183
    :goto_2
    invoke-direct {p0, p1}, Lo/setCallback;->onNavigationEvent(Lo/MediaControllerCompatApi21$TransportControls;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    .line 184
    iget v5, p0, Lo/setCallback;->extraCallback:I

    add-int/2addr v5, v3

    iput v5, p0, Lo/setCallback;->extraCallback:I

    .line 185
    :goto_3
    iget-object v5, v1, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v5, v4}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v4

    if-gez v4, :cond_5

    iget-object v4, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    .line 5066
    iget-object v4, v4, Lo/MediaBrowserCompat$MediaBrowserImpl;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 187
    iget-object v4, v1, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 5206
    iget-object v5, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v4, v1, Lo/setCallback$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-static {v4}, Lo/setCallback;->onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lo/setCallback$onPostMessage;->ICustomTabsCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 6202
    iget-object v4, p0, Lo/setCallback;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 191
    invoke-direct {p0, p1}, Lo/setCallback;->onNavigationEvent(Lo/MediaControllerCompatApi21$TransportControls;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v4

    goto :goto_3

    :cond_5
    if-nez v2, :cond_6

    .line 196
    invoke-direct {p0}, Lo/setCallback;->extraCallback()V

    .line 198
    :cond_6
    iget p1, p0, Lo/setCallback;->extraCallback:I

    sub-int/2addr p1, v3

    iput p1, p0, Lo/setCallback;->extraCallback:I

    return-void
.end method

.method public final onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;
    .locals 1

    .line 239
    iget-object v0, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-object v0
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 130
    invoke-static {p1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method public final onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, p1, :cond_0

    return-void

    .line 138
    :cond_0
    iput-object p1, p0, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 139
    iget-boolean p1, p0, Lo/setCallback;->onTransact:Z

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget p1, p0, Lo/setCallback;->extraCallback:I

    if-eqz p1, :cond_1

    goto :goto_0

    .line 144
    :cond_1
    iput-boolean v0, p0, Lo/setCallback;->onTransact:Z

    .line 145
    invoke-direct {p0}, Lo/setCallback;->extraCallback()V

    const/4 p1, 0x0

    .line 146
    iput-boolean p1, p0, Lo/setCallback;->onTransact:Z

    return-void

    .line 140
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lo/setCallback;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V
    .locals 1

    .line 223
    iget-object v0, p0, Lo/setCallback;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserImpl;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
