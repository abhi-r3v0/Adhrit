.class public abstract Lo/MediaControllerCompat$MediaControllerImplApi24;
.super Lo/toKeyCode;
.source ""


# instance fields
.field private ICustomTabsCallback$Stub:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Z

.field private asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:I

.field private onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

.field private final onPostMessage:Lo/requestExtraBinder;

.field private onTransact:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, v0}, Lo/MediaControllerCompat$MediaControllerImplApi24;-><init>(Lo/requestExtraBinder;B)V

    return-void
.end method

.method private constructor <init>(Lo/requestExtraBinder;B)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lo/toKeyCode;-><init>()V

    const/4 p2, 0x0

    .line 103
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    .line 107
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    .line 142
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/os/Parcelable;
    .locals 5

    .line 288
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 289
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 290
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    .line 291
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v2, "states"

    .line 292
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 294
    :goto_1
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 295
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_2

    .line 296
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    .line 298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 300
    :cond_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "f"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 301
    iget-object v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v0, v3, v2}, Lo/requestExtraBinder;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public final extraCallback(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 168
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 169
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 175
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    .line 1464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 176
    iput-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 179
    :cond_1
    invoke-virtual {p0, p2}, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 182
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$ICustomTabsCallback;)V

    .line 187
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gt v1, p2, :cond_3

    .line 188
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 190
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 191
    iget v3, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onMessageChannelReady:I

    if-nez v3, :cond_4

    .line 192
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 195
    :cond_4
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v1, 0x1

    .line 2189
    invoke-virtual {p2, p1, v0, v2, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 198
    iget p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onMessageChannelReady:I

    if-ne p1, v1, :cond_5

    .line 199
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {p1, v0, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    :cond_5
    return-object v0
.end method

.method public final extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 209
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 211
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez p1, :cond_0

    .line 212
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    .line 2464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 212
    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 216
    :cond_0
    :goto_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 217
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 219
    :cond_1
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    .line 220
    invoke-virtual {v1, p3}, Lo/requestExtraBinder;->onRelationshipValidationResult(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    .line 219
    :goto_1
    invoke-virtual {p1, p2, v1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    invoke-virtual {p1, p3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 224
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 225
    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    :cond_3
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 310
    check-cast p1, Landroid/os/Bundle;

    .line 311
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo p2, "states"

    .line 312
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 313
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 314
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 316
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 317
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asInterface:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    check-cast v3, Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    invoke-virtual {v2, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 321
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f"

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 324
    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v3, p1, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 326
    :goto_2
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 327
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 329
    :cond_2
    invoke-virtual {v3, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 330
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->ICustomTabsCallback$Stub:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 332
    :cond_3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bad fragment at key "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentStatePagerAdapt"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 281
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Landroid/view/ViewGroup;)V
    .locals 2

    .line 154
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 155
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ViewPager with adapter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public abstract onPostMessage(I)Landroidx/fragment/app/Fragment;
.end method

.method public final onPostMessage()V
    .locals 3

    .line 261
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-eqz v0, :cond_1

    .line 267
    iget-boolean v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asBinder:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 269
    :try_start_0
    iput-boolean v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asBinder:Z

    .line 270
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    iput-boolean v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asBinder:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->asBinder:Z

    .line 273
    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 275
    iput-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 4

    .line 232
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 233
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 235
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 236
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onMessageChannelReady:I

    if-ne v0, v1, :cond_1

    .line 237
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    .line 3464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 238
    iput-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 240
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, v2, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_0

    .line 242
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 245
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 246
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onMessageChannelReady:I

    if-ne v0, v1, :cond_4

    .line 247
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_3

    .line 248
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onPostMessage:Lo/requestExtraBinder;

    .line 4464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 248
    iput-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 250
    :cond_3
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onNavigationEvent:Lo/MediaControllerCompat$MediaControllerImplApi23;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, p1, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_1

    .line 252
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 255
    :goto_1
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi24;->onTransact:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method
