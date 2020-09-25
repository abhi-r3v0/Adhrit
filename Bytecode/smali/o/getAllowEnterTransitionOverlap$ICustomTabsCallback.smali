.class public final Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAllowEnterTransitionOverlap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Landroid/content/res/Resources;

.field public asBinder:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public extraCallback:Lo/AFFacebookDeferredDeeplink$5;

.field public onMessageChannelReady:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field public onNavigationEvent:Ljava/util/concurrent/Executor;

.field public onPostMessage:Lo/BECampaign;

.field public onRelationshipValidationResult:Lo/getRotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRotation<",
            "Lo/AFFacebookDeferredDeeplink$5;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extraCallback(Landroidx/fragment/app/Fragment;Lo/getBankCode;)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "googleSignInClient"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11030
    invoke-virtual {p1}, Lo/setPaymentDueDateWeaklyTyped;->asGoogleApiClient()Lo/getPaymentMode;

    move-result-object v0

    .line 11031
    invoke-virtual {p1}, Lo/setPaymentDueDateWeaklyTyped;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 11032
    invoke-virtual {p1}, Lo/getBankCode;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 11033
    :goto_0
    invoke-static {v0, v1, v2}, Lo/setBin;->onMessageChannelReady(Lo/getPaymentMode;Landroid/content/Context;Z)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object v0

    .line 12008
    new-instance v1, Lo/ReferredPendingPersonData;

    invoke-direct {v1}, Lo/ReferredPendingPersonData;-><init>()V

    invoke-static {v0, v1}, Lo/getPaymentItem;->onMessageChannelReady(Lo/getPaymentDueDateWeaklyTyped;Lo/getPaymentItem$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;

    .line 73
    invoke-virtual {p1}, Lo/getBankCode;->extraCallback()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "googleSignInClient.signInIntent"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    sget-object v0, Lo/getAllowEnterTransitionOverlap;->ICustomTabsCallback:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;

    const/16 v0, 0x7b

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static extraCallback(Lo/getAllowEnterTransitionOverlap;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 4

    const-string v0, "name"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x41efe113

    if-eq v0, v1, :cond_1

    const v1, 0x6d6c840

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "yahoo"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 3000
    sget-object v1, Lo/isInLayout;->getServiceComponent:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x36

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&nonce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 4000
    sget-object v1, Lo/isInLayout;->getSessionToken:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x37

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 38
    invoke-static {p0, v0, v1, p1, p2}, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onNavigationEvent(Lo/getAllowEnterTransitionOverlap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void

    :cond_1
    const-string v0, "outlook"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 1000
    sget-object v0, Lo/isInLayout;->getExtras:Lo/isDetached;

    sget-object v1, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v2, 0x34

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    sget-object v1, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 2000
    sget-object v1, Lo/isInLayout;->isConnected:Lo/isDetached;

    sget-object v2, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v3, 0x35

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 35
    invoke-static {p0, v0, v1, p1, p2}, Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;->onNavigationEvent(Lo/getAllowEnterTransitionOverlap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 42
    :cond_2
    :goto_0
    invoke-interface {p0}, Lo/getAllowEnterTransitionOverlap;->extraCallback()Lo/getBankCode;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/getBankCode;)V

    return-void
.end method

.method public static onNavigationEvent(Lo/getAllowEnterTransitionOverlap;Lcom/google/android/gms/tasks/Task;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getAllowEnterTransitionOverlap;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
            ">;)V"
        }
    .end annotation

    const-string v0, "completedTask"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz p1, :cond_1

    .line 12067
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "it"

    .line 88
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "google"

    invoke-interface {p0, p1, v0}, Lo/getAllowEnterTransitionOverlap;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "ActivateCredProtectFragment"

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "signInResult:failed code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13008
    iget-object v2, p1, Lcom/google/android/gms/common/api/ApiException;->extraCallback:Lcom/google/android/gms/common/api/Status;

    .line 13024
    iget v2, v2, Lcom/google/android/gms/common/api/Status;->asBinder:I

    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "tag"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13078
    invoke-static {v0, v1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    .line 14008
    iget-object p1, p1, Lcom/google/android/gms/common/api/ApiException;->extraCallback:Lcom/google/android/gms/common/api/Status;

    .line 14024
    iget p1, p1, Lcom/google/android/gms/common/api/Status;->asBinder:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 97
    invoke-interface {p0}, Lo/getAllowEnterTransitionOverlap;->onNavigationEvent()V

    .line 98
    invoke-interface {p0}, Lo/getAllowEnterTransitionOverlap;->onRelationshipValidationResult()V

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(Lo/getAllowEnterTransitionOverlap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 61
    sget-object p0, Lo/onFailedToRecycleView;->onMessageChannelReady:Lo/onFailedToRecycleView$onMessageChannelReady;

    new-instance p0, Lo/onFailedToRecycleView$onNavigationEvent;

    invoke-direct {p0, p1, p2, p3}, Lo/onFailedToRecycleView$onNavigationEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lo/onFailedToRecycleView$onMessageChannelReady;->onPostMessage(Lo/onFailedToRecycleView$onNavigationEvent;)Lo/onFailedToRecycleView;

    move-result-object p0

    .line 63
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 9464
    new-instance p2, Lo/binderDied;

    invoke-direct {p2, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const p1, 0x7f010047

    .line 9571
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    const p1, 0x7f010048

    .line 9572
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    const/4 p1, 0x0

    .line 9573
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    .line 9574
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    .line 66
    check-cast p0, Landroidx/fragment/app/Fragment;

    const-string p1, "auth"

    const p3, 0x7f0b01ff

    const/4 p4, 0x2

    .line 10343
    invoke-virtual {p2, p3, p0, p1, p4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 10651
    iget-boolean p0, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    .line 10655
    iput-boolean p0, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 10656
    iput-object p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 68
    invoke-virtual {p2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 10652
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onPostMessage(Lo/getAllowEnterTransitionOverlap;Landroid/app/Activity;Ljava/lang/String;)Lo/getBankCode;
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 49
    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130275

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 4032
    iput-boolean v2, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onMessageChannelReady:Z

    .line 4033
    invoke-virtual {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 4034
    iput-boolean v2, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->extraCallback:Z

    .line 5021
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v1, Lo/onActivityPostResumed;->onPostMessage:Lo/onActivityPostResumed$extraCallback;

    .line 5291
    invoke-static {}, Lo/onActivityPostResumed;->onTransact()Lcom/google/android/gms/common/api/Scope;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/google/android/gms/common/api/Scope;

    .line 6025
    iget-object v3, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6026
    iget-object v1, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onPostMessage:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    if-eqz p2, :cond_1

    .line 53
    invoke-interface {p0}, Lo/getAllowEnterTransitionOverlap;->onPostMessage()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6036
    new-instance p0, Landroid/accounts/Account;

    .line 7004
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google"

    .line 6036
    invoke-direct {p0, p2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p0, v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->ICustomTabsCallback:Landroid/accounts/Account;

    goto :goto_0

    .line 7005
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given String is empty or null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$onPostMessage;->onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p0

    .line 8003
    new-instance p2, Lo/getBankCode;

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {p2, p1, p0}, Lo/getBankCode;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string p0, "GoogleSignIn.getClient(activity, gso.build())"

    .line 57
    invoke-static {p2, p0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p2
.end method
