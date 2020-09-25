.class public abstract Lo/FirebaseCrashlyticsNdk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getFilesForSession$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/FirebaseCrashlyticsNdk$extraCallback;,
        Lo/FirebaseCrashlyticsNdk$newSession;,
        Lo/FirebaseCrashlyticsNdk$onMessageChannelReady;,
        Lo/FirebaseCrashlyticsNdk$onPostMessage;,
        Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback$Stub;,
        Lo/FirebaseCrashlyticsNdk$onTransact;,
        Lo/FirebaseCrashlyticsNdk$ICustomTabsCallback;,
        Lo/FirebaseCrashlyticsNdk$asInterface;,
        Lo/FirebaseCrashlyticsNdk$onNavigationEvent;,
        Lo/FirebaseCrashlyticsNdk$asBinder;,
        Lo/FirebaseCrashlyticsNdk$onRelationshipValidationResult;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/getFilesForSession;


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk;->ICustomTabsCallback:Ljava/util/List;

    .line 602
    new-instance p1, Lo/getFilesForSession;

    invoke-direct {p1}, Lo/getFilesForSession;-><init>()V

    iput-object p1, p0, Lo/FirebaseCrashlyticsNdk;->onPostMessage:Lo/getFilesForSession;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    .line 591
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk;->onPostMessage:Lo/getFilesForSession;

    iget-object v1, p0, Lo/FirebaseCrashlyticsNdk;->ICustomTabsCallback:Ljava/util/List;

    invoke-virtual {v0, p1, v1, p0}, Lo/getFilesForSession;->onPostMessage(Landroid/view/View;Ljava/util/List;Lo/getFilesForSession$ICustomTabsCallback;)V

    return-void
.end method

.method public abstract extraCallback()V
.end method

.method protected final onMessageChannelReady()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/getFilesForSession$extraCallback;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk;->ICustomTabsCallback:Ljava/util/List;

    return-object v0
.end method

.method protected final onNavigationEvent()Lo/getFilesForSession;
    .locals 1

    .line 610
    iget-object v0, p0, Lo/FirebaseCrashlyticsNdk;->onPostMessage:Lo/getFilesForSession;

    return-object v0
.end method
