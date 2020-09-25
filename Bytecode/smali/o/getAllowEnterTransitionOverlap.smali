.class public interface abstract Lo/getAllowEnterTransitionOverlap;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAllowEnterTransitionOverlap$ICustomTabsCallback;,
        Lo/getAllowEnterTransitionOverlap$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008f\u0018\u0000 &2\u00020\u0001:\u0001&J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H&J\u0018\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H&J\u0008\u0010\u0019\u001a\u00020\u0010H\u0016J\u0016\u0010\u001a\u001a\u00020\u00102\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cH\u0016J\u001c\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020 2\n\u0008\u0002\u0010!\u001a\u0004\u0018\u00010\u0012H\u0016J,\u0010\"\u001a\u00020\u00102\u0008\u0010#\u001a\u0004\u0018\u00010\u00122\u0008\u0010$\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010%\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0006\u001a\u00020\u0007H\u0016R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0018\u0010\n\u001a\u00020\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/cm/TriggerAuthFlowListener;",
        "",
        "authWebviewContainerId",
        "",
        "getAuthWebviewContainerId",
        "()I",
        "googleSignInClient",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;",
        "getGoogleSignInClient",
        "()Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;",
        "isRecommendedEmailValid",
        "",
        "()Z",
        "setRecommendedEmailValid",
        "(Z)V",
        "authorizeThirdParty",
        "",
        "code",
        "",
        "provider",
        "checkAndTriggerAuthFlow",
        "name",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "googleLoginWithoutRecommendedEmail",
        "handleSignInResult",
        "completedTask",
        "Lcom/google/android/gms/tasks/Task;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;",
        "initGoogleClient",
        "activity",
        "Landroid/app/Activity;",
        "email",
        "triggerAuthWebView",
        "loginUrl",
        "redirectUrl",
        "triggerGoogleAuth",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lo/getAllowEnterTransitionOverlap$onNavigationEvent;->onPostMessage:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;

    sput-object v0, Lo/getAllowEnterTransitionOverlap;->ICustomTabsCallback:Lo/getAllowEnterTransitionOverlap$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public abstract extraCallback()Lo/getBankCode;
.end method

.method public abstract onMessageChannelReady()Landroidx/fragment/app/Fragment;
.end method

.method public abstract onMessageChannelReady(Landroid/app/Activity;Ljava/lang/String;)Lo/getBankCode;
.end method

.method public abstract onMessageChannelReady(Landroidx/fragment/app/Fragment;Lo/getBankCode;)V
.end method

.method public abstract onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onNavigationEvent()V
.end method

.method public abstract onPostMessage()Z
.end method

.method public abstract onRelationshipValidationResult()V
.end method
