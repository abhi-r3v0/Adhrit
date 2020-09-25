.class public final Lo/binderDied;
.super Lo/MediaControllerCompat$MediaControllerImplApi23;
.source ""

# interfaces
.implements Lo/requestExtraBinder$ICustomTabsCallback;


# instance fields
.field private extraCommand:Z

.field onNavigationEvent:I

.field final onPostMessage:Lo/requestExtraBinder;


# direct methods
.method public constructor <init>(Lo/requestExtraBinder;)V
    .locals 2

    .line 3840
    iget-object v0, p1, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 3845
    iget-object v0, p1, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->postMessage()Lo/MediaControllerCompat$Callback$StubApi21;

    move-result-object v0

    goto :goto_0

    .line 3847
    :cond_0
    iget-object v0, p1, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 139
    :goto_0
    iget-object v1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 4200
    iget-object v1, v1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 140
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 139
    :goto_1
    invoke-direct {p0, v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;-><init>(Lo/MediaControllerCompat$Callback$StubApi21;Ljava/lang/ClassLoader;)V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lo/binderDied;->onNavigationEvent:I

    .line 142
    iput-object p1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    return-void
.end method

.method private extraCallback(Z)I
    .locals 2

    .line 307
    iget-boolean v0, p0, Lo/binderDied;->extraCommand:Z

    if-nez v0, :cond_2

    const/4 v0, 0x2

    .line 308
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Commit: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    new-instance v0, Lo/getStarRating;

    invoke-direct {v0, v1}, Lo/getStarRating;-><init>(Ljava/lang/String;)V

    .line 311
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v0, "  "

    .line 312
    invoke-virtual {p0, v0, v1}, Lo/binderDied;->onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 313
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    :cond_0
    const/4 v0, 0x1

    .line 315
    iput-boolean v0, p0, Lo/binderDied;->extraCommand:Z

    .line 316
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    .line 5779
    iget-object v0, v0, Lo/requestExtraBinder;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 317
    iput v0, p0, Lo/binderDied;->onNavigationEvent:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 319
    iput v0, p0, Lo/binderDied;->onNavigationEvent:I

    .line 321
    :goto_0
    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v0, p0, p1}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    .line 322
    iget p1, p0, Lo/binderDied;->onNavigationEvent:I

    return p1

    .line 307
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static onPostMessage(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)Z
    .locals 1

    .line 662
    iget-object p0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    .line 663
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_0

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isPostponed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 3

    .line 187
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    iget-object v1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot remove Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 2

    .line 244
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    iget-object v1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    if-ne v0, v1, :cond_2

    .line 248
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 4212
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 252
    invoke-super {p0, p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object p1

    return-object p1

    .line 249
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot set maximum Lifecycle below "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot setMaxLifecycle for Fragment not attached to FragmentManager "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final ICustomTabsCallback()V
    .locals 2

    .line 5678
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 5682
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    .line 303
    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lo/requestExtraBinder;->extraCallback(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return-void

    .line 5679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final ICustomTabsCallback(Z)V
    .locals 6

    .line 459
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 460
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 461
    iget-object v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 463
    iget v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    invoke-static {v4}, Lo/requestExtraBinder;->extraCallback(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 465
    :cond_0
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    packed-switch v4, :pswitch_data_0

    .line 503
    :pswitch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown cmd: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 500
    :pswitch_1
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v5, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v4, v3, v5}, Lo/requestExtraBinder;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    goto :goto_1

    .line 497
    :pswitch_2
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->extraCommand(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 494
    :pswitch_3
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lo/requestExtraBinder;->extraCommand(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 489
    :pswitch_4
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 490
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 491
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->requestPostMessageChannel(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 485
    :pswitch_5
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 486
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->postMessage(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 480
    :pswitch_6
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 481
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 482
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->newSession(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 476
    :pswitch_7
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 477
    invoke-static {v3}, Lo/requestExtraBinder;->ICustomTabsService(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 472
    :pswitch_8
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 473
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 467
    :pswitch_9
    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 468
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 469
    iget-object v4, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v4, v3}, Lo/requestExtraBinder;->warmup(Landroidx/fragment/app/Fragment;)V

    .line 505
    :goto_1
    iget-boolean v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v4, :cond_1

    iget v2, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    if-eqz v3, :cond_1

    .line 506
    iget-object v2, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v2, v3}, Lo/requestExtraBinder;->onTransact(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 509
    :cond_2
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 510
    iget-object p1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget v0, p1, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p1, v0, v1}, Lo/requestExtraBinder;->onPostMessage(IZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final asInterface()Z
    .locals 1

    .line 675
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method final extraCallback(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 538
    :goto_0
    iget-object v5, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 539
    iget-object v5, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 540
    iget v6, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v6, v8, :cond_8

    const/4 v9, 0x2

    const/4 v10, 0x3

    const/16 v11, 0x9

    if-eq v6, v9, :cond_2

    if-eq v6, v10, :cond_1

    const/4 v9, 0x6

    if-eq v6, v9, :cond_1

    const/4 v7, 0x7

    if-eq v6, v7, :cond_8

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    goto/16 :goto_3

    .line 595
    :cond_0
    iget-object v6, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    new-instance v7, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v7, v11, v3}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v6, v4, v7}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 598
    iget-object v3, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    goto/16 :goto_3

    .line 547
    :cond_1
    iget-object v6, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 548
    iget-object v6, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-ne v6, v3, :cond_9

    .line 549
    iget-object v3, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    new-instance v6, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    iget-object v5, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-direct {v6, v11, v5}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v6}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v7

    goto :goto_3

    .line 556
    :cond_2
    iget-object v6, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 557
    iget v9, v6, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 559
    invoke-virtual/range {p1 .. p1}, Ljava/util/AbstractCollection;->size()I

    move-result v12

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    :goto_1
    if-ltz v12, :cond_6

    .line 560
    invoke-virtual {v1, v12}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/fragment/app/Fragment;

    .line 561
    iget v15, v14, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-ne v15, v9, :cond_5

    if-ne v14, v6, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    if-ne v14, v3, :cond_4

    .line 568
    iget-object v3, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    new-instance v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v15, v11, v14}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3, v4, v15}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    move-object v3, v7

    .line 572
    :cond_4
    new-instance v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    invoke-direct {v15, v10, v14}, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;-><init>(ILandroidx/fragment/app/Fragment;)V

    .line 573
    iget v2, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    iput v2, v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    .line 574
    iget v2, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    iput v2, v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    .line 575
    iget v2, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    iput v2, v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    .line 576
    iget v2, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    iput v2, v15, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    .line 577
    iget-object v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v4, v15}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 578
    invoke-virtual {v1, v14}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    add-int/2addr v4, v8

    :cond_5
    :goto_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_1

    :cond_6
    if-eqz v13, :cond_7

    .line 584
    iget-object v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 587
    :cond_7
    iput v8, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    .line 588
    invoke-virtual {v1, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 543
    :cond_8
    iget-object v2, v5, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    add-int/2addr v4, v8

    goto/16 :goto_0

    :cond_a
    return-object v3
.end method

.method public final extraCallback()V
    .locals 2

    .line 4678
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 4682
    iput-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    .line 297
    iget-object v1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v1, p0, v0}, Lo/requestExtraBinder;->extraCallback(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    return-void

    .line 4679
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final extraCallback(I)V
    .locals 7

    .line 256
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 259
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_1

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Bump nesting in "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 264
    iget-object v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 265
    iget-object v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_2

    .line 266
    iget-object v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, p1

    iput v6, v5, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 267
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 268
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bump nesting of "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method final onMessageChannelReady()V
    .locals 8

    .line 394
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 396
    iget-object v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 397
    iget-object v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_0

    .line 399
    iget v6, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextTransition(I)V

    .line 401
    :cond_0
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    packed-switch v6, :pswitch_data_0

    .line 439
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown cmd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :pswitch_1
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v7, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v6, v5, v7}, Lo/requestExtraBinder;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    goto :goto_1

    .line 433
    :pswitch_2
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lo/requestExtraBinder;->extraCommand(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 430
    :pswitch_3
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->extraCommand(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 425
    :pswitch_4
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 426
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 427
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->postMessage(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 421
    :pswitch_5
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 422
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->requestPostMessageChannel(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 416
    :pswitch_6
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 417
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 418
    invoke-static {v5}, Lo/requestExtraBinder;->ICustomTabsService(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 412
    :pswitch_7
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 413
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->newSession(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 408
    :pswitch_8
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 409
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->warmup(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 403
    :pswitch_9
    iget v6, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    .line 404
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;Z)V

    .line 405
    iget-object v6, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v6, v5}, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    .line 441
    :goto_1
    iget-boolean v6, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v6, :cond_1

    iget v4, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    if-eq v4, v3, :cond_1

    if-eqz v5, :cond_1

    .line 442
    iget-object v3, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    invoke-virtual {v3, v5}, Lo/requestExtraBinder;->onTransact(Landroidx/fragment/app/Fragment;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 445
    :cond_2
    iget-boolean v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v0, :cond_3

    .line 447
    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget v1, v0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, v1, v3}, Lo/requestExtraBinder;->onPostMessage(IZ)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method final onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2, p3, p4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 181
    iget-object p1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    const/4 v0, 0x1

    .line 291
    invoke-direct {p0, v0}, Lo/binderDied;->extraCallback(Z)I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 3

    .line 220
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    iget-object v1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot detach Fragment attached to a different FragmentManager. Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is already attached to a FragmentManager."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent(I)Z
    .locals 5

    .line 350
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 352
    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 353
    iget-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_0

    iget-object v3, v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget v3, v3, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_1

    if-ne v3, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, v0}, Lo/binderDied;->extraCallback(Z)I

    move-result v0

    return v0
.end method

.method final onPostMessage(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;",
            "Landroidx/fragment/app/Fragment;",
            ")",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .line 617
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 618
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 619
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    if-eq v3, v1, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 635
    :pswitch_0
    iget-object v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asInterface:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    iput-object v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->asBinder:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    goto :goto_1

    .line 629
    :pswitch_1
    iget-object p2, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    goto :goto_1

    :pswitch_2
    const/4 p2, 0x0

    goto :goto_1

    .line 626
    :cond_0
    :pswitch_3
    iget-object v2, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 622
    :cond_1
    :pswitch_4
    iget-object v2, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object p2

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final onPostMessage(Landroidx/fragment/app/Fragment$onNavigationEvent;)V
    .locals 3

    const/4 v0, 0x0

    .line 653
    :goto_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 654
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 655
    invoke-static {v1}, Lo/binderDied;->onPostMessage(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->setOnStartEnterTransitionListener(Landroidx/fragment/app/Fragment$onNavigationEvent;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, p1, p2, v0}, Lo/binderDied;->onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;Z)V
    .locals 5

    if-eqz p3, :cond_8

    .line 64
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIndex="

    .line 65
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lo/binderDied;->onNavigationEvent:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mCommitted="

    .line 66
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lo/binderDied;->extraCommand:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 67
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTransition=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 69
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    if-nez v0, :cond_1

    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    if-eqz v0, :cond_2

    .line 72
    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 73
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mExitAnim=#"

    .line 74
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 75
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    :cond_2
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    if-nez v0, :cond_3

    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    if-eqz v0, :cond_4

    .line 78
    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mPopEnterAnim=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mPopExitAnim=#"

    .line 80
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 81
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    :cond_4
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->warmup:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsService:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    .line 84
    :cond_5
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 85
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->warmup:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbTitleText="

    .line 86
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsService:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 89
    :cond_6
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->getInterfaceDescriptor:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->newSession:Ljava/lang/CharSequence;

    if-eqz v0, :cond_8

    .line 90
    :cond_7
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 91
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->getInterfaceDescriptor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mBreadCrumbShortTitleText="

    .line 92
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->newSession:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 97
    :cond_8
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 98
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Operations:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_d

    .line 101
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 103
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    packed-switch v3, :pswitch_data_0

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :pswitch_0
    const-string v3, "OP_SET_MAX_LIFECYCLE"

    goto :goto_1

    :pswitch_1
    const-string v3, "UNSET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_2
    const-string v3, "SET_PRIMARY_NAV"

    goto :goto_1

    :pswitch_3
    const-string v3, "ATTACH"

    goto :goto_1

    :pswitch_4
    const-string v3, "DETACH"

    goto :goto_1

    :pswitch_5
    const-string v3, "SHOW"

    goto :goto_1

    :pswitch_6
    const-string v3, "HIDE"

    goto :goto_1

    :pswitch_7
    const-string v3, "REMOVE"

    goto :goto_1

    :pswitch_8
    const-string v3, "REPLACE"

    goto :goto_1

    :pswitch_9
    const-string v3, "ADD"

    goto :goto_1

    :pswitch_a
    const-string v3, "NULL"

    .line 117
    :goto_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  Op #"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": "

    .line 118
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " "

    .line 119
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz p3, :cond_c

    .line 121
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    if-nez v3, :cond_9

    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    if-eqz v3, :cond_a

    .line 122
    :cond_9
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "enterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 123
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onPostMessage:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " exitAnim=#"

    .line 124
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 125
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onNavigationEvent:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    :cond_a
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    if-nez v3, :cond_b

    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    if-eqz v3, :cond_c

    .line 128
    :cond_b
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "popEnterAnim=#"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->ICustomTabsCallback:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " popExitAnim=#"

    .line 130
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 131
    iget v2, v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onTransact:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final onPostMessage(Ljava/util/ArrayList;II)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;II)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-ne p3, p2, :cond_0

    return v0

    .line 365
    :cond_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_7

    .line 368
    iget-object v4, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 369
    iget-object v5, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v4, v4, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget v4, v4, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_6

    if-eq v4, v2, :cond_6

    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_5

    .line 373
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/binderDied;

    .line 374
    iget-object v6, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 376
    iget-object v8, v5, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 377
    iget-object v9, v8, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v9, :cond_2

    iget-object v8, v8, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    iget v8, v8, Landroidx/fragment/app/Fragment;->mContainerId:I

    goto :goto_4

    :cond_2
    const/4 v8, 0x0

    :goto_4
    if-ne v8, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move v2, v4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return v0
.end method

.method public final onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x2

    .line 337
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Run: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 343
    iget-boolean p1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-eqz p1, :cond_2

    .line 344
    iget-object p1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    .line 6312
    iget-object p2, p1, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 6313
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 6315
    :cond_1
    iget-object p1, p1, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "BackStackEntry{"

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Lo/binderDied;->onNavigationEvent:I

    if-ltz v1, :cond_0

    const-string v1, " #"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget v1, p0, Lo/binderDied;->onNavigationEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "}"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
