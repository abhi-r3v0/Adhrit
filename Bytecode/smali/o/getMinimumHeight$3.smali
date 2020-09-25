.class final Lo/getMinimumHeight$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/AppCompatImageView$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getMinimumHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/AppCompatImageView$ICustomTabsCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMinimumHeight;

.field private synthetic onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;


# direct methods
.method constructor <init>(Lo/getMinimumHeight;Lo/setNavigationContentDescription$ICustomTabsCallback;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lo/getMinimumHeight$3;->ICustomTabsCallback:Lo/getMinimumHeight;

    iput-object p2, p0, Lo/getMinimumHeight$3;->onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Exception;)V
    .locals 4

    .line 82
    iget-object v0, p0, Lo/getMinimumHeight$3;->ICustomTabsCallback:Lo/getMinimumHeight;

    iget-object v1, p0, Lo/getMinimumHeight$3;->onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 3093
    iget-object v0, v0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lo/getMinimumHeight$3;->ICustomTabsCallback:Lo/getMinimumHeight;

    iget-object v1, p0, Lo/getMinimumHeight$3;->onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 3160
    iget-object v2, v0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v0, v0, Lo/getMinimumHeight;->onMessageChannelReady:Lo/onRestoreInstanceState;

    iget-object v3, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    iget-object v1, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v1}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v1

    invoke-interface {v2, v0, p1, v3, v1}, Lo/compatMeasureContentWidth$onNavigationEvent;->extraCallback(Lo/AppCompatImageHelper;Ljava/lang/Exception;Lo/AppCompatImageView;Lo/setImageURI;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 75
    iget-object v0, p0, Lo/getMinimumHeight$3;->ICustomTabsCallback:Lo/getMinimumHeight;

    iget-object v1, p0, Lo/getMinimumHeight$3;->onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 1093
    iget-object v0, v0, Lo/getMinimumHeight;->extraCallback:Lo/setNavigationContentDescription$ICustomTabsCallback;

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lo/getMinimumHeight$3;->ICustomTabsCallback:Lo/getMinimumHeight;

    iget-object v1, p0, Lo/getMinimumHeight$3;->onNavigationEvent:Lo/setNavigationContentDescription$ICustomTabsCallback;

    .line 1141
    iget-object v2, v0, Lo/getMinimumHeight;->ICustomTabsCallback:Lo/getLastBaselineToBottomHeight;

    .line 2099
    iget-object v2, v2, Lo/getLastBaselineToBottomHeight;->updateVisuals:Lo/getFirstBaselineToTopHeight;

    if-eqz p1, :cond_1

    .line 1142
    iget-object v3, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    invoke-interface {v3}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v3

    invoke-virtual {v2, v3}, Lo/getFirstBaselineToTopHeight;->onMessageChannelReady(Lo/setImageURI;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    iput-object p1, v0, Lo/getMinimumHeight;->onNavigationEvent:Ljava/lang/Object;

    .line 1146
    iget-object p1, v0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    invoke-interface {p1}, Lo/compatMeasureContentWidth$onNavigationEvent;->ICustomTabsCallback()V

    return-void

    .line 1148
    :cond_1
    iget-object v2, v0, Lo/getMinimumHeight;->onPostMessage:Lo/compatMeasureContentWidth$onNavigationEvent;

    iget-object v3, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onMessageChannelReady:Lo/AppCompatImageHelper;

    iget-object v4, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    iget-object v1, v1, Lo/setNavigationContentDescription$ICustomTabsCallback;->onNavigationEvent:Lo/AppCompatImageView;

    .line 1152
    invoke-interface {v1}, Lo/AppCompatImageView;->extraCallback()Lo/setImageURI;

    move-result-object v5

    iget-object v6, v0, Lo/getMinimumHeight;->onMessageChannelReady:Lo/onRestoreInstanceState;

    move-object v0, v2

    move-object v1, v3

    move-object v2, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    .line 1148
    invoke-interface/range {v0 .. v5}, Lo/compatMeasureContentWidth$onNavigationEvent;->onPostMessage(Lo/AppCompatImageHelper;Ljava/lang/Object;Lo/AppCompatImageView;Lo/setImageURI;Lo/AppCompatImageHelper;)V

    :cond_2
    return-void
.end method
