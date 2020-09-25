.class public final Lo/getTextClassifier$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field public final synthetic ICustomTabsCallback:Lo/getTextClassifier;

.field final extraCallback:[Z

.field final onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

.field public onPostMessage:Z


# direct methods
.method private constructor <init>(Lo/getTextClassifier;Lo/getTextClassifier$onPostMessage;)V
    .locals 0

    .line 764
    iput-object p1, p0, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p2, p0, Lo/getTextClassifier$ICustomTabsCallback;->onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

    .line 1857
    iget-boolean p2, p2, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 2090
    :cond_0
    iget p1, p1, Lo/getTextClassifier;->extraCallback:I

    .line 766
    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lo/getTextClassifier$ICustomTabsCallback;->extraCallback:[Z

    return-void
.end method

.method synthetic constructor <init>(Lo/getTextClassifier;Lo/getTextClassifier$onPostMessage;B)V
    .locals 0

    .line 759
    invoke-direct {p0, p1, p2}, Lo/getTextClassifier$ICustomTabsCallback;-><init>(Lo/getTextClassifier;Lo/getTextClassifier$onPostMessage;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    monitor-enter v0

    .line 800
    :try_start_0
    iget-object v1, p0, Lo/getTextClassifier$ICustomTabsCallback;->onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

    .line 2857
    iget-object v1, v1, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    if-ne v1, p0, :cond_2

    .line 803
    iget-object v1, p0, Lo/getTextClassifier$ICustomTabsCallback;->onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

    .line 3857
    iget-boolean v1, v1, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 804
    iget-object v1, p0, Lo/getTextClassifier$ICustomTabsCallback;->extraCallback:[Z

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    .line 806
    :cond_0
    iget-object v1, p0, Lo/getTextClassifier$ICustomTabsCallback;->onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

    .line 3926
    iget-object v1, v1, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v1, v1, v2

    .line 807
    iget-object v2, p0, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 4090
    iget-object v2, v2, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    .line 807
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 808
    iget-object v2, p0, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 5090
    iget-object v2, v2, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    .line 808
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 810
    :cond_1
    monitor-exit v0

    return-object v1

    .line 801
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    .line 811
    monitor-exit v0

    throw v1
.end method
