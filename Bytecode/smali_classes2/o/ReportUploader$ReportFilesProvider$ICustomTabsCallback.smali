.class final Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ReportUploader$ReportFilesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICustomTabsCallback"
.end annotation


# instance fields
.field final onPostMessage:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/SessionProtobufHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 627
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 623
    invoke-direct {p0}, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;-><init>()V

    return-void
.end method


# virtual methods
.method final onNavigationEvent(Lo/SessionProtobufHelper;)V
    .locals 5

    .line 649
    :goto_0
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->ICustomTabsCallback$Stub()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1674
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v0

    .line 1712
    sget-object v1, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 1675
    invoke-static {v1}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(I)I

    move-result v1

    .line 1681
    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionProtobufHelper;

    invoke-virtual {v2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto/16 :goto_3

    .line 1684
    :cond_1
    invoke-static {v0}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(I)I

    move-result v0

    .line 1687
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SessionProtobufHelper;

    .line 1688
    :goto_1
    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionProtobufHelper;

    invoke-virtual {v2}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 1689
    iget-object v2, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/SessionProtobufHelper;

    .line 1690
    new-instance v4, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v4, v2, v1, v3}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;B)V

    move-object v1, v4

    goto :goto_1

    .line 1694
    :cond_2
    new-instance v0, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v0, v1, p1, v3}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;B)V

    .line 1697
    :goto_2
    iget-object p1, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1698
    invoke-virtual {v0}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result p1

    .line 2712
    sget-object v1, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1699
    invoke-static {p1}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(I)I

    move-result p1

    .line 1700
    iget-object v1, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/SessionProtobufHelper;

    invoke-virtual {v1}, Lo/SessionProtobufHelper;->onMessageChannelReady()I

    move-result v1

    if-ge v1, p1, :cond_4

    .line 1701
    iget-object p1, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/SessionProtobufHelper;

    .line 1702
    new-instance v1, Lo/ReportUploader$ReportFilesProvider;

    invoke-direct {v1, p1, v0, v3}, Lo/ReportUploader$ReportFilesProvider;-><init>(Lo/SessionProtobufHelper;Lo/SessionProtobufHelper;B)V

    move-object v0, v1

    goto :goto_2

    .line 1707
    :cond_4
    iget-object p1, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 1682
    :cond_5
    :goto_3
    iget-object v0, p0, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onPostMessage:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    return-void

    .line 651
    :cond_6
    instance-of v0, p1, Lo/ReportUploader$ReportFilesProvider;

    if-eqz v0, :cond_7

    .line 652
    check-cast p1, Lo/ReportUploader$ReportFilesProvider;

    .line 653
    invoke-static {p1}, Lo/ReportUploader$ReportFilesProvider;->ICustomTabsCallback(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/ReportUploader$ReportFilesProvider$ICustomTabsCallback;->onNavigationEvent(Lo/SessionProtobufHelper;)V

    .line 654
    invoke-static {p1}, Lo/ReportUploader$ReportFilesProvider;->onPostMessage(Lo/ReportUploader$ReportFilesProvider;)Lo/SessionProtobufHelper;

    move-result-object p1

    goto/16 :goto_0

    .line 656
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
