.class final Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;
.super Ljava/io/InputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ReportUploader$ReportFilesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private synthetic ICustomTabsCallback$Stub:Lo/ReportUploader$ReportFilesProvider;

.field private asBinder:I

.field private extraCallback:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;


# direct methods
.method public constructor <init>(Lo/ReportUploader$ReportFilesProvider;)V
    .locals 0

    .line 826
    iput-object p1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 827
    invoke-direct {p0}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage()V

    return-void
.end method

.method private ICustomTabsCallback([BII)I
    .locals 4

    move v0, p3

    :goto_0
    if-lez v0, :cond_1

    .line 877
    invoke-direct {p0}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady()V

    .line 878
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v1, :cond_1

    .line 882
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback:I

    iget v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    sub-int/2addr v1, v2

    .line 883
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-eqz p1, :cond_0

    .line 885
    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    iget v3, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    invoke-virtual {v2, p1, v3, p2, v1}, Lo/SessionProtobufHelper;->extraCallback([BIII)V

    add-int/2addr p2, v1

    .line 888
    :cond_0
    iget v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    add-int/2addr v2, v1

    iput v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v0

    return p3
.end method

.method private onMessageChannelReady()V
    .locals 3

    .line 944
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v0, :cond_2

    iget v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    iget v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback:I

    if-ne v0, v1, :cond_2

    .line 947
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onNavigationEvent:I

    add-int/2addr v0, v1

    iput v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onNavigationEvent:I

    const/4 v0, 0x0

    .line 948
    iput v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    .line 949
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->extraCallback:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    invoke-virtual {v1}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 950
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->extraCallback:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    .line 2784
    iget-object v1, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v1, :cond_0

    .line 2787
    iget-object v1, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 2788
    invoke-virtual {v0}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v2

    iput-object v2, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 950
    iput-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 951
    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback:I

    return-void

    .line 2785
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    const/4 v1, 0x0

    .line 953
    iput-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 954
    iput v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback:I

    :cond_2
    return-void
.end method

.method private onPostMessage()V
    .locals 4

    .line 932
    new-instance v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ReportUploader$ReportFilesProvider;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;-><init>(Lo/SessionProtobufHelper;B)V

    iput-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->extraCallback:Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;

    .line 1784
    iget-object v1, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-eqz v1, :cond_0

    .line 1787
    iget-object v1, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 1788
    invoke-virtual {v0}, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onPostMessage()Lo/SessionProtobufHelper$onRelationshipValidationResult;

    move-result-object v3

    iput-object v3, v0, Lo/ReportUploader$ReportFilesProvider$onNavigationEvent;->onNavigationEvent:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 933
    iput-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    .line 934
    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    iput v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback:I

    .line 935
    iput v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    .line 936
    iput v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onNavigationEvent:I

    return-void

    .line 1785
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 908
    iget v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onNavigationEvent:I

    iget v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    add-int/2addr v0, v1

    .line 909
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/ReportUploader$ReportFilesProvider;

    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    sub-int/2addr v1, v0

    return v1
.end method

.method public final mark(I)V
    .locals 1

    .line 920
    iget p1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onNavigationEvent:I

    iget v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->asBinder:I

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    invoke-direct {p0}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady()V

    .line 899
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage:Lo/SessionProtobufHelper$onRelationshipValidationResult;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 902
    :cond_0
    iget v1, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/SessionProtobufHelper;->onNavigationEvent(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final read([BII)I
    .locals 1

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    .line 844
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1

    .line 847
    invoke-direct {p0, p1, p2, p3}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback([BII)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1

    .line 845
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 843
    throw p1
.end method

.method public final declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    .line 926
    :try_start_0
    invoke-direct {p0}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->onPostMessage()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 927
    iget v2, p0, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->asBinder:I

    invoke-direct {p0, v0, v1, v2}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback([BII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 928
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final skip(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    long-to-int p2, p1

    .line 862
    invoke-direct {p0, v0, v1, p2}, Lo/ReportUploader$ReportFilesProvider$onMessageChannelReady;->ICustomTabsCallback([BII)I

    move-result p1

    int-to-long p1, p1

    return-wide p1

    .line 858
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
