.class public Lo/releaseGlows$onPostMessage$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/writeSessionDevice;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/releaseGlows$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
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
.field private final ICustomTabsCallback:Landroid/os/Handler;

.field private final onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/requestChildFocus$onMessageChannelReady;)V
    .locals 2

    .line 3000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Landroid/os/Handler;

    iput-object p1, p0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public extraCallback()V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Landroid/app/Activity;Lo/getSessionFileProvider;)Lo/getMinidumpFile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/getSessionFileProvider;",
            ")",
            "Lo/getMinidumpFile<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9000
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/play/core/common/PlayCoreDialogWrapperActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2}, Lo/getSessionFileProvider;->extraCallback()Landroid/app/PendingIntent;

    move-result-object p2

    const-string v1, "confirmation_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    new-instance p2, Lo/doOnboarding;

    invoke-direct {p2}, Lo/doOnboarding;-><init>()V

    new-instance v1, Lo/writeSessionOs;

    iget-object v2, p0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->ICustomTabsCallback:Landroid/os/Handler;

    invoke-direct {v1, v2, p2}, Lo/writeSessionOs;-><init>(Landroid/os/Handler;Lo/doOnboarding;)V

    const-string/jumbo v2, "result_receiver"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 10000
    iget-object p1, p2, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object p1
.end method

.method public onMessageChannelReady()V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent()Lo/getMinidumpFile;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getMinidumpFile<",
            "Lo/getSessionFileProvider;",
            ">;"
        }
    .end annotation

    .line 4000
    iget-object v0, p0, Lo/releaseGlows$onPostMessage$onMessageChannelReady;->onNavigationEvent:Lo/requestChildFocus$onMessageChannelReady;

    .line 5000
    sget-object v1, Lo/requestChildFocus$onMessageChannelReady;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v0, Lo/requestChildFocus$onMessageChannelReady;->onMessageChannelReady:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "requestInAppReview (%s)"

    invoke-virtual {v1, v3, v2}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lo/doOnboarding;

    invoke-direct {v1}, Lo/doOnboarding;-><init>()V

    iget-object v2, v0, Lo/requestChildFocus$onMessageChannelReady;->extraCallback:Lo/isSet;

    new-instance v3, Lo/writeSessionApp;

    invoke-direct {v3, v0, v1, v1}, Lo/writeSessionApp;-><init>(Lo/requestChildFocus$onMessageChannelReady;Lo/doOnboarding;Lo/doOnboarding;)V

    .line 6000
    new-instance v0, Lo/optionalProvider;

    .line 7000
    iget-object v4, v3, Lo/removeDependent;->extraCallback:Lo/doOnboarding;

    .line 6000
    invoke-direct {v0, v2, v4, v3}, Lo/optionalProvider;-><init>(Lo/isSet;Lo/doOnboarding;Lo/removeDependent;)V

    invoke-virtual {v2, v0}, Lo/isSet;->extraCallback(Lo/removeDependent;)V

    .line 8000
    iget-object v0, v1, Lo/doOnboarding;->extraCallback:Lo/Onboarding;

    return-object v0
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method
