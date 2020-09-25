.class final Lo/ReportUploader$ReportFilesProvider$4;
.super Lo/SessionProtobufHelper$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ReportUploader$ReportFilesProvider;->extraCallback()Lo/SessionProtobufHelper$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

.field private onMessageChannelReady:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

.field private synthetic onNavigationEvent:Lo/ReportUploader$ReportFilesProvider;


# direct methods
.method constructor <init>(Lo/ReportUploader$ReportFilesProvider;)V
    .locals 2

    .line 301
    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$4;->onNavigationEvent:Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {p0}, Lo/SessionProtobufHelper$ICustomTabsCallback;-><init>()V

    .line 302
    new-instance p1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$4;->onNavigationEvent:Lo/ReportUploader$ReportFilesProvider;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;-><init>(Lo/SessionProtobufHelper;B)V

    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$4;->onMessageChannelReady:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    .line 1308
    invoke-virtual {p1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/ReportUploader$ReportFilesProvider$4;->onMessageChannelReady:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    .line 1784
    iget-object v0, p1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    .line 1787
    iget-object v0, p1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 1788
    invoke-virtual {p1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v1

    iput-object v1, p1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 1308
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;

    move-result-object p1

    goto :goto_0

    .line 1785
    :cond_0
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 303
    :goto_0
    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$4;->ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 313
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$4;->ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()B
    .locals 4

    .line 318
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$4;->ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

    if-eqz v0, :cond_3

    .line 321
    invoke-interface {v0}, Lo/SessionProtobufHelper$extraCallback;->onNavigationEvent()B

    move-result v0

    .line 322
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$4;->ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

    invoke-interface {v1}, Lo/SessionProtobufHelper$extraCallback;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2308
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$4;->onMessageChannelReady:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    invoke-virtual {v1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$4;->onMessageChannelReady:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    .line 2784
    iget-object v2, v1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v2, :cond_0

    .line 2787
    iget-object v2, v1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 2788
    invoke-virtual {v1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v3

    iput-object v3, v1, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 2308
    invoke-virtual {v2}, Lo/SessionProtobufHelper;->extraCallback()Lo/SessionProtobufHelper$extraCallback;

    move-result-object v1

    goto :goto_0

    .line 2785
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    .line 323
    :goto_0
    iput-object v1, p0, Lo/ReportUploader$ReportFilesProvider$4;->ICustomTabsCallback:Lo/SessionProtobufHelper$extraCallback;

    :cond_2
    return v0

    .line 319
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
