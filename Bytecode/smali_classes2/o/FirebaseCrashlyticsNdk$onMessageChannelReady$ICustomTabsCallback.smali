.class final Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;

.field private final extraCallback:Landroid/view/View;


# direct methods
.method public constructor <init>(Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;Landroid/view/View;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 525
    iget-object p1, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;

    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$onMessageChannelReady$ICustomTabsCallback;->extraCallback:Landroid/view/View;

    .line 1575
    iget-object v1, p1, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;

    iget-object v2, p1, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iget-boolean p1, p1, Lo/FirebaseCrashlyticsNdk$extraCallback;->onPostMessage:Z

    invoke-interface {v1, v0, v2, p1}, Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;->onPostMessage(Landroid/view/View;Ljava/lang/String;Z)V

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
