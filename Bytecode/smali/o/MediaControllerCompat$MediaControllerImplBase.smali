.class public final Lo/MediaControllerCompat$MediaControllerImplBase;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

.field public extraCallback:I

.field public final onPostMessage:Landroidx/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    .line 57
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 58
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method constructor <init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Landroidx/fragment/app/Fragment;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    .line 114
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 115
    iput-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 p1, 0x0

    .line 116
    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 117
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v0, 0x0

    iput v0, p2, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    .line 118
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->mInLayout:Z

    .line 119
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-boolean v0, p2, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 120
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p2, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 121
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p1, p2, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    .line 122
    iget-object p1, p3, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->getInterfaceDescriptor:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 123
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p3, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->getInterfaceDescriptor:Landroid/os/Bundle;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void

    .line 128
    :cond_1
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method

.method constructor <init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Ljava/lang/ClassLoader;Lo/MediaControllerCompat$Callback$StubApi21;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    .line 73
    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 74
    iget-object p1, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->extraCallback:Ljava/lang/String;

    invoke-virtual {p3, p2, p1}, Lo/MediaControllerCompat$Callback$StubApi21;->onPostMessage(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    iput-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 75
    iget-object p1, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onTransact:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onTransact:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 78
    :cond_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onTransact:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onPostMessage:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 80
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->ICustomTabsCallback:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    .line 81
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    .line 82
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onMessageChannelReady:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    .line 83
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onNavigationEvent:I

    iput p2, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 84
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onRelationshipValidationResult:Ljava/lang/String;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->asBinder:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    .line 86
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->ICustomTabsCallback$Stub:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 87
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->asInterface:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 88
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->ICustomTabsService:Z

    iput-boolean p2, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 89
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-static {}, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->values()[Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p2

    iget p3, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->warmup:I

    aget-object p2, p2, p3

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 90
    iget-object p1, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->getInterfaceDescriptor:Landroid/os/Bundle;

    if-eqz p1, :cond_1

    .line 91
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p4, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->getInterfaceDescriptor:Landroid/os/Bundle;

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    :goto_0
    const/4 p1, 0x2

    .line 98
    invoke-static {p1}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Instantiated fragment "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FragmentManager"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()V
    .locals 3

    const/4 v0, 0x3

    .line 343
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto ACTIVITY_CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performActivityCreated(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    return-void
.end method

.method final ICustomTabsCallback(Ljava/lang/ClassLoader;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 236
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:view_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 238
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v1, "android:target_state"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 240
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 241
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "android:target_req_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Landroidx/fragment/app/Fragment;->mTargetRequestCode:I

    .line 244
    :cond_1
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 245
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 246
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedUserVisibleHint:Ljava/lang/Boolean;

    goto :goto_0

    .line 248
    :cond_2
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    .line 251
    :goto_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_3

    .line 252
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    :cond_3
    return-void
.end method

.method final ICustomTabsCallback(Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;)V
    .locals 5

    const/4 v0, 0x3

    .line 500
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v1

    const-string v2, "FragmentManager"

    if-eqz v1, :cond_0

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "movefrom ATTACHED: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performDetach()V

    .line 504
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v3}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback$Stub(Landroidx/fragment/app/Fragment;)V

    .line 506
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v3, -0x1

    iput v3, v1, Landroidx/fragment/app/Fragment;->mState:I

    .line 507
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v3, 0x0

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    .line 508
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 509
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object v3, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    .line 510
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 511
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 6117
    iget-object v4, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6121
    iget-boolean v1, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage:Z

    if-eqz v1, :cond_2

    .line 6124
    iget-boolean v3, p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    :cond_2
    if-eqz v3, :cond_5

    .line 512
    :cond_3
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "initState called for fragment: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_4
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->initState()V

    :cond_5
    return-void
.end method

.method final ICustomTabsCallback$Stub()V
    .locals 2

    const/4 v0, 0x3

    .line 380
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPause()V

    .line 384
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final asBinder()V
    .locals 2

    const/4 v0, 0x3

    .line 388
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStop()V

    .line 392
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final asInterface()V
    .locals 2

    const/4 v0, 0x3

    .line 362
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto STARTED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performStart()V

    .line 366
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method final extraCallback()I
    .locals 7

    .line 155
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    .line 158
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v1, :cond_0

    .line 162
    iget v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    .line 164
    :cond_0
    iget v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    if-ge v1, v2, :cond_1

    .line 169
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 179
    :cond_2
    :goto_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v1, :cond_3

    .line 180
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    :cond_3
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_5

    .line 183
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 185
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 188
    :cond_4
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 193
    :cond_5
    :goto_1
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    const/4 v5, 0x3

    if-eqz v1, :cond_6

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v1, v5, :cond_6

    .line 194
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 197
    :cond_6
    sget-object v1, Lo/MediaControllerCompat$MediaControllerImplBase$4;->ICustomTabsCallback:[I

    iget-object v6, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v6, v6, Landroidx/fragment/app/Fragment;->mMaxState:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v1, v1, v6

    if-eq v1, v3, :cond_9

    if-eq v1, v2, :cond_8

    if-eq v1, v5, :cond_7

    .line 208
    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 205
    :cond_7
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    .line 202
    :cond_8
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_9
    :goto_2
    return v0
.end method

.method final extraCallback(Lo/MediaControllerCompat$MediaControllerExtraData;)V
    .locals 4

    .line 290
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 295
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 299
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 300
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    goto/16 :goto_1

    .line 301
    :cond_2
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v1, v1, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-eqz v1, :cond_5

    .line 302
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 306
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v0}, Lo/MediaControllerCompat$MediaControllerExtraData;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 307
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mRestored:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 310
    :cond_3
    :try_start_0
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v0, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "unknown"

    .line 314
    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No view found for id 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 315
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") for fragment "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot create fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for a container view with no id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_5
    :goto_1
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 320
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v0, v2}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 322
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_9

    .line 323
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 324
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v2, Lo/registerCallback$onPostMessage;->fragment_container_view_tag:I

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    if-eqz v0, :cond_6

    .line 326
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 328
    :cond_6
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean p1, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_7

    .line 329
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    :cond_7
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-static {p1}, Lo/unregisterCallbackListener;->updateVisuals(Landroid/view/View;)V

    .line 332
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 333
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v2, v3, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 337
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    const/4 v1, 0x1

    :cond_8
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    :cond_9
    return-void
.end method

.method final onMessageChannelReady()V
    .locals 5

    .line 214
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mInLayout:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mPerformedCreateView:Z

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 215
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATE_VIEW: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V

    .line 220
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 222
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    sget v2, Lo/registerCallback$onPostMessage;->fragment_container_view_tag:I

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 224
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 225
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v4, v4, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3, v4, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    :cond_2
    return-void
.end method

.method final onNavigationEvent()V
    .locals 2

    const/4 v0, 0x3

    .line 352
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESTORE_VIEW_STATE: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreViewState(Landroid/os/Bundle;)V

    .line 358
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    return-void
.end method

.method final onNavigationEvent(Lo/postToHandler;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postToHandler<",
            "*>;",
            "Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 474
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "movefrom CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 478
    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 3117
    iget-object v4, p2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v3, v3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3121
    iget-boolean v3, p2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage:Z

    if-eqz v3, :cond_2

    .line 3124
    iget-boolean v3, p2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_9

    .line 481
    instance-of v1, p1, Lo/removeOnActiveChangeListener;

    if-eqz v1, :cond_5

    .line 4095
    iget-boolean v2, p2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    goto :goto_4

    .line 4200
    :cond_5
    iget-object v1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 483
    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 5200
    iget-object p1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 484
    check-cast p1, Landroid/app/Activity;

    .line 485
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    xor-int/2addr v2, p1

    :cond_6
    :goto_4
    if-nez v0, :cond_7

    if-eqz v2, :cond_8

    .line 490
    :cond_7
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    .line 492
    :cond_8
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroy()V

    .line 493
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->asInterface(Landroidx/fragment/app/Fragment;)V

    return-void

    .line 495
    :cond_9
    iget-object p1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method final onNavigationEvent(Lo/postToHandler;Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postToHandler<",
            "*>;",
            "Lo/requestExtraBinder;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p1, v0, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    .line 259
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p3, v0, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 260
    iget-object p3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object p2, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    .line 261
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object p3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 1200
    iget-object v0, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 261
    invoke-virtual {p2, p3, v0}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    .line 263
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->performAttach()V

    .line 264
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez p2, :cond_0

    .line 265
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Lo/postToHandler;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 267
    :cond_0
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object p2, p2, Landroidx/fragment/app/Fragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    iget-object p3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {p2, p3}, Landroidx/fragment/app/Fragment;->onAttachFragment(Landroidx/fragment/app/Fragment;)V

    .line 269
    :goto_0
    iget-object p2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object p3, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 2200
    iget-object p1, p1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 269
    invoke-virtual {p2, p3, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;Landroid/content/Context;)V

    return-void
.end method

.method final onPostMessage()V
    .locals 3

    const/4 v0, 0x3

    .line 274
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto CREATED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v0, v0, Landroidx/fragment/app/Fragment;->mIsCreated:Z

    if-nez v0, :cond_1

    .line 278
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 280
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->performCreate(Landroid/os/Bundle;)V

    .line 281
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onNavigationEvent(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->restoreChildFragmentState(Landroid/os/Bundle;)V

    .line 285
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    iput v1, v0, Landroidx/fragment/app/Fragment;->mState:I

    return-void
.end method

.method final onRelationshipValidationResult()V
    .locals 2

    const/4 v0, 0x3

    .line 370
    invoke-static {v0}, Lo/requestExtraBinder;->onMessageChannelReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveto RESUMED: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performResume()V

    .line 374
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    .line 375
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 376
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object v1, v0, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    return-void
.end method

.method public final onTransact()Landroid/os/Bundle;
    .locals 3

    .line 432
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 434
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->performSaveInstanceState(Landroid/os/Bundle;)V

    .line 435
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1, v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi21;->extraCallback(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 440
    :cond_0
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {p0}, Lo/MediaControllerCompat$MediaControllerImplBase;->warmup()V

    .line 443
    :cond_1
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    .line 445
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    :cond_2
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 450
    :cond_3
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    .line 452
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 455
    :cond_4
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-boolean v1, v1, Landroidx/fragment/app/Fragment;->mUserVisibleHint:Z

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v0
.end method

.method final warmup()V
    .locals 2

    .line 462
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 466
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget-object v1, v1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 467
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 468
    iget-object v1, p0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iput-object v0, v1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method
