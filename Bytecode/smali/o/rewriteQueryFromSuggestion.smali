.class public final Lo/rewriteQueryFromSuggestion;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source ""

# interfaces
.implements Lo/onActionViewExpanded;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\nH\u0002J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/net/info/CallbackNetworkInfoProvider;",
        "Landroid/net/ConnectivityManager$NetworkCallback;",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "()V",
        "networkInfo",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo;",
        "getLatestNetworkInfo",
        "getNetworkType",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfo$Connectivity;",
        "networkCapabilities",
        "Landroid/net/NetworkCapabilities;",
        "getStrength",
        "",
        "onCapabilitiesChanged",
        "",
        "network",
        "Landroid/net/Network;",
        "onLost",
        "register",
        "context",
        "Landroid/content/Context;",
        "unregister",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:Lo/adjustDropDownSizeAndPosition;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 19
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 23
    new-instance v8, Lo/adjustDropDownSizeAndPosition;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3f

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    iput-object v8, p0, Lo/rewriteQueryFromSuggestion;->extraCallback:Lo/adjustDropDownSizeAndPosition;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 61
    move-object v0, p0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    .line 60
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 9

    const-string v0, "network"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkCapabilities"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 29
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCapabilitiesChanged "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x20

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/onQueryTextChange;->onMessageChannelReady(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 31
    new-instance p1, Lo/adjustDropDownSizeAndPosition;

    const/4 v0, 0x1

    .line 1081
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    sget-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->extraCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    :goto_0
    move-object v2, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    .line 1083
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1084
    sget-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->onPostMessage:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1085
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1086
    sget-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->onRelationshipValidationResult:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_0

    .line 1088
    :cond_2
    sget-object v0, Lo/adjustDropDownSizeAndPosition$extraCallback;->asBinder:Lo/adjustDropDownSizeAndPosition$extraCallback;

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 33
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v5

    .line 34
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v6

    .line 2073
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 2074
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result p2

    move v7, p2

    goto :goto_2

    :cond_3
    const/high16 p2, -0x80000000

    const/high16 v7, -0x80000000

    :goto_2
    const/4 v8, 0x6

    move-object v1, p1

    .line 31
    invoke-direct/range {v1 .. v8}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    iput-object p1, p0, Lo/rewriteQueryFromSuggestion;->extraCallback:Lo/adjustDropDownSizeAndPosition;

    return-void
.end method

.method public final onLost(Landroid/net/Network;)V
    .locals 9

    const-string v0, "network"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 41
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "onLost "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lo/onQueryTextChange;->onNavigationEvent(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 43
    new-instance p1, Lo/adjustDropDownSizeAndPosition;

    .line 44
    sget-object v2, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    move-object v1, p1

    .line 43
    invoke-direct/range {v1 .. v8}, Lo/adjustDropDownSizeAndPosition;-><init>(Lo/adjustDropDownSizeAndPosition$extraCallback;Ljava/lang/String;IIIII)V

    iput-object p1, p0, Lo/rewriteQueryFromSuggestion;->extraCallback:Lo/adjustDropDownSizeAndPosition;

    return-void
.end method

.method public final onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/rewriteQueryFromSuggestion;->extraCallback:Lo/adjustDropDownSizeAndPosition;

    return-object v0
.end method

.method public final onPostMessage(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivity"

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/net/ConnectivityManager;

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void

    .line 54
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
