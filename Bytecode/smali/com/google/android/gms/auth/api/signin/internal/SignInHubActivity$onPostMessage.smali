.class final Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getCallingPackage$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getCallingPackage$ICustomTabsCallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;B)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)V

    return-void
.end method


# virtual methods
.method public final onCreateLoader(ILandroid/os/Bundle;)Lo/getCurrentControllerInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lo/getCurrentControllerInfo<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance p1, Lo/setBankCode;

    iget-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 3
    invoke-static {}, Lo/getPaymentMode;->onMessageChannelReady()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lo/setBankCode;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object p1
.end method

.method public final synthetic onLoadFinished(Lo/getCurrentControllerInfo;Ljava/lang/Object;)V
    .locals 1

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 1092
    iget p2, p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onNavigationEvent:I

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    .line 1093
    iget-object v0, v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->extraCallback:Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 8
    iget-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onLoaderReset(Lo/getCurrentControllerInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getCurrentControllerInfo<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
