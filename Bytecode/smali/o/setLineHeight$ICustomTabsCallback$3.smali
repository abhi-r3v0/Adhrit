.class final Lo/setLineHeight$ICustomTabsCallback$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setVerticalOffset$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLineHeight$ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setVerticalOffset$extraCallback<",
        "Lo/setPrecomputedText<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/setLineHeight$ICustomTabsCallback;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Ljava/lang/Object;
    .locals 9

    .line 1548
    new-instance v8, Lo/setPrecomputedText;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v1, v0, Lo/setLineHeight$ICustomTabsCallback;->onNavigationEvent:Lo/initProgress;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v2, v0, Lo/setLineHeight$ICustomTabsCallback;->ICustomTabsCallback:Lo/initProgress;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v3, v0, Lo/setLineHeight$ICustomTabsCallback;->onMessageChannelReady:Lo/initProgress;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v4, v0, Lo/setLineHeight$ICustomTabsCallback;->onPostMessage:Lo/initProgress;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v5, v0, Lo/setLineHeight$ICustomTabsCallback;->extraCallback:Lo/setTextMetricsParamsCompat;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v6, v0, Lo/setLineHeight$ICustomTabsCallback;->ICustomTabsCallback$Stub:Lo/setTextFuture$onPostMessage;

    iget-object v0, p0, Lo/setLineHeight$ICustomTabsCallback$3;->ICustomTabsCallback:Lo/setLineHeight$ICustomTabsCallback;

    iget-object v7, v0, Lo/setLineHeight$ICustomTabsCallback;->asBinder:Lo/RatingCompat$StarStyle$extraCallback;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lo/setPrecomputedText;-><init>(Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/initProgress;Lo/setTextMetricsParamsCompat;Lo/setTextFuture$onPostMessage;Lo/RatingCompat$StarStyle$extraCallback;)V

    return-object v8
.end method
