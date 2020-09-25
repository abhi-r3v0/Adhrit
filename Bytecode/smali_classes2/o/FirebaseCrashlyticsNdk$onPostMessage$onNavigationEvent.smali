.class final Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;
.super Landroid/view/View$AccessibilityDelegate;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field extraCallback:Landroid/view/View$AccessibilityDelegate;

.field synthetic onPostMessage:Lo/FirebaseCrashlyticsNdk$onPostMessage;


# direct methods
.method public constructor <init>(Lo/FirebaseCrashlyticsNdk$onPostMessage;Landroid/view/View$AccessibilityDelegate;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->onPostMessage:Lo/FirebaseCrashlyticsNdk$onPostMessage;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 423
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public final sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 3

    .line 453
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->onPostMessage:Lo/FirebaseCrashlyticsNdk$onPostMessage;

    .line 1357
    iget v0, v0, Lo/FirebaseCrashlyticsNdk$onPostMessage;->extraCallback:I

    if-ne p2, v0, :cond_0

    .line 454
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->onPostMessage:Lo/FirebaseCrashlyticsNdk$onPostMessage;

    .line 1575
    iget-object v1, v0, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;

    iget-object v2, v0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iget-boolean v0, v0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onPostMessage:Z

    invoke-interface {v1, p1, v2, v0}, Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;->onPostMessage(Landroid/view/View;Ljava/lang/String;Z)V

    .line 457
    :cond_0
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onPostMessage$onNavigationEvent;->extraCallback:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_1

    .line 458
    invoke-virtual {v0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    :cond_1
    return-void
.end method
