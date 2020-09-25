.class final Lo/setLastBaselineToBottomHeight$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setLastBaselineToBottomHeight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field extraCallback:Lo/setCompoundDrawablesRelative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCompoundDrawablesRelative<",
            "TZ;>;"
        }
    .end annotation
.end field

.field onMessageChannelReady:Lo/AppCompatImageHelper;

.field onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/shouldApplyFrameworkTintUsingColorFilter<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final extraCallback(Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;Lo/applyFrameworkTintUsingColorFilter;)V
    .locals 4

    .line 692
    :try_start_0
    invoke-interface {p1}, Lo/setLastBaselineToBottomHeight$ICustomTabsCallback;->ICustomTabsCallback()Lo/ContentFrameLayout$OnAttachListener;

    move-result-object p1

    iget-object v0, p0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onMessageChannelReady:Lo/AppCompatImageHelper;

    new-instance v1, Lo/getPrompt;

    iget-object v2, p0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    iget-object v3, p0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    invoke-direct {v1, v2, v3, p2}, Lo/getPrompt;-><init>(Lo/getSupportImageTintList;Ljava/lang/Object;Lo/applyFrameworkTintUsingColorFilter;)V

    .line 693
    invoke-interface {p1, v0, v1}, Lo/ContentFrameLayout$OnAttachListener;->onPostMessage(Lo/AppCompatImageHelper;Lo/ContentFrameLayout$OnAttachListener$onPostMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    iget-object p1, p0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    invoke-virtual {p1}, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/setLastBaselineToBottomHeight$onMessageChannelReady;->extraCallback:Lo/setCompoundDrawablesRelative;

    invoke-virtual {p2}, Lo/setCompoundDrawablesRelative;->ICustomTabsCallback()V

    .line 696
    throw p1
.end method
