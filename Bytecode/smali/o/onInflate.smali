.class public final Lo/onInflate;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0010\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u001a\u001a\u00020\u0012H\u0002J\u0010\u0010 \u001a\u00020\u001e2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0012R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0014\"\u0004\u0008\u0019\u0010\u0016R\u001a\u0010\u001a\u001a\u00020\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\"\u0004\u0008\u001c\u0010\u0016\u00a8\u0006!"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/ui/rating/StoreInAppRating;",
        "",
        "activity",
        "Landroid/app/Activity;",
        "(Landroid/app/Activity;)V",
        "getActivity",
        "()Landroid/app/Activity;",
        "manager",
        "Lcom/google/android/play/core/review/ReviewManager;",
        "getManager",
        "()Lcom/google/android/play/core/review/ReviewManager;",
        "reviewInfo",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        "getReviewInfo",
        "()Lcom/google/android/play/core/review/ReviewInfo;",
        "setReviewInfo",
        "(Lcom/google/android/play/core/review/ReviewInfo;)V",
        "reviewInfoError",
        "",
        "getReviewInfoError",
        "()Z",
        "setReviewInfoError",
        "(Z)V",
        "showOnResult",
        "getShowOnResult",
        "setShowOnResult",
        "showPlayStoreFallback",
        "getShowPlayStoreFallback",
        "setShowPlayStoreFallback",
        "openPlayStore",
        "",
        "show",
        "showInAppReview",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Landroid/app/Activity;

.field private final ICustomTabsCallback$Stub:Lo/writeSessionDevice;

.field public extraCallback:Z

.field onMessageChannelReady:Lo/getSessionFileProvider;

.field public onNavigationEvent:Z

.field onPostMessage:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "activity"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onInflate;->ICustomTabsCallback:Landroid/app/Activity;

    .line 15
    check-cast p1, Landroid/content/Context;

    .line 3000
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.google.android.play.core.common.PlayCoreDialogWrapperActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lo/extraCallback;->onPostMessage(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;I)V

    .line 4000
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    .line 2000
    :cond_0
    new-instance v0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;

    new-instance v1, Lo/requestChildFocus$onMessageChannelReady;

    invoke-direct {v1, p1}, Lo/requestChildFocus$onMessageChannelReady;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lo/releaseGlows$onPostMessage$onMessageChannelReady;-><init>(Lo/requestChildFocus$onMessageChannelReady;)V

    const-string p1, "ReviewManagerFactory.create(activity)"

    .line 15
    invoke-static {v0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lo/onInflate;->ICustomTabsCallback$Stub:Lo/writeSessionDevice;

    .line 18
    iput-boolean v2, p0, Lo/onInflate;->onNavigationEvent:Z

    .line 21
    invoke-interface {v0}, Lo/writeSessionDevice;->onNavigationEvent()Lo/getMinidumpFile;

    move-result-object p1

    const-string v0, "manager.requestReviewFlow()"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lo/onInflate$4;

    invoke-direct {v0, p0}, Lo/onInflate$4;-><init>(Lo/onInflate;)V

    check-cast v0, Lo/MissingNativeComponent$1;

    invoke-virtual {p1, v0}, Lo/getMinidumpFile;->onNavigationEvent(Lo/MissingNativeComponent$1;)Lo/getMinidumpFile;

    return-void
.end method


# virtual methods
.method public final onPostMessage(Z)V
    .locals 5

    .line 43
    iget-object v0, p0, Lo/onInflate;->onMessageChannelReady:Lo/getSessionFileProvider;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 45
    iget-object v2, p0, Lo/onInflate;->ICustomTabsCallback$Stub:Lo/writeSessionDevice;

    iget-object v3, p0, Lo/onInflate;->ICustomTabsCallback:Landroid/app/Activity;

    iget-object v4, p0, Lo/onInflate;->onMessageChannelReady:Lo/getSessionFileProvider;

    if-nez v4, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    invoke-interface {v2, v3, v4}, Lo/writeSessionDevice;->onMessageChannelReady(Landroid/app/Activity;Lo/getSessionFileProvider;)Lo/getMinidumpFile;

    move-result-object v2

    const-string v3, "manager.launchReviewFlow(activity, reviewInfo!!)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v3, Lo/onInflate$onNavigationEvent;

    invoke-direct {v3, p0, p1, v0, v1}, Lo/onInflate$onNavigationEvent;-><init>(Lo/onInflate;ZJ)V

    check-cast v3, Lo/MissingNativeComponent$1;

    invoke-virtual {v2, v3}, Lo/getMinidumpFile;->onNavigationEvent(Lo/MissingNativeComponent$1;)Lo/getMinidumpFile;

    move-result-object p1

    const-string v0, "flow.addOnCompleteListen\u2026r app flow.\n            }"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_1
    iget-boolean p1, p0, Lo/onInflate;->onPostMessage:Z

    if-eqz p1, :cond_2

    .line 1060
    iget-object p1, p0, Lo/onInflate;->ICustomTabsCallback:Landroid/app/Activity;

    check-cast p1, Landroid/content/Context;

    const-string v0, "com.dreamplug.androidapp"

    invoke-static {p1, v0}, Lo/extraCallback;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
