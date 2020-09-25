.class final Lo/getTextClassifier$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getTextClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onPostMessage"
.end annotation


# instance fields
.field ICustomTabsCallback:[Ljava/io/File;

.field asInterface:J

.field final extraCallback:Ljava/lang/String;

.field onMessageChannelReady:[Ljava/io/File;

.field onNavigationEvent:Z

.field final onPostMessage:[J

.field onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

.field private synthetic onTransact:Lo/getTextClassifier;


# direct methods
.method private constructor <init>(Lo/getTextClassifier;Ljava/lang/String;)V
    .locals 6

    .line 876
    iput-object p1, p0, Lo/getTextClassifier$onPostMessage;->onTransact:Lo/getTextClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 877
    iput-object p2, p0, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 1090
    iget v0, p1, Lo/getTextClassifier;->extraCallback:I

    .line 878
    new-array v0, v0, [J

    iput-object v0, p0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    .line 2090
    iget v0, p1, Lo/getTextClassifier;->extraCallback:I

    .line 879
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    .line 3090
    iget v0, p1, Lo/getTextClassifier;->extraCallback:I

    .line 880
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 884
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 4090
    :goto_0
    iget v2, p1, Lo/getTextClassifier;->extraCallback:I

    if-ge v1, v2, :cond_0

    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 887
    iget-object v2, p0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    .line 5090
    iget-object v4, p1, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    .line 887
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 888
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    iget-object v2, p0, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    .line 6090
    iget-object v4, p1, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    .line 889
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 890
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lo/getTextClassifier;Ljava/lang/String;B)V
    .locals 0

    .line 857
    invoke-direct {p0, p1, p2}, Lo/getTextClassifier$onPostMessage;-><init>(Lo/getTextClassifier;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    array-length v0, p1

    iget-object v1, p0, Lo/getTextClassifier$onPostMessage;->onTransact:Lo/getTextClassifier;

    .line 7090
    iget v1, v1, Lo/getTextClassifier;->extraCallback:I

    const-string/jumbo v2, "unexpected journal line: "

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 909
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 910
    iget-object v1, p0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 8918
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7918
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    iget-object v1, p0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    .line 897
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
