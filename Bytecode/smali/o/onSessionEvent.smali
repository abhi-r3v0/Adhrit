.class public Lo/onSessionEvent;
.super Lo/onNavigationEvent;
.source ""

# interfaces
.implements Lo/getTitle$onPostMessage;
.implements Lo/getTitle$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onSessionEvent$onMessageChannelReady;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragmentLifecycleRegistry:Lo/setCallback;

.field final mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

.field mNextCandidateRequestIndex:I

.field mPendingFragmentActivityResults:Lo/describeContents;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/describeContents<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mStartedActivityFromFragment:Z

.field mStartedIntentSenderFromFragment:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 127
    invoke-direct {p0}, Lo/onNavigationEvent;-><init>()V

    .line 82
    new-instance v0, Lo/onSessionEvent$onMessageChannelReady;

    invoke-direct {v0, p0}, Lo/onSessionEvent$onMessageChannelReady;-><init>(Lo/onSessionEvent;)V

    invoke-static {v0}, Lo/MediaControllerCompat$Callback$MessageHandler;->onNavigationEvent(Lo/postToHandler;)Lo/MediaControllerCompat$Callback$MessageHandler;

    move-result-object v0

    iput-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 89
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    const/4 v0, 0x1

    .line 93
    iput-boolean v0, p0, Lo/onSessionEvent;->mStopped:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lo/onNavigationEvent;-><init>(I)V

    .line 82
    new-instance p1, Lo/onSessionEvent$onMessageChannelReady;

    invoke-direct {p1, p0}, Lo/onSessionEvent$onMessageChannelReady;-><init>(Lo/onSessionEvent;)V

    invoke-static {p1}, Lo/MediaControllerCompat$Callback$MessageHandler;->onNavigationEvent(Lo/postToHandler;)Lo/MediaControllerCompat$Callback$MessageHandler;

    move-result-object p1

    iput-object p1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 89
    new-instance p1, Lo/setCallback;

    invoke-direct {p1, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object p1, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    const/4 p1, 0x1

    .line 93
    iput-boolean p1, p0, Lo/onSessionEvent;->mStopped:Z

    return-void
.end method

.method private allocateRequestIndex(Landroidx/fragment/app/Fragment;)I
    .locals 3

    .line 829
    iget-object v0, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->onNavigationEvent()I

    move-result v0

    const v1, 0xfffe

    if-ge v0, v1, :cond_1

    .line 834
    :goto_0
    iget-object v0, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    iget v2, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v2}, Lo/describeContents;->onNavigationEvent(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 835
    iget v0, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v1

    iput v0, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    goto :goto_0

    .line 839
    :cond_0
    iget v0, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    .line 840
    iget-object v2, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v0, p1}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V

    .line 841
    iget p1, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    add-int/lit8 p1, p1, 0x1

    rem-int/2addr p1, v1

    iput p1, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    return v0

    .line 830
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Too many pending Fragment activity results."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static checkForValidRequestCode(I)V
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    if-nez p0, :cond_0

    return-void

    .line 714
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can only use lower 16 bits for requestCode"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private markFragmentsCreated()V
    .locals 2

    .line 989
    :cond_0
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-static {v0, v1}, Lo/onSessionEvent;->markState(Lo/requestExtraBinder;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void
.end method

.method private static markState(Lo/requestExtraBinder;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Z
    .locals 6

    .line 26896
    iget-object p0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p0

    .line 996
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 1000
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1001
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v3

    .line 1002
    invoke-static {v3, p1}, Lo/onSessionEvent;->markState(Lo/requestExtraBinder;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Z

    move-result v3

    or-int/2addr v1, v3

    .line 1004
    :cond_1
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lo/getMaxVolume;

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lo/getMaxVolume;

    .line 1005
    invoke-virtual {v3}, Lo/getMaxVolume;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v3

    invoke-virtual {v3}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v3

    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 27212
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    .line 1006
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lo/getMaxVolume;

    .line 28051
    iget-object v1, v1, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    .line 28118
    invoke-virtual {v1, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v1, 0x1

    .line 1009
    :cond_3
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Lo/setCallback;

    .line 28239
    iget-object v3, v3, Lo/setCallback;->ICustomTabsCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1009
    sget-object v5, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 29212
    invoke-virtual {v3, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_0

    .line 1010
    iget-object v1, v2, Landroidx/fragment/app/Fragment;->mLifecycleRegistry:Lo/setCallback;

    .line 30118
    invoke-virtual {v1, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 356
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 10134
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 10917
    iget-object v0, v0, Lo/requestExtraBinder;->onNavigationEvent:Lo/MediaControllerCompat$Callback$StubCompat;

    .line 10135
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 598
    invoke-super {p0, p1, p2, p3, p4}, Lo/onNavigationEvent;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 600
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    .line 601
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 603
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 604
    iget-boolean v1, p0, Lo/onSessionEvent;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 605
    iget-boolean v1, p0, Lo/onSessionEvent;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 606
    iget-boolean v1, p0, Lo/onSessionEvent;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 608
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 609
    invoke-static {p0}, Lo/getCallingPackage;->onNavigationEvent(Lo/toLegacyStreamType;)Lo/getCallingPackage;

    move-result-object v1

    invoke-virtual {v1, v0, p2, p3, p4}, Lo/getCallingPackage;->onPostMessage(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 24069
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 611
    invoke-virtual {v0, p1, p2, p3, p4}, Lo/requestExtraBinder;->extraCallback(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getSupportFragmentManager()Lo/requestExtraBinder;
    .locals 1

    .line 635
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 25069
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    return-object v0
.end method

.method public getSupportLoaderManager()Lo/getCallingPackage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 645
    invoke-static {p0}, Lo/getCallingPackage;->onNavigationEvent(Lo/toLegacyStreamType;)Lo/getCallingPackage;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 155
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 3142
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->onTransact()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 160
    iget-object v1, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v1, v0}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 161
    iget-object v2, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v2, v0}, Lo/describeContents;->onPostMessage(I)V

    const-string v0, "FragmentActivity"

    if-nez v1, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 163
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 166
    :cond_0
    iget-object v2, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 4092
    iget-object v2, v2, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v2, v2, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 4693
    iget-object v2, v2, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2, v1}, Lo/extraCallback$asBinder;->onNavigationEvent(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 168
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const v0, 0xffff

    and-int/2addr p1, v0

    .line 170
    invoke-virtual {v2, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    .line 175
    :cond_2
    invoke-static {}, Lo/getTitle;->onPostMessage()Lo/getTitle$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 176
    invoke-interface {v0, p0, p1, p2, p3}, Lo/getTitle$onMessageChannelReady;->onPostMessage(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 181
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lo/onNavigationEvent;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttachFragment(Landroidx/fragment/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 273
    invoke-super {p0, p1}, Lo/onNavigationEvent;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 274
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 6142
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->onTransact()V

    .line 275
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 6363
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->ICustomTabsCallback(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 283
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 7116
    iget-object v1, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    iget-object v2, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/postToHandler;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android:support:fragments"

    .line 286
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 7191
    iget-object v3, v2, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    instance-of v3, v3, Lo/removeOnActiveChangeListener;

    if-eqz v3, :cond_2

    .line 7196
    iget-object v2, v2, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v2, v2, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v2, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Landroid/os/Parcelable;)V

    const-string v1, "android:support:next_request_index"

    .line 290
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 292
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    const-string v1, "android:support:request_indicies"

    .line 293
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v2, "android:support:request_fragment_who"

    .line 294
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 295
    array-length v3, v1

    array-length v4, v2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 299
    :cond_0
    new-instance v3, Lo/describeContents;

    array-length v4, v1

    invoke-direct {v3, v4}, Lo/describeContents;-><init>(I)V

    iput-object v3, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    const/4 v3, 0x0

    .line 300
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 301
    iget-object v4, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    aget v5, v1, v3

    aget-object v6, v2, v3

    invoke-virtual {v4, v5, v6}, Lo/describeContents;->onPostMessage(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "FragmentActivity"

    const-string v2, "Invalid requestCode mapping in savedInstanceState."

    .line 297
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 7192
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 307
    :cond_3
    :goto_2
    iget-object v1, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    if-nez v1, :cond_4

    .line 308
    new-instance v1, Lo/describeContents;

    invoke-direct {v1}, Lo/describeContents;-><init>()V

    iput-object v1, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    .line 309
    iput v0, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    .line 312
    :cond_4
    invoke-super {p0, p1}, Lo/onNavigationEvent;->onCreate(Landroid/os/Bundle;)V

    .line 314
    iget-object p1, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 8130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 8131
    invoke-virtual {p1, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 315
    iget-object p1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 8236
    iget-object p1, p1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object p1, p1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 8581
    iput-boolean v0, p1, Lo/requestExtraBinder;->updateVisuals:Z

    .line 8582
    iput-boolean v0, p1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x1

    .line 8583
    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_0

    .line 324
    invoke-super {p0, p1, p2}, Lo/onNavigationEvent;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    .line 325
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    .line 9387
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0, p2, v1}, Lo/requestExtraBinder;->onPostMessage(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 328
    :cond_0
    invoke-super {p0, p1, p2}, Lo/onNavigationEvent;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 335
    invoke-virtual {p0, p1, p2, p3, p4}, Lo/onSessionEvent;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 337
    invoke-super {p0, p1, p2, p3, p4}, Lo/onNavigationEvent;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 346
    invoke-virtual {p0, v0, p1, p2, p3}, Lo/onSessionEvent;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 348
    invoke-super {p0, p1, p2, p3}, Lo/onNavigationEvent;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 364
    invoke-super {p0}, Lo/onNavigationEvent;->onDestroy()V

    .line 365
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 11330
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->extraCommand()V

    .line 366
    iget-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 12130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 12131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 374
    invoke-super {p0}, Lo/onNavigationEvent;->onLowMemory()V

    .line 375
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 12375
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->updateVisuals()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    .line 383
    invoke-super {p0, p1, p2}, Lo/onNavigationEvent;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 392
    :cond_1
    iget-object p1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 12425
    iget-object p1, p1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object p1, p1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {p1, p2}, Lo/requestExtraBinder;->onNavigationEvent(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 389
    :cond_2
    iget-object p1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 12412
    iget-object p1, p1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object p1, p1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {p1, p2}, Lo/requestExtraBinder;->extraCallback(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 1

    .line 250
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 5341
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->extraCallback(Z)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 436
    invoke-super {p0, p1}, Lo/onNavigationEvent;->onNewIntent(Landroid/content/Intent;)V

    .line 437
    iget-object p1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 14142
    iget-object p1, p1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object p1, p1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {p1}, Lo/requestExtraBinder;->onTransact()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 406
    :cond_0
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 12436
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0, p2}, Lo/requestExtraBinder;->ICustomTabsCallback(Landroid/view/Menu;)V

    .line 409
    :goto_0
    invoke-super {p0, p1, p2}, Lo/onNavigationEvent;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 417
    invoke-super {p0}, Lo/onNavigationEvent;->onPause()V

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lo/onSessionEvent;->mResumed:Z

    .line 419
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 13280
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    const/4 v1, 0x3

    .line 13605
    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    .line 420
    iget-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 14130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 14131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method public onPictureInPictureModeChanged(Z)V
    .locals 1

    .line 265
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 5352
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0, p1}, Lo/requestExtraBinder;->onNavigationEvent(Z)V

    return-void
.end method

.method public onPostResume()V
    .locals 0

    .line 466
    invoke-super {p0}, Lo/onNavigationEvent;->onPostResume()V

    .line 467
    invoke-virtual {p0}, Lo/onSessionEvent;->onResumeFragments()V

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 501
    invoke-super {p0, v0, p1, p2}, Lo/onNavigationEvent;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    .line 487
    invoke-virtual {p0, p2, p3}, Lo/onSessionEvent;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    .line 488
    iget-object p2, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 18399
    iget-object p2, p2, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object p2, p2, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {p2, p3}, Lo/requestExtraBinder;->extraCallback(Landroid/view/Menu;)Z

    move-result p2

    or-int/2addr p1, p2

    return p1

    .line 491
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/onNavigationEvent;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    .line 753
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 25142
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->onTransact()V

    shr-int/lit8 v0, p1, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 758
    iget-object v2, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v2, v0}, Lo/describeContents;->extraCallback(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 759
    iget-object v3, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v3, v0}, Lo/describeContents;->onPostMessage(I)V

    const-string v0, "FragmentActivity"

    if-nez v2, :cond_0

    const-string p1, "Activity result delivered for unknown Fragment."

    .line 761
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 764
    :cond_0
    iget-object v3, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 26092
    iget-object v3, v3, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v3, v3, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 26693
    iget-object v3, v3, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v3, v2}, Lo/extraCallback$asBinder;->onNavigationEvent(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_1

    .line 766
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Activity result no fragment exists for who: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    and-int/2addr p1, v1

    .line 768
    invoke-virtual {v3, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 455
    invoke-super {p0}, Lo/onNavigationEvent;->onResume()V

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lo/onSessionEvent;->mResumed:Z

    .line 457
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 16142
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v1}, Lo/requestExtraBinder;->onTransact()V

    .line 458
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 16447
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v1, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .line 477
    iget-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 17130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 17131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 478
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 17269
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    const/4 v1, 0x0

    .line 17599
    iput-boolean v1, v0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 17600
    iput-boolean v1, v0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v1, 0x4

    .line 17601
    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 509
    invoke-super {p0, p1}, Lo/onNavigationEvent;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 510
    invoke-direct {p0}, Lo/onSessionEvent;->markFragmentsCreated()V

    .line 511
    iget-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 19130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 19131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 512
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 19152
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->asInterface()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    .line 514
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 516
    :cond_0
    iget-object v0, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->onNavigationEvent()I

    move-result v0

    if-lez v0, :cond_2

    .line 517
    iget v0, p0, Lo/onSessionEvent;->mNextCandidateRequestIndex:I

    const-string v1, "android:support:next_request_index"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 519
    iget-object v0, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v0}, Lo/describeContents;->onNavigationEvent()I

    move-result v0

    new-array v0, v0, [I

    .line 520
    iget-object v1, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v1}, Lo/describeContents;->onNavigationEvent()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 521
    :goto_0
    iget-object v3, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v3}, Lo/describeContents;->onNavigationEvent()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 522
    iget-object v3, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v3, v2}, Lo/describeContents;->ICustomTabsCallback(I)I

    move-result v3

    aput v3, v0, v2

    .line 523
    iget-object v3, p0, Lo/onSessionEvent;->mPendingFragmentActivityResults:Lo/describeContents;

    invoke-virtual {v3, v2}, Lo/describeContents;->onMessageChannelReady(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v2, "android:support:request_indicies"

    .line 525
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    .line 526
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onStart()V
    .locals 4

    .line 535
    invoke-super {p0}, Lo/onNavigationEvent;->onStart()V

    const/4 v0, 0x0

    .line 537
    iput-boolean v0, p0, Lo/onSessionEvent;->mStopped:Z

    .line 539
    iget-boolean v1, p0, Lo/onSessionEvent;->mCreated:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 540
    iput-boolean v2, p0, Lo/onSessionEvent;->mCreated:Z

    .line 541
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 19247
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 19587
    iput-boolean v0, v1, Lo/requestExtraBinder;->updateVisuals:Z

    .line 19588
    iput-boolean v0, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v3, 0x2

    .line 19589
    invoke-virtual {v1, v3}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    .line 544
    :cond_0
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 20142
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v1}, Lo/requestExtraBinder;->onTransact()V

    .line 545
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 20447
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 549
    iget-object v1, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 21130
    invoke-static {v2}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    .line 21131
    invoke-virtual {v1, v2}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    .line 550
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 21258
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 21593
    iput-boolean v0, v1, Lo/requestExtraBinder;->updateVisuals:Z

    .line 21594
    iput-boolean v0, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x3

    .line 21595
    invoke-virtual {v1, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    .line 445
    iget-object v0, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 15142
    iget-object v0, v0, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v0, v0, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v0}, Lo/requestExtraBinder;->onTransact()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 558
    invoke-super {p0}, Lo/onNavigationEvent;->onStop()V

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lo/onSessionEvent;->mStopped:Z

    .line 561
    invoke-direct {p0}, Lo/onSessionEvent;->markFragmentsCreated()V

    .line 563
    iget-object v1, p0, Lo/onSessionEvent;->mFragments:Lo/MediaControllerCompat$Callback$MessageHandler;

    .line 22291
    iget-object v1, v1, Lo/MediaControllerCompat$Callback$MessageHandler;->onPostMessage:Lo/postToHandler;

    iget-object v1, v1, Lo/postToHandler;->extraCallback:Lo/requestExtraBinder;

    .line 22609
    iput-boolean v0, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x2

    .line 22610
    invoke-virtual {v1, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    .line 564
    iget-object v0, p0, Lo/onSessionEvent;->mFragmentLifecycleRegistry:Lo/setCallback;

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    .line 23130
    invoke-static {v1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    .line 23131
    invoke-virtual {v0, v1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method requestPermissionsFromFragment(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 853
    invoke-static {p0, p2, p3}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 856
    :cond_0
    invoke-static {p3}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 858
    :try_start_0
    iput-boolean v1, p0, Lo/onSessionEvent;->mRequestedPermissionsFromFragment:Z

    .line 859
    invoke-direct {p0, p1}, Lo/onSessionEvent;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v1

    shl-int/lit8 p1, p1, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    .line 860
    invoke-static {p0, p2, p1}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    iput-boolean v0, p0, Lo/onSessionEvent;->mRequestedPermissionsFromFragment:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lo/onSessionEvent;->mRequestedPermissionsFromFragment:Z

    .line 864
    throw p1
.end method

.method public setEnterSharedElementCallback(Lo/build;)V
    .locals 0

    .line 206
    invoke-static {p0, p1}, Lo/getTitle;->ICustomTabsCallback(Landroid/app/Activity;Lo/build;)V

    return-void
.end method

.method public setExitSharedElementCallback(Lo/build;)V
    .locals 0

    .line 219
    invoke-static {p0, p1}, Lo/getTitle;->extraCallback(Landroid/app/Activity;Lo/build;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 657
    iget-boolean v0, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 659
    invoke-static {p2}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 662
    :cond_0
    invoke-super {p0, p1, p2}, Lo/onNavigationEvent;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    .line 670
    iget-boolean v0, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 672
    invoke-static {p2}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 675
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lo/onNavigationEvent;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, p1, p2, p3, v0}, Lo/onSessionEvent;->startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x1

    .line 787
    iput-boolean v0, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p3, v1, :cond_0

    .line 790
    :try_start_0
    invoke-static {p0, p2, v1, p4}, Lo/getTitle;->ICustomTabsCallback(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    iput-boolean v2, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    return-void

    .line 793
    :cond_0
    :try_start_1
    invoke-static {p3}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 794
    invoke-direct {p0, p1}, Lo/onSessionEvent;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result p1

    add-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x10

    const v0, 0xffff

    and-int/2addr p3, v0

    add-int/2addr p1, p3

    .line 795
    invoke-static {p0, p2, p1, p4}, Lo/getTitle;->ICustomTabsCallback(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 798
    iput-boolean v2, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v2, p0, Lo/onSessionEvent;->mStartedActivityFromFragment:Z

    .line 799
    throw p1
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 684
    iget-boolean v0, p0, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 686
    invoke-static {p2}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 689
    :cond_0
    invoke-super/range {p0 .. p6}, Lo/onNavigationEvent;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .line 699
    iget-boolean v0, p0, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 701
    invoke-static {p2}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 704
    :cond_0
    invoke-super/range {p0 .. p7}, Lo/onNavigationEvent;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public startIntentSenderFromFragment(Landroidx/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v9, p0

    move v0, p3

    const/4 v1, 0x1

    .line 809
    iput-boolean v1, v9, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    const/4 v2, -0x1

    const/4 v10, 0x0

    if-ne v0, v2, :cond_0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 812
    :try_start_0
    invoke-static/range {v1 .. v8}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 822
    iput-boolean v10, v9, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    return-void

    .line 816
    :cond_0
    :try_start_1
    invoke-static {p3}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    .line 817
    invoke-direct {p0, p1}, Lo/onSessionEvent;->allocateRequestIndex(Landroidx/fragment/app/Fragment;)I

    move-result v2

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x10

    const v2, 0xffff

    and-int/2addr v0, v2

    add-int v3, v1, v0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    .line 818
    invoke-static/range {v1 .. v8}, Lo/getTitle;->onPostMessage(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 822
    iput-boolean v10, v9, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean v10, v9, Lo/onSessionEvent;->mStartedIntentSenderFromFragment:Z

    .line 823
    throw v0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    .line 194
    invoke-static {p0}, Lo/getTitle;->onMessageChannelReady(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 582
    invoke-virtual {p0}, Lo/onSessionEvent;->invalidateOptionsMenu()V

    return-void
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    .line 227
    invoke-static {p0}, Lo/getTitle;->ICustomTabsCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    .line 235
    invoke-static {p0}, Lo/getTitle;->extraCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 1

    .line 727
    iget-boolean v0, p0, Lo/onSessionEvent;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 729
    invoke-static {p1}, Lo/onSessionEvent;->checkForValidRequestCode(I)V

    :cond_0
    return-void
.end method
