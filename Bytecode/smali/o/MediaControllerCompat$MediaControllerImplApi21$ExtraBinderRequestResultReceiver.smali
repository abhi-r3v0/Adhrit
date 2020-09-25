.class final Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Lo/setQueue;
.source ""


# static fields
.field private static final asBinder:Lo/setMetadata$onNavigationEvent;


# instance fields
.field final ICustomTabsCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/setRatingType;",
            ">;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Z

.field final onNavigationEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$2;

    invoke-direct {v0}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$2;-><init>()V

    sput-object v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->asBinder:Lo/setMetadata$onNavigationEvent;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lo/setQueue;-><init>()V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    .line 83
    iput-boolean p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage:Z

    return-void
.end method

.method static extraCallback(Lo/setRatingType;)Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    .locals 2

    .line 52
    new-instance v0, Lo/setMetadata;

    sget-object v1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->asBinder:Lo/setMetadata$onNavigationEvent;

    invoke-direct {v0, p0, v1}, Lo/setMetadata;-><init>(Lo/setRatingType;Lo/setMetadata$onNavigationEvent;)V

    .line 54
    const-class p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    invoke-virtual {v0, p0}, Lo/setMetadata;->onPostMessage(Ljava/lang/Class;)Lo/setQueue;

    move-result-object p0

    check-cast p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    return-object p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 244
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 246
    :cond_1
    check-cast p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 248
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v3, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    iget-object v3, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    .line 250
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 255
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 256
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 257
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final onMessageChannelReady()V
    .locals 2

    const/4 v0, 0x3

    .line 88
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onCleared called for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    return-void
.end method

.method final onPostMessage(Landroidx/fragment/app/Fragment;)V
    .locals 2

    const/4 v0, 0x3

    .line 157
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Clearing non-config state for "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0}, Lo/setQueue;->onMessageChannelReady()V

    .line 164
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setRatingType;

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {v0}, Lo/setRatingType;->extraCallback()V

    .line 170
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 265
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} Fragments ("

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 268
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    .line 269
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, ") Child Non Config ("

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 276
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v1, ") ViewModelStores ("

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 284
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 285
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 287
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    const/16 v1, 0x29

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
