.class public final Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;,
        Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;,
        Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG:Ljava/lang/String; = "FirestoreOnStopObserverFragment"

.field private static final SUPPORT_FRAGMENT_TAG:Ljava/lang/String; = "FirestoreOnStopObserverSupportFragment"


# instance fields
.field private final arg$1:Lo/access$lambda$6;

.field private final arg$2:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lo/access$lambda$6;Z)V
    .locals 0

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->arg$1:Lo/access$lambda$6;

    iput-boolean p2, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->arg$2:Z

    return-void
.end method

.method public static bind(Landroid/app/Activity;Lo/getNdkPayload;)Lo/getNdkPayload;
    .locals 1

    if-eqz p0, :cond_1

    .line 191
    instance-of v0, p0, Lo/onSessionEvent;

    if-eqz v0, :cond_0

    .line 192
    check-cast p0, Lo/onSessionEvent;

    invoke-static {p1}, Lo/getItemDelegate$asBinder;->lambdaFactory$(Lo/getNdkPayload;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p0, v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->onFragmentActivityStopCallOnce(Lo/onSessionEvent;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-static {p1}, Lo/dispatchChangeStarting$onPostMessage;->lambdaFactory$(Lo/getNdkPayload;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {p0, v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->onActivityStopCallOnce(Landroid/app/Activity;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method private static castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 116
    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment with tag \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' is a "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " but should be a "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$onActivityStopCallOnce$0(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 142
    const-class v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FirestoreOnStopObserverFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 143
    invoke-static {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    :cond_0
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;

    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;-><init>()V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 153
    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 154
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 159
    :cond_1
    iget-object p0, v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$extraCallback;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic lambda$onFragmentActivityStopCallOnce$1(Lo/onSessionEvent;Ljava/lang/Runnable;)V
    .locals 5

    .line 166
    const-class v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;

    .line 169
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    const-string v2, "FirestoreOnStopObserverSupportFragment"

    invoke-virtual {v1, v2}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 167
    invoke-static {v0, v1, v2}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->castFragment(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isRemoving()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;

    invoke-direct {v0}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;-><init>()V

    .line 175
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 1464
    new-instance v3, Lo/binderDied;

    invoke-direct {v3, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 2171
    invoke-virtual {v3, v1, v0, v2, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 178
    invoke-virtual {v3}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onNavigationEvent()I

    .line 180
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object p0

    .line 2489
    invoke-virtual {p0, v4}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 2490
    invoke-virtual {p0}, Lo/requestExtraBinder;->onRelationshipValidationResult()V

    .line 183
    :cond_1
    iget-object p0, v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onMessageChannelReady;->callbacks:Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;

    invoke-virtual {p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder$onNavigationEvent;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static lambdaFactory$(Lo/access$lambda$6;Z)Ljava/lang/Runnable;
    .locals 1

    .line 5000
    new-instance v0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;

    invoke-direct {v0, p0, p1}, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;-><init>(Lo/access$lambda$6;Z)V

    return-object v0
.end method

.method private static onActivityStopCallOnce(Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3

    .line 136
    instance-of v0, p0, Lo/onSessionEvent;

    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onActivityStopCallOnce must be called with a *non*-FragmentActivity Activity."

    invoke-static {v0, v2, v1}, Lo/toStringMap$onPostMessage;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 140
    invoke-static {p0, p1}, Lo/isBound$ICustomTabsCallback;->lambdaFactory$(Landroid/app/Activity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static onFragmentActivityStopCallOnce(Lo/onSessionEvent;Ljava/lang/Runnable;)V
    .locals 0

    .line 164
    invoke-static {p0, p1}, Lo/getItemDelegate$onMessageChannelReady;->lambdaFactory$(Lo/onSessionEvent;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 4000
    iget-object v0, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->arg$1:Lo/access$lambda$6;

    iget-boolean v1, p0, Lo/AutoValue_CrashlyticsReport_FilesPayload_File$Builder;->arg$2:Z

    invoke-static {v0, v1}, Lo/access$lambda$6;->lambda$doRegistrationOrRefresh$2(Lo/access$lambda$6;Z)V

    return-void
.end method
