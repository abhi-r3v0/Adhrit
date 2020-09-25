.class public final Lo/updateFocusedState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/updateFocusedState$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B-\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0008\u0010\u0013\u001a\u00020\u000eH\u0002J\u0008\u0010\u0014\u001a\u00020\u0010H\u0002J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0016H\u0002J\u0008\u0010\u0018\u001a\u00020\u0010H\u0016R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/data/upload/DataUploadRunnable;",
        "Lcom/datadog/android/core/internal/data/upload/UploadRunnable;",
        "handler",
        "Landroid/os/Handler;",
        "reader",
        "Lcom/datadog/android/core/internal/data/Reader;",
        "dataUploader",
        "Lcom/datadog/android/core/internal/net/DataUploader;",
        "networkInfoProvider",
        "Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;",
        "systemInfoProvider",
        "Lcom/datadog/android/core/internal/system/SystemInfoProvider;",
        "(Landroid/os/Handler;Lcom/datadog/android/core/internal/data/Reader;Lcom/datadog/android/core/internal/net/DataUploader;Lcom/datadog/android/core/internal/net/info/NetworkInfoProvider;Lcom/datadog/android/core/internal/system/SystemInfoProvider;)V",
        "currentDelayInterval",
        "",
        "consumeBatch",
        "",
        "batch",
        "Lcom/datadog/android/core/internal/domain/Batch;",
        "decreaseInterval",
        "delayTheRunnable",
        "isNetworkAvailable",
        "",
        "isSystemReady",
        "run",
        "Companion",
        "dd-sdk-android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final ICustomTabsCallback$Stub:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/onVoiceClicked;",
            ">;"
        }
    .end annotation
.end field

.field private static final onRelationshipValidationResult:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/launchIntent$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Lo/getChildBoundsWithinSearchView;

.field private final asInterface:Lo/launchQuerySearch;

.field private final extraCallback:Landroid/os/Handler;

.field private final onMessageChannelReady:Lo/onActionViewExpanded;

.field private final onNavigationEvent:Lo/onCloseClicked;

.field private onPostMessage:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Lo/onVoiceClicked;

    .line 96
    sget-object v1, Lo/onVoiceClicked;->onNavigationEvent:Lo/onVoiceClicked;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 97
    sget-object v1, Lo/onVoiceClicked;->extraCallback:Lo/onVoiceClicked;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 98
    sget-object v1, Lo/onVoiceClicked;->onMessageChannelReady:Lo/onVoiceClicked;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 99
    sget-object v1, Lo/onVoiceClicked;->onTransact:Lo/onVoiceClicked;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "elements"

    .line 95
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6044
    invoke-static {v0}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 95
    sput-object v0, Lo/updateFocusedState;->ICustomTabsCallback$Stub:Ljava/util/Set;

    new-array v0, v4, [Lo/launchIntent$onPostMessage;

    .line 103
    sget-object v4, Lo/launchIntent$onPostMessage;->extraCallback:Lo/launchIntent$onPostMessage;

    aput-object v4, v0, v2

    .line 104
    sget-object v2, Lo/launchIntent$onPostMessage;->onPostMessage:Lo/launchIntent$onPostMessage;

    aput-object v2, v0, v3

    .line 102
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7044
    invoke-static {v0}, Lo/isStopped;->onPostMessage([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 102
    sput-object v0, Lo/updateFocusedState;->onRelationshipValidationResult:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lo/getChildBoundsWithinSearchView;Lo/onCloseClicked;Lo/onActionViewExpanded;Lo/launchQuerySearch;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataUploader"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkInfoProvider"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "systemInfoProvider"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/updateFocusedState;->extraCallback:Landroid/os/Handler;

    iput-object p2, p0, Lo/updateFocusedState;->ICustomTabsCallback:Lo/getChildBoundsWithinSearchView;

    iput-object p3, p0, Lo/updateFocusedState;->onNavigationEvent:Lo/onCloseClicked;

    iput-object p4, p0, Lo/updateFocusedState;->onMessageChannelReady:Lo/onActionViewExpanded;

    iput-object p5, p0, Lo/updateFocusedState;->asInterface:Lo/launchQuerySearch;

    const-wide/16 p1, 0x1388

    .line 30
    iput-wide p1, p0, Lo/updateFocusedState;->onPostMessage:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1050
    iget-object v0, p0, Lo/updateFocusedState;->onMessageChannelReady:Lo/onActionViewExpanded;

    invoke-interface {v0}, Lo/onActionViewExpanded;->onMessageChannelReady()Lo/adjustDropDownSizeAndPosition;

    move-result-object v0

    .line 2010
    iget-object v0, v0, Lo/adjustDropDownSizeAndPosition;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    .line 1051
    sget-object v1, Lo/adjustDropDownSizeAndPosition$extraCallback;->ICustomTabsCallback:Lo/adjustDropDownSizeAndPosition$extraCallback;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 2055
    iget-object v0, p0, Lo/updateFocusedState;->asInterface:Lo/launchQuerySearch;

    invoke-interface {v0}, Lo/launchQuerySearch;->extraCallback()Lo/launchIntent;

    move-result-object v0

    .line 2056
    sget-object v1, Lo/updateFocusedState;->onRelationshipValidationResult:Ljava/util/Set;

    .line 3012
    iget-object v4, v0, Lo/launchIntent;->onMessageChannelReady:Lo/launchIntent$onPostMessage;

    .line 2056
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 3013
    iget v4, v0, Lo/launchIntent;->onNavigationEvent:I

    .line 3014
    iget-boolean v0, v0, Lo/launchIntent;->ICustomTabsCallback:Z

    if-nez v1, :cond_1

    const/16 v1, 0xa

    if-le v4, v1, :cond_2

    :cond_1
    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    .line 36
    iget-object v0, p0, Lo/updateFocusedState;->ICustomTabsCallback:Lo/getChildBoundsWithinSearchView;

    invoke-interface {v0}, Lo/getChildBoundsWithinSearchView;->onPostMessage()Lo/postUpdateFocusedState;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 4013
    iget-object v1, v0, Lo/postUpdateFocusedState;->ICustomTabsCallback:Ljava/lang/String;

    .line 3075
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Sending batch "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lo/onQueryTextChange;->onNavigationEvent(Lo/onQueryTextChange;Ljava/lang/String;)V

    .line 3076
    iget-object v2, p0, Lo/updateFocusedState;->onNavigationEvent:Lo/onCloseClicked;

    .line 4014
    iget-object v0, v0, Lo/postUpdateFocusedState;->extraCallback:[B

    .line 3076
    invoke-interface {v2, v0}, Lo/onCloseClicked;->onMessageChannelReady([B)Lo/onVoiceClicked;

    move-result-object v0

    .line 3077
    iget-object v2, p0, Lo/updateFocusedState;->onNavigationEvent:Lo/onCloseClicked;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dataUploader.javaClass.simpleName"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lo/onVoiceClicked;->onNavigationEvent(Ljava/lang/String;)V

    .line 3078
    sget-object v2, Lo/updateFocusedState;->ICustomTabsCallback$Stub:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3079
    iget-object v0, p0, Lo/updateFocusedState;->ICustomTabsCallback:Lo/getChildBoundsWithinSearchView;

    invoke-interface {v0, v1}, Lo/getChildBoundsWithinSearchView;->onPostMessage(Ljava/lang/String;)V

    goto :goto_3

    .line 3081
    :cond_4
    iget-object v0, p0, Lo/updateFocusedState;->ICustomTabsCallback:Lo/getChildBoundsWithinSearchView;

    invoke-interface {v0, v1}, Lo/getChildBoundsWithinSearchView;->extraCallback(Ljava/lang/String;)V

    .line 4088
    :goto_3
    iget-wide v0, p0, Lo/updateFocusedState;->onPostMessage:J

    const-wide/16 v2, 0x5a

    mul-long v0, v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 3083
    iput-wide v0, p0, Lo/updateFocusedState;->onPostMessage:J

    .line 3084
    iget-object v2, p0, Lo/updateFocusedState;->extraCallback:Landroid/os/Handler;

    move-object v3, p0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 5063
    :cond_5
    invoke-static {}, Lo/createIntentFromSuggestion;->extraCallback()Lo/onQueryTextChange;

    move-result-object v0

    const-string v1, "There was no batch to be sent"

    invoke-static {v0, v1}, Lo/onQueryTextChange;->onNavigationEvent(Lo/onQueryTextChange;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    .line 5065
    iput-wide v0, p0, Lo/updateFocusedState;->onPostMessage:J

    .line 5066
    iget-object v0, p0, Lo/updateFocusedState;->extraCallback:Landroid/os/Handler;

    move-object v1, p0

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5067
    iget-object v0, p0, Lo/updateFocusedState;->extraCallback:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
