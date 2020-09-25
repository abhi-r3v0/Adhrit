.class public final Lo/onItemClicked;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onActionViewCollapsed;


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/datadog/android/core/internal/sampling/RateBasedSampler;",
        "Lcom/datadog/android/core/internal/sampling/Sampler;",
        "sampleRate",
        "",
        "(F)V",
        "random",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "random$delegate",
        "Lkotlin/Lazy;",
        "getSampleRate$dd_sdk_android_release",
        "()F",
        "sample",
        "",
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
.field private final ICustomTabsCallback:Lo/isSameListener;

.field private final onPostMessage:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lo/access$2900;

    const-class v1, Lo/onItemClicked;

    invoke-static {v1}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v1

    const-string v2, "random"

    const-string v3, "getRandom()Ljava/util/Random;"

    invoke-direct {v0, v1, v2, v3}, Lo/access$2900;-><init>(Lo/getQueryViews;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lo/applyEmulatorSettings;->onMessageChannelReady(Lo/getConnectionURL;)Lo/applyServerOverwrite;

    move-result-object v0

    check-cast v0, Lo/applyUserOverwrite;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo/onItemClicked;->onPostMessage:F

    .line 6
    sget-object p1, Lo/onItemClicked$ICustomTabsCallback;->onNavigationEvent:Lo/onItemClicked$ICustomTabsCallback;

    check-cast p1, Lo/getServerTime;

    const-string v0, "initializer"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1021
    new-instance v0, Lo/fromChildMerge;

    invoke-direct {v0, p1}, Lo/fromChildMerge;-><init>(Lo/getServerTime;)V

    check-cast v0, Lo/isSameListener;

    .line 6
    iput-object v0, p0, Lo/onItemClicked;->ICustomTabsCallback:Lo/isSameListener;

    return-void
.end method


# virtual methods
.method public final onPostMessage()Z
    .locals 4

    .line 9
    iget v0, p0, Lo/onItemClicked;->onPostMessage:F

    const/4 v1, 0x0

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    cmpg-float v0, v0, v2

    if-nez v0, :cond_1

    return v3

    .line 1000
    :cond_1
    iget-object v0, p0, Lo/onItemClicked;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    .line 15
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget v2, p0, Lo/onItemClicked;->onPostMessage:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method
