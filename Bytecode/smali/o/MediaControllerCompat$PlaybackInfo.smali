.class public abstract Lo/MediaControllerCompat$PlaybackInfo;
.super Lo/toKeyCode;
.source ""


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private final onMessageChannelReady:I

.field private final onNavigationEvent:Lo/requestExtraBinder;

.field private onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

.field private onRelationshipValidationResult:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, v0}, Lo/MediaControllerCompat$PlaybackInfo;-><init>(Lo/requestExtraBinder;B)V

    return-void
.end method

.method private constructor <init>(Lo/requestExtraBinder;B)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lo/toKeyCode;-><init>()V

    const/4 p2, 0x0

    .line 101
    iput-object p2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 102
    iput-object p2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    .line 136
    iput-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    const/4 p1, 0x0

    .line 137
    iput p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onMessageChannelReady:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final extraCallback(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 8

    .line 158
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    .line 1464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 159
    iput-object v1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    :cond_0
    int-to-long v0, p2

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 2284
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "android:switcher:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    iget-object v5, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    invoke-virtual {v5, v3}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 169
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 2424
    new-instance p2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    const/4 v0, 0x7

    invoke-direct {p2, v0, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p0, p2}, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage(I)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 173
    iget-object p2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 3284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4234
    invoke-virtual {p2, v6, v3, p1, v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 176
    :goto_0
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    if-eq v3, p1, :cond_3

    const/4 p1, 0x0

    .line 177
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 178
    iget p2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onMessageChannelReady:I

    if-ne p2, v5, :cond_2

    .line 179
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {p1, v3, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {v3, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_3
    :goto_1
    return-object v3
.end method

.method public final extraCallback(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 192
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 194
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez p1, :cond_0

    .line 195
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    .line 4464
    new-instance p2, Lo/binderDied;

    invoke-direct {p2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 195
    iput-object p2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 199
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    invoke-virtual {p1, p3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 200
    iget-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 201
    iput-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 257
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

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 149
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

    .line 237
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-eqz v0, :cond_1

    .line 243
    iget-boolean v1, p0, Lo/MediaControllerCompat$PlaybackInfo;->ICustomTabsCallback$Stub:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 245
    :try_start_0
    iput-boolean v1, p0, Lo/MediaControllerCompat$PlaybackInfo;->ICustomTabsCallback$Stub:Z

    .line 246
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iput-boolean v2, p0, Lo/MediaControllerCompat$PlaybackInfo;->ICustomTabsCallback$Stub:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Lo/MediaControllerCompat$PlaybackInfo;->ICustomTabsCallback$Stub:Z

    .line 249
    throw v0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/Object;)V
    .locals 4

    .line 208
    check-cast p1, Landroidx/fragment/app/Fragment;

    .line 209
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    if-eq p1, v0, :cond_5

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 211
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 212
    iget v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onMessageChannelReady:I

    if-ne v0, v1, :cond_1

    .line 213
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_0

    .line 214
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    .line 5464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 214
    iput-object v2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 216
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    iget-object v2, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    sget-object v3, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, v2, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_0

    .line 218
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 221
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 222
    iget v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onMessageChannelReady:I

    if-ne v0, v1, :cond_4

    .line 223
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    if-nez v0, :cond_3

    .line 224
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onNavigationEvent:Lo/requestExtraBinder;

    .line 6464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 224
    iput-object v1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 226
    :cond_3
    iget-object v0, p0, Lo/MediaControllerCompat$PlaybackInfo;->onPostMessage:Lo/MediaControllerCompat$MediaControllerImplApi23;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, p1, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_1

    .line 228
    :cond_4
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 231
    :goto_1
    iput-object p1, p0, Lo/MediaControllerCompat$PlaybackInfo;->onRelationshipValidationResult:Landroidx/fragment/app/Fragment;

    :cond_5
    return-void
.end method
