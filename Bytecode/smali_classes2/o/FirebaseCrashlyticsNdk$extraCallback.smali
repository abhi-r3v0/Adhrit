.class abstract Lo/FirebaseCrashlyticsNdk$extraCallback;
.super Lo/FirebaseCrashlyticsNdk;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/FirebaseCrashlyticsNdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "extraCallback"
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;

.field final onNavigationEvent:Ljava/lang/String;

.field final onPostMessage:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;",
            "Ljava/lang/String;",
            "Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;",
            "Z)V"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lo/FirebaseCrashlyticsNdk;-><init>(Ljava/util/List;)V

    .line 569
    iput-object p3, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->ICustomTabsCallback:Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;

    .line 570
    iput-object p2, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onNavigationEvent:Ljava/lang/String;

    .line 571
    iput-boolean p4, p0, Lo/FirebaseCrashlyticsNdk$extraCallback;->onPostMessage:Z

    return-void
.end method
