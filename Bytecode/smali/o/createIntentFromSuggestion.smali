.class public final Lo/createIntentFromSuggestion;
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
        "\u0000\u001a\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a\u0008\u0010\t\u001a\u00020\nH\u0000\u001a\u0008\u0010\u000b\u001a\u00020\u0004H\u0002\u001a\u0008\u0010\u000c\u001a\u00020\u0004H\u0000\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0001X\u0080T\u00a2\u0006\u0002\n\u0000\"\u0014\u0010\u0003\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0014\u0010\u0007\u001a\u00020\u0004X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "DEV_LOG_PREFIX",
        "",
        "SDK_LOG_PREFIX",
        "devLogger",
        "Lcom/datadog/android/log/Logger;",
        "getDevLogger",
        "()Lcom/datadog/android/log/Logger;",
        "sdkLogger",
        "getSdkLogger",
        "buildDevLogHandler",
        "Lcom/datadog/android/log/internal/logger/ConditionalLogHandler;",
        "buildDevLogger",
        "buildSdkLogger",
        "dd-sdk-android_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback:Lo/onQueryTextChange;

.field private static final onMessageChannelReady:Lo/onQueryTextChange;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1020
    sget-object v0, Lo/isQueryRefinementEnabled;->ICustomTabsCallback:Ljava/lang/Boolean;

    const-string v1, "BuildConfig.LOGCAT_ENABLED"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1021
    new-instance v0, Lo/performCompletion;

    const/4 v1, 0x1

    const-string v2, "DD_LOG"

    invoke-direct {v0, v2, v1}, Lo/performCompletion;-><init>(Ljava/lang/String;Z)V

    check-cast v0, Lo/getSearchViewTextMinWidthDp;

    goto :goto_0

    .line 1023
    :cond_0
    sget-object v0, Lo/ensureImeVisible;->extraCallback:Lo/ensureImeVisible;

    check-cast v0, Lo/getSearchViewTextMinWidthDp;

    .line 1025
    :goto_0
    new-instance v1, Lo/onQueryTextChange;

    invoke-direct {v1, v0}, Lo/onQueryTextChange;-><init>(Lo/getSearchViewTextMinWidthDp;)V

    .line 17
    sput-object v1, Lo/createIntentFromSuggestion;->ICustomTabsCallback:Lo/onQueryTextChange;

    .line 1035
    new-instance v0, Lo/onQueryTextChange;

    .line 1039
    new-instance v1, Lo/onFocusChanged;

    .line 1040
    new-instance v2, Lo/performCompletion;

    const/4 v3, 0x0

    const-string v4, "Datadog"

    invoke-direct {v2, v4, v3}, Lo/performCompletion;-><init>(Ljava/lang/String;Z)V

    check-cast v2, Lo/getSearchViewTextMinWidthDp;

    .line 1041
    sget-object v3, Lo/createIntentFromSuggestion$extraCallback;->onNavigationEvent:Lo/createIntentFromSuggestion$extraCallback;

    check-cast v3, Lo/nextTransactionOrder;

    .line 1039
    invoke-direct {v1, v2, v3}, Lo/onFocusChanged;-><init>(Lo/getSearchViewTextMinWidthDp;Lo/nextTransactionOrder;)V

    .line 1035
    check-cast v1, Lo/getSearchViewTextMinWidthDp;

    invoke-direct {v0, v1}, Lo/onQueryTextChange;-><init>(Lo/getSearchViewTextMinWidthDp;)V

    .line 32
    sput-object v0, Lo/createIntentFromSuggestion;->onMessageChannelReady:Lo/onQueryTextChange;

    return-void
.end method

.method public static final extraCallback()Lo/onQueryTextChange;
    .locals 1

    .line 17
    sget-object v0, Lo/createIntentFromSuggestion;->ICustomTabsCallback:Lo/onQueryTextChange;

    return-object v0
.end method

.method public static final onMessageChannelReady()Lo/onQueryTextChange;
    .locals 1

    .line 32
    sget-object v0, Lo/createIntentFromSuggestion;->onMessageChannelReady:Lo/onQueryTextChange;

    return-object v0
.end method
