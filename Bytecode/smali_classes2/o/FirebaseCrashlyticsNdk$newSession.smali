.class public final Lo/FirebaseCrashlyticsNdk$newSession;
.super Lo/FirebaseCrashlyticsNdk$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "newSession"
.end annotation


# instance fields
.field private extraCallback:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Ljava/lang/String;",
            "Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 540
    invoke-direct {p0, p1, p2, p3, v0}, Lo/FirebaseCrashlyticsNdk$extraCallback;-><init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;Z)V

    .line 541
    iput-boolean v0, p0, Lo/FirebaseCrashlyticsNdk$newSession;->extraCallback:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic ICustomTabsCallback(Landroid/view/View;)V
    .locals 0

    .line 538
    invoke-super {p0, p1}, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback(Landroid/view/View;)V

    return-void
.end method

.method public final extraCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Landroid/view/View;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 551
    iget-boolean v0, p0, Lo/FirebaseCrashlyticsNdk$newSession;->extraCallback:Z

    if-nez v0, :cond_0

    .line 1575
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;

    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    iget-boolean v2, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onPostMessage:Z

    invoke-interface {v0, p1, v1, v2}, Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;->onPostMessage(Landroid/view/View;Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 555
    :goto_0
    iput-boolean p1, p0, Lo/FirebaseCrashlyticsNdk$newSession;->extraCallback:Z

    return-void
.end method
