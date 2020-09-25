.class final Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ReportUploader$ReportFilesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lo/SessionProtobufHelper$onRelationshipValidationResult;",
        ">;"
    }
.end annotation


# instance fields
.field onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

.field private final onPostMessage:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/ReportUploader$ReportFilesProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/SessionProtobufHelper;)V
    .locals 2

    .line 735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 736
    instance-of v0, p1, Lo/ReportUploader$ReportFilesProvider;

    if-eqz v0, :cond_0

    .line 737
    check-cast p1, Lo/ReportUploader$ReportFilesProvider;

    .line 738
    new-instance v0, Ljava/util/ArrayDeque;

    .line 1335
    iget v1, p1, Lo/ReportUploader$ReportFilesProvider;->onMessageChannelReady:I

    .line 738
    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage:Ljava/util/ArrayDeque;

    .line 739
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 740
    invoke-static {p1}, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onMessageChannelReady(Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object p1

    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 742
    iput-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage:Ljava/util/ArrayDeque;

    .line 743
    check-cast p1, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    return-void
.end method

.method synthetic constructor <init>(Lo/SessionProtobufHelper;B)V
    .locals 0

    .line 731
    invoke-direct {p0, p1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;-><init>(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method private onMessageChannelReady(Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper$onRelationshipValidationResult;
    .locals 1

    .line 749
    :goto_0
    instance-of v0, p1, Lo/ReportUploader$ReportFilesProvider;

    if-eqz v0, :cond_0

    .line 750
    check-cast p1, Lo/ReportUploader$ReportFilesProvider;

    .line 751
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 752
    invoke-static {p1}, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;

    move-result-object p1

    goto :goto_0

    .line 754
    :cond_0
    check-cast p1, Lo/SessionProtobufHelper$onRelationshipValidationResult;

    return-object p1
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 774
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 2784
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    .line 2788
    invoke-virtual {p0}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v1

    iput-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    return-object v0

    .line 2785
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method final onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;
    .locals 2

    .line 761
    :cond_0
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage:Ljava/util/ArrayDeque;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 764
    :cond_1
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ReportUploader$ReportFilesProvider;

    invoke-static {v0}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onMessageChannelReady(Lo/SessionProtobufHelper;)Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v0

    .line 2235
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 794
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
