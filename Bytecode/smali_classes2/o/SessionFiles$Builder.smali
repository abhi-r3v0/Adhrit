.class final Lo/SessionFiles$Builder;
.super Lo/SessionFiles;
.source ""


# static fields
.field private static final ICustomTabsCallback$Stub:Lo/matches;

.field private static final ICustomTabsService:Lo/matches;

.field private static final asBinder:Lo/matches;

.field private static final asInterface:Lo/matches;

.field private static final onTransact:Lo/matches;


# instance fields
.field private ICustomTabsCallback$Stub$Proxy:J

.field private final getInterfaceDescriptor:Lo/updatePriority;

.field private final newSession:Lo/fullLimitUpdateChild;

.field private postMessage:Ljava/lang/String;

.field private updateVisuals:I

.field private warmup:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\'\\"

    .line 29
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    const-string v0, "\"\\"

    .line 30
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    const-string v0, "{}[]:, \n\t\r\u000c/\\;#="

    .line 32
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/SessionFiles$Builder;->asBinder:Lo/matches;

    const-string v0, "\n\r"

    .line 33
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/SessionFiles$Builder;->onTransact:Lo/matches;

    const-string v0, "*/"

    .line 34
    invoke-static {v0}, Lo/matches;->onMessageChannelReady(Ljava/lang/String;)Lo/matches;

    move-result-object v0

    sput-object v0, Lo/SessionFiles$Builder;->ICustomTabsService:Lo/matches;

    return-void
.end method

.method constructor <init>(Lo/fullLimitUpdateChild;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Lo/SessionFiles;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-eqz p1, :cond_0

    .line 96
    iput-object p1, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    .line 97
    invoke-interface {p1}, Lo/fullLimitUpdateChild;->onMessageChannelReady()Lo/updatePriority;

    move-result-object p1

    iput-object p1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    const/4 p1, 0x6

    .line 98
    invoke-virtual {p0, p1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(I)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ICustomTabsCallback(Lo/matches;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 864
    :goto_0
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    invoke-interface {v0, p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 867
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v2

    const/16 v3, 0x5c

    const-wide/16 v4, 0x1

    if-ne v2, v3, :cond_0

    .line 868
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    add-long/2addr v0, v4

    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->asInterface(J)V

    .line 869
    invoke-direct {p0}, Lo/SessionFiles$Builder;->ICustomTabsService$Stub$Proxy()C

    goto :goto_0

    .line 871
    :cond_0
    iget-object p1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    add-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return-void

    :cond_1
    const-string p1, "Unterminated string"

    .line 865
    invoke-virtual {p0, p1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1
.end method

.method private ICustomTabsService$Stub()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 878
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/SessionFiles$Builder;->asBinder:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    .line 879
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    goto :goto_0

    .line 28067
    :cond_0
    iget-wide v0, v2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 879
    :goto_0
    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return-void
.end method

.method private ICustomTabsService$Stub$Proxy()C
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1105
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    const-wide/16 v1, 0x1

    invoke-interface {v0, v1, v2}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1109
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v2, 0x22

    if-eq v0, v2, :cond_c

    const/16 v2, 0x27

    if-eq v0, v2, :cond_c

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_c

    const/16 v2, 0x5c

    if-eq v0, v2, :cond_c

    const/16 v2, 0x62

    if-eq v0, v2, :cond_b

    const/16 v2, 0x66

    if-eq v0, v2, :cond_a

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_9

    const/16 v3, 0x72

    if-eq v0, v3, :cond_8

    const/16 v3, 0x74

    if-eq v0, v3, :cond_7

    const/16 v3, 0x75

    if-eq v0, v3, :cond_1

    .line 1156
    iget-boolean v1, p0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    int-to-char v0, v0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid escape sequence: \\"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 1112
    :cond_1
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    const-wide/16 v3, 0x4

    invoke-interface {v0, v3, v4}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x4

    if-ge v0, v6, :cond_5

    .line 1118
    iget-object v6, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v7, v0

    invoke-virtual {v6, v7, v8}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v6

    shl-int/lit8 v5, v5, 0x4

    int-to-char v5, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    add-int/lit8 v6, v6, -0x30

    :goto_1
    add-int/2addr v5, v6

    int-to-char v5, v5

    goto :goto_3

    :cond_2
    const/16 v7, 0x61

    if-lt v6, v7, :cond_3

    if-gt v6, v2, :cond_3

    add-int/lit8 v6, v6, -0x61

    :goto_2
    add-int/2addr v6, v1

    goto :goto_1

    :cond_3
    const/16 v7, 0x41

    if-lt v6, v7, :cond_4

    const/16 v7, 0x46

    if-gt v6, v7, :cond_4

    add-int/lit8 v6, v6, -0x41

    goto :goto_2

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1127
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 39699
    sget-object v2, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3, v4, v2}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0

    .line 1130
    :cond_5
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v0, v3, v4}, Lo/updatePriority;->asInterface(J)V

    return v5

    .line 1113
    :cond_6
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unterminated escape sequence at path "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 1113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v0, 0x9

    return v0

    :cond_8
    const/16 v0, 0xd

    return v0

    :cond_9
    return v1

    :cond_a
    const/16 v0, 0xc

    return v0

    :cond_b
    const/16 v0, 0x8

    return v0

    :cond_c
    int-to-char v0, v0

    return v0

    :cond_d
    const-string v0, "Unterminated escape sequence"

    .line 1106
    invoke-virtual {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v0

    throw v0
.end method

.method private IPostMessageService()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/SessionFiles$Builder;->ICustomTabsService:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->onPostMessage(Lo/matches;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1085
    :goto_0
    iget-object v3, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    if-eqz v2, :cond_1

    sget-object v4, Lo/SessionFiles$Builder;->ICustomTabsService:Lo/matches;

    invoke-virtual {v4}, Lo/matches;->onTransact()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 39067
    :cond_1
    iget-wide v0, v3, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1085
    :goto_1
    invoke-virtual {v3, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return v2
.end method

.method private IPostMessageService$Stub()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1075
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/SessionFiles$Builder;->onTransact:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    .line 1076
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    goto :goto_0

    .line 38067
    :cond_0
    iget-wide v0, v2, Lo/updatePriority;->ICustomTabsCallback:J

    .line 1076
    :goto_0
    invoke-virtual {v2, v0, v1}, Lo/updatePriority;->asInterface(J)V

    return-void
.end method

.method private extraCallback(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I
    .locals 4

    .line 616
    iget-object v0, p2, Lo/SessionFiles$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 617
    iget-object v3, p2, Lo/SessionFiles$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 619
    iget-object p2, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    aput-object p1, p2, v0

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private extraCallback(Lo/matches;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 831
    :goto_0
    iget-object v1, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    invoke-interface {v1, p1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 835
    iget-object v3, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v3, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    :cond_0
    iget-object v3, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 24699
    sget-object v4, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v1, v2, v4}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    .line 837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 839
    invoke-direct {p0}, Lo/SessionFiles$Builder;->ICustomTabsService$Stub$Proxy()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 845
    iget-object p1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 25699
    sget-object v0, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1, v2, v0}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 846
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    return-object p1

    .line 849
    :cond_2
    iget-object p1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 26699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1, v2, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 849
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    iget-object p1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {p1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 851
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "Unterminated string"

    .line 832
    invoke-virtual {p0, p1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1
.end method

.method private extraCallback(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x9

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa

    if-eq p1, v0, :cond_2

    const/16 v0, 0xc

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_2

    const/16 v0, 0x20

    if-eq p1, v0, :cond_2

    const/16 v0, 0x23

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    return p1

    .line 14064
    :cond_0
    :pswitch_0
    iget-boolean p1, p0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Use JsonReader.setLenient(true) to accept malformed JSON"

    .line 14065
    invoke-virtual {p0, p1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    :pswitch_1
    const/4 p1, 0x0

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private extraCommand()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x54

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    const/16 v2, 0x66

    if-eq v0, v2, :cond_4

    const/16 v2, 0x46

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x6e

    if-eq v0, v2, :cond_3

    const/16 v2, 0x4e

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x7

    const-string v2, "null"

    const-string v3, "NULL"

    goto :goto_3

    :cond_4
    :goto_1
    const/4 v0, 0x6

    const-string v2, "false"

    const-string v3, "FALSE"

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x5

    const-string v2, "true"

    const-string v3, "TRUE"

    .line 393
    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    :goto_4
    if-ge v5, v4, :cond_8

    .line 395
    iget-object v6, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    add-int/lit8 v7, v5, 0x1

    int-to-long v8, v7

    invoke-interface {v6, v8, v9}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v6

    if-nez v6, :cond_6

    return v1

    .line 398
    :cond_6
    iget-object v6, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v8, v5

    invoke-virtual {v6, v8, v9}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v6

    .line 399
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v6, v8, :cond_7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v6, v5, :cond_7

    return v1

    :cond_7
    move v5, v7

    goto :goto_4

    .line 404
    :cond_8
    iget-object v2, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    add-int/lit8 v3, v4, 0x1

    int-to-long v5, v3

    invoke-interface {v2, v5, v6}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v5, v4

    invoke-virtual {v2, v5, v6}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v2

    invoke-direct {p0, v2}, Lo/SessionFiles$Builder;->extraCallback(I)Z

    move-result v2

    if-eqz v2, :cond_9

    return v1

    .line 409
    :cond_9
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v2, v4

    invoke-virtual {v1, v2, v3}, Lo/updatePriority;->asInterface(J)V

    .line 410
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    return v0
.end method

.method private mayLaunchUrl()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 231
    iget-object v1, v0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v2, v0, Lo/SessionFiles;->extraCallback:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    const-wide/16 v4, 0x0

    const/16 v2, 0x8

    const/16 v8, 0x5d

    const/4 v9, 0x3

    const/4 v10, 0x7

    const/16 v11, 0x3b

    const/16 v12, 0x2c

    const/4 v13, 0x4

    const/4 v14, 0x2

    const-string v15, "Use JsonReader.setLenient(true) to accept malformed JSON"

    if-ne v1, v3, :cond_0

    .line 233
    iget-object v6, v0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v7, v0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v7, v3

    aput v14, v6, v7

    goto/16 :goto_0

    :cond_0
    if-ne v1, v14, :cond_4

    .line 236
    invoke-direct {v0, v3}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v6

    .line 237
    iget-object v7, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v7}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    if-eq v6, v12, :cond_d

    if-eq v6, v11, :cond_2

    if-ne v6, v8, :cond_1

    .line 240
    iput v13, v0, Lo/SessionFiles$Builder;->warmup:I

    return v13

    :cond_1
    const-string v1, "Unterminated array"

    .line 246
    invoke-virtual {v0, v1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 5064
    :cond_2
    iget-boolean v6, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v6, :cond_3

    goto/16 :goto_0

    .line 5065
    :cond_3
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_4
    const/4 v6, 0x5

    if-eq v1, v9, :cond_1d

    if-ne v1, v6, :cond_5

    goto/16 :goto_2

    :cond_5
    if-ne v1, v13, :cond_8

    .line 290
    iget-object v7, v0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v14, v0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v14, v3

    aput v6, v7, v14

    .line 292
    invoke-direct {v0, v3}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v6

    .line 293
    iget-object v7, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v7}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v7, 0x3a

    if-eq v6, v7, :cond_d

    const/16 v7, 0x3d

    if-ne v6, v7, :cond_7

    .line 9064
    iget-boolean v6, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v6, :cond_6

    .line 299
    iget-object v6, v0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    const-wide/16 v13, 0x1

    invoke-interface {v6, v13, v14}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v6, v4, v5}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v6

    const/16 v13, 0x3e

    if-ne v6, v13, :cond_d

    .line 300
    iget-object v6, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v6}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    goto :goto_0

    .line 9065
    :cond_6
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_7
    const-string v1, "Expected \':\'"

    .line 304
    invoke-virtual {v0, v1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_8
    const/4 v6, 0x6

    if-ne v1, v6, :cond_9

    .line 307
    iget-object v6, v0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v13, v0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v13, v3

    aput v10, v6, v13

    goto :goto_0

    :cond_9
    if-ne v1, v10, :cond_c

    const/4 v6, 0x0

    .line 309
    invoke-direct {v0, v6}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v6

    const/4 v13, -0x1

    if-ne v6, v13, :cond_a

    const/16 v1, 0x12

    .line 311
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 10064
    :cond_a
    iget-boolean v6, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v6, :cond_b

    goto :goto_0

    .line 10065
    :cond_b
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_c
    if-eq v1, v2, :cond_1c

    .line 319
    :cond_d
    :goto_0
    invoke-direct {v0, v3}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v6

    const/16 v13, 0x22

    if-eq v6, v13, :cond_1b

    const/16 v13, 0x27

    if-eq v6, v13, :cond_19

    if-eq v6, v12, :cond_15

    if-eq v6, v11, :cond_15

    const/16 v2, 0x5b

    if-eq v6, v2, :cond_14

    if-eq v6, v8, :cond_13

    const/16 v1, 0x7b

    if-eq v6, v1, :cond_12

    .line 352
    invoke-direct/range {p0 .. p0}, Lo/SessionFiles$Builder;->extraCommand()I

    move-result v1

    if-eqz v1, :cond_e

    return v1

    .line 357
    :cond_e
    invoke-direct/range {p0 .. p0}, Lo/SessionFiles$Builder;->updateVisuals()I

    move-result v1

    if-eqz v1, :cond_f

    return v1

    .line 362
    :cond_f
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1, v4, v5}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v1

    invoke-direct {v0, v1}, Lo/SessionFiles$Builder;->extraCallback(I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 13064
    iget-boolean v1, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_10

    const/16 v1, 0xa

    .line 367
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 13065
    :cond_10
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_11
    const-string v1, "Expected value"

    .line 363
    invoke-virtual {v0, v1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 347
    :cond_12
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 348
    iput v3, v0, Lo/SessionFiles$Builder;->warmup:I

    return v3

    :cond_13
    if-ne v1, v3, :cond_15

    .line 323
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/4 v1, 0x4

    .line 324
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 344
    :cond_14
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 345
    iput v9, v0, Lo/SessionFiles$Builder;->warmup:I

    return v9

    :cond_15
    if-eq v1, v3, :cond_17

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    goto :goto_1

    :cond_16
    const-string v1, "Unexpected value"

    .line 334
    invoke-virtual {v0, v1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 11064
    :cond_17
    :goto_1
    iget-boolean v1, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_18

    .line 332
    iput v10, v0, Lo/SessionFiles$Builder;->warmup:I

    return v10

    .line 11065
    :cond_18
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 12064
    :cond_19
    iget-boolean v1, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_1a

    .line 338
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 339
    iput v2, v0, Lo/SessionFiles$Builder;->warmup:I

    return v2

    .line 12065
    :cond_1a
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 341
    :cond_1b
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v1, 0x9

    .line 342
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 316
    :cond_1c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "JsonReader is closed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    :cond_1d
    :goto_2
    iget-object v2, v0, Lo/SessionFiles;->onNavigationEvent:[I

    iget v4, v0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v4, v3

    const/4 v5, 0x4

    aput v5, v2, v4

    const/16 v2, 0x7d

    if-ne v1, v6, :cond_21

    .line 252
    invoke-direct {v0, v3}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v4

    .line 253
    iget-object v5, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v5}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    if-eq v4, v12, :cond_21

    if-eq v4, v11, :cond_1f

    if-ne v4, v2, :cond_1e

    const/4 v1, 0x2

    .line 256
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    :cond_1e
    const-string v1, "Unterminated object"

    .line 262
    invoke-virtual {v0, v1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 6064
    :cond_1f
    iget-boolean v4, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v4, :cond_20

    goto :goto_3

    .line 6065
    :cond_20
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 265
    :cond_21
    :goto_3
    invoke-direct {v0, v3}, Lo/SessionFiles$Builder;->onMessageChannelReady(Z)I

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_28

    const/16 v4, 0x27

    if-eq v3, v4, :cond_26

    const-string v4, "Expected name"

    if-eq v3, v2, :cond_24

    .line 8064
    iget-boolean v1, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_23

    int-to-char v1, v3

    .line 283
    invoke-direct {v0, v1}, Lo/SessionFiles$Builder;->extraCallback(I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/16 v1, 0xe

    .line 284
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 286
    :cond_22
    invoke-virtual {v0, v4}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 8065
    :cond_23
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    :cond_24
    if-eq v1, v6, :cond_25

    .line 276
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/4 v1, 0x2

    .line 277
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 279
    :cond_25
    invoke-virtual {v0, v4}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 271
    :cond_26
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 7064
    iget-boolean v1, v0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_27

    const/16 v1, 0xc

    .line 273
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    .line 7065
    :cond_27
    invoke-virtual {v0, v15}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object v1

    throw v1

    .line 268
    :cond_28
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    const/16 v1, 0xd

    .line 269
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1
.end method

.method private onMessageChannelReady(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I
    .locals 4

    .line 691
    iget-object v0, p2, Lo/SessionFiles$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 692
    iget-object v3, p2, Lo/SessionFiles$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 694
    iget-object p1, p0, Lo/SessionFiles;->onPostMessage:[I

    iget p2, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 p2, p2, -0x1

    aget v0, p1, p2

    add-int/lit8 v0, v0, 0x1

    aput v0, p1, p2

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private onMessageChannelReady(Z)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 1010
    :goto_1
    iget-object v2, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    add-int/lit8 v3, v1, 0x1

    int-to-long v4, v3

    invoke-interface {v2, v4, v5}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1011
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_8

    const/16 v2, 0x20

    if-eq v1, v2, :cond_8

    const/16 v2, 0xd

    if-eq v1, v2, :cond_8

    const/16 v2, 0x9

    if-eq v1, v2, :cond_8

    .line 1016
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lo/updatePriority;->asInterface(J)V

    const-string v2, "Use JsonReader.setLenient(true) to accept malformed JSON"

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_5

    .line 1018
    iget-object v4, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    const-wide/16 v5, 0x2

    invoke-interface {v4, v5, v6}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v4

    if-nez v4, :cond_0

    return v1

    .line 36064
    :cond_0
    iget-boolean v4, p0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v4, :cond_4

    .line 1023
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    const-wide/16 v4, 0x1

    invoke-virtual {v2, v4, v5}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    return v1

    .line 1037
    :cond_1
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 1038
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 1039
    invoke-direct {p0}, Lo/SessionFiles$Builder;->IPostMessageService$Stub()V

    goto :goto_0

    .line 1027
    :cond_2
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 1028
    iget-object v1, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v1}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    .line 1029
    invoke-direct {p0}, Lo/SessionFiles$Builder;->IPostMessageService()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, "Unterminated comment"

    .line 1030
    invoke-virtual {p0, p1}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1

    .line 36065
    :cond_4
    invoke-virtual {p0, v2}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_5
    const/16 v3, 0x23

    if-ne v1, v3, :cond_7

    .line 37064
    iget-boolean v1, p0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-eqz v1, :cond_6

    .line 1050
    invoke-direct {p0}, Lo/SessionFiles$Builder;->IPostMessageService$Stub()V

    goto/16 :goto_0

    .line 37065
    :cond_6
    invoke-virtual {p0, v2}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Ljava/lang/String;)Lcom/squareup/moshi/JsonEncodingException;

    move-result-object p1

    throw p1

    :cond_7
    return v1

    :cond_8
    move v1, v3

    goto/16 :goto_1

    :cond_9
    if-nez p1, :cond_a

    const/4 p1, -0x1

    return p1

    .line 1057
    :cond_a
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "End of input"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private updateVisuals()I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-wide v7, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 423
    :goto_0
    iget-object v11, v0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    add-int/lit8 v12, v5, 0x1

    int-to-long v13, v12

    invoke-interface {v11, v13, v14}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(J)Z

    move-result v11

    const/4 v15, 0x2

    if-eqz v11, :cond_15

    .line 427
    iget-object v11, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v13, v5

    invoke-virtual {v11, v13, v14}, Lo/updatePriority;->onMessageChannelReady(J)B

    move-result v11

    const/16 v13, 0x2b

    const/4 v14, 0x5

    if-eq v11, v13, :cond_12

    const/16 v13, 0x45

    if-eq v11, v13, :cond_f

    const/16 v13, 0x65

    if-eq v11, v13, :cond_f

    const/16 v13, 0x2d

    if-eq v11, v13, :cond_c

    const/16 v13, 0x2e

    if-eq v11, v13, :cond_a

    const/16 v13, 0x30

    if-lt v11, v13, :cond_9

    const/16 v13, 0x39

    if-le v11, v13, :cond_0

    goto :goto_4

    :cond_0
    if-eq v6, v3, :cond_8

    if-nez v6, :cond_1

    goto :goto_3

    :cond_1
    if-ne v6, v15, :cond_5

    cmp-long v5, v7, v1

    if-nez v5, :cond_2

    return v4

    :cond_2
    const-wide/16 v13, 0xa

    mul-long v13, v13, v7

    add-int/lit8 v11, v11, -0x30

    int-to-long v1, v11

    sub-long/2addr v13, v1

    const-wide v1, -0xcccccccccccccccL

    cmp-long v5, v7, v1

    if-gtz v5, :cond_4

    if-nez v5, :cond_3

    cmp-long v1, v13, v7

    if-gez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    and-int/2addr v10, v1

    move-wide v7, v13

    goto :goto_7

    :cond_5
    const/4 v1, 0x3

    if-ne v6, v1, :cond_6

    const/4 v6, 0x4

    goto :goto_7

    :cond_6
    if-eq v6, v14, :cond_7

    const/4 v1, 0x6

    if-ne v6, v1, :cond_13

    :cond_7
    const/4 v6, 0x7

    goto :goto_7

    :cond_8
    :goto_3
    add-int/lit8 v11, v11, -0x30

    neg-int v1, v11

    int-to-long v7, v1

    const/4 v6, 0x2

    goto :goto_7

    .line 464
    :cond_9
    :goto_4
    invoke-direct {v0, v11}, Lo/SessionFiles$Builder;->extraCallback(I)Z

    move-result v1

    if-eqz v1, :cond_15

    return v4

    :cond_a
    const/4 v1, 0x3

    if-ne v6, v15, :cond_b

    const/4 v6, 0x3

    goto :goto_7

    :cond_b
    return v4

    :cond_c
    const/4 v1, 0x6

    if-nez v6, :cond_d

    const/4 v6, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    if-ne v6, v14, :cond_e

    goto :goto_6

    :cond_e
    return v4

    :cond_f
    if-eq v6, v15, :cond_11

    const/4 v1, 0x4

    if-ne v6, v1, :cond_10

    goto :goto_5

    :cond_10
    return v4

    :cond_11
    :goto_5
    const/4 v6, 0x5

    goto :goto_7

    :cond_12
    const/4 v1, 0x6

    if-ne v6, v14, :cond_14

    :goto_6
    const/4 v6, 0x6

    :cond_13
    :goto_7
    move v5, v12

    const-wide/16 v1, 0x0

    goto/16 :goto_0

    :cond_14
    return v4

    :cond_15
    if-ne v6, v15, :cond_19

    if-eqz v10, :cond_19

    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v3, v7, v1

    if-nez v3, :cond_16

    if-eqz v9, :cond_19

    :cond_16
    const-wide/16 v1, 0x0

    cmp-long v3, v7, v1

    if-nez v3, :cond_17

    if-nez v9, :cond_19

    :cond_17
    if-eqz v9, :cond_18

    goto :goto_8

    :cond_18
    neg-long v7, v7

    .line 491
    :goto_8
    iput-wide v7, v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    .line 492
    iget-object v1, v0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    int-to-long v2, v5

    invoke-virtual {v1, v2, v3}, Lo/updatePriority;->asInterface(J)V

    const/16 v1, 0x10

    .line 493
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1

    :cond_19
    if-eq v6, v15, :cond_1b

    const/4 v1, 0x4

    if-eq v6, v1, :cond_1b

    const/4 v1, 0x7

    if-ne v6, v1, :cond_1a

    goto :goto_9

    :cond_1a
    return v4

    .line 496
    :cond_1b
    :goto_9
    iput v5, v0, Lo/SessionFiles$Builder;->updateVisuals:I

    const/16 v1, 0x11

    .line 497
    iput v1, v0, Lo/SessionFiles$Builder;->warmup:I

    return v1
.end method

.method private validateRelationship()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    sget-object v1, Lo/SessionFiles$Builder;->asBinder:Lo/matches;

    invoke-interface {v0, v1}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/matches;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 859
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 27699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v0, v1, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 859
    :cond_0
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    invoke-virtual {v0}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 185
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 630
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 634
    invoke-direct {p0}, Lo/SessionFiles$Builder;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    .line 636
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 638
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xb

    if-ne v0, v1, :cond_4

    .line 640
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    const/4 v1, 0x0

    .line 641
    iput-object v1, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    if-ne v0, v1, :cond_5

    .line 643
    iget-wide v0, p0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/16 v1, 0x11

    if-ne v0, v1, :cond_6

    .line 645
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    iget v1, p0, Lo/SessionFiles$Builder;->updateVisuals:I

    int-to-long v1, v1

    .line 16699
    sget-object v3, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1, v2, v3}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    .line 649
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 650
    iget-object v1, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    return-object v0

    .line 647
    :cond_6
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a string but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 647
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 778
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 782
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 783
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 784
    iget-wide v0, p0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, " at path "

    const-string v4, "Expected a long but was "

    const/16 v5, 0xb

    if-ne v0, v1, :cond_2

    .line 788
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    iget v1, p0, Lo/SessionFiles$Builder;->updateVisuals:I

    int-to-long v6, v1

    .line 22699
    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 788
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    const/16 v6, 0x8

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    goto :goto_2

    .line 802
    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 803
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    if-ne v0, v1, :cond_6

    .line 791
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 792
    :cond_6
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 794
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 795
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 796
    iget-object v6, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v7, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v7, v7, -0x1

    aget v8, v6, v7

    add-int/lit8 v8, v8, 0x1

    aput v8, v6, v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 806
    :catch_0
    :goto_2
    iput v5, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 809
    :try_start_1
    new-instance v0, Ljava/math/BigDecimal;

    iget-object v1, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 810
    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValueExact()J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x0

    .line 815
    iput-object v3, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 816
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 817
    iget-object v2, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v3, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 812
    :catch_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 813
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final ICustomTabsService()D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 734
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 740
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 741
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 742
    iget-wide v0, p0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    long-to-double v0, v0

    return-wide v0

    :cond_1
    const/16 v1, 0x11

    const-string v3, "Expected a double but was "

    const/16 v4, 0xb

    const-string v5, " at path "

    if-ne v0, v1, :cond_2

    .line 746
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    iget v1, p0, Lo/SessionFiles$Builder;->updateVisuals:I

    int-to-long v6, v1

    .line 19699
    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 746
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 748
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 750
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 752
    invoke-direct {p0}, Lo/SessionFiles$Builder;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_0

    :cond_5
    if-ne v0, v4, :cond_8

    .line 757
    :goto_0
    iput v4, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 760
    :try_start_0
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 765
    iget-boolean v3, p0, Lo/SessionFiles;->onMessageChannelReady:Z

    if-nez v3, :cond_7

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 766
    :cond_6
    new-instance v2, Lcom/squareup/moshi/JsonEncodingException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSON forbids NaN and infinities: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22508
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v1, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v0, v1, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/squareup/moshi/JsonEncodingException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    const/4 v3, 0x0

    .line 769
    iput-object v3, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 770
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 771
    iget-object v2, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v3, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v2, v3

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    return-wide v0

    .line 762
    :catch_0
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 763
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 754
    :cond_8
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 754
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asBinder()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    iget-boolean v0, p0, Lo/SessionFiles;->onRelationshipValidationResult:Z

    if-nez v0, :cond_5

    .line 594
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 596
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 599
    invoke-direct {p0}, Lo/SessionFiles$Builder;->ICustomTabsService$Stub()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 601
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 603
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    :goto_0
    const/4 v0, 0x0

    .line 607
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 608
    iget-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 605
    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 605
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_5
    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Lo/SessionFiles;->asInterface()Ljava/lang/String;

    .line 592
    new-instance v1, Lcom/squareup/moshi/JsonDataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot skip unexpected "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15508
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v0, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v0

    .line 592
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final asInterface()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 529
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 531
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    .line 535
    invoke-direct {p0}, Lo/SessionFiles$Builder;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 537
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 539
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v1, 0xf

    if-ne v0, v1, :cond_4

    .line 541
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    :goto_0
    const/4 v1, 0x0

    .line 545
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 546
    iget-object v1, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    return-object v0

    .line 543
    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a name but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 543
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 938
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 939
    iget-object v1, p0, Lo/SessionFiles;->onNavigationEvent:[I

    const/16 v2, 0x8

    aput v2, v1, v0

    const/4 v0, 0x1

    .line 940
    iput v0, p0, Lo/SessionFiles;->extraCallback:I

    .line 941
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    .line 31930
    :try_start_0
    iget-wide v1, v0, Lo/updatePriority;->ICustomTabsCallback:J

    invoke-virtual {v0, v1, v2}, Lo/updatePriority;->asInterface(J)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 942
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->close()V

    return-void

    :catch_0
    move-exception v0

    .line 31932
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final extraCallback()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 155
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 158
    invoke-virtual {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(I)V

    const/4 v0, 0x0

    .line 159
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    return-void

    .line 161
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 885
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0x10

    const/4 v2, 0x0

    const-string v3, " at path "

    const-string v4, "Expected an int but was "

    if-ne v0, v1, :cond_2

    .line 890
    iget-wide v0, p0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    long-to-int v5, v0

    int-to-long v6, v5

    cmp-long v8, v0, v6

    if-nez v8, :cond_1

    .line 895
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 896
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 892
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 893
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v1, 0x11

    const/16 v5, 0xb

    if-ne v0, v1, :cond_3

    .line 901
    iget-object v0, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    iget v1, p0, Lo/SessionFiles$Builder;->updateVisuals:I

    int-to-long v6, v1

    .line 28699
    sget-object v1, Lo/getPriorityKey;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7, v1}, Lo/updatePriority;->onPostMessage(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 901
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v1, 0x9

    if-eq v0, v1, :cond_6

    const/16 v6, 0x8

    if-ne v0, v6, :cond_4

    goto :goto_0

    :cond_4
    if-ne v0, v5, :cond_5

    goto :goto_2

    .line 915
    :cond_5
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 915
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    :goto_0
    if-ne v0, v1, :cond_7

    .line 904
    sget-object v0, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 905
    :cond_7
    sget-object v0, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v0}, Lo/SessionFiles$Builder;->extraCallback(Lo/matches;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 907
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 908
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 909
    iget-object v1, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v6, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v6, v6, -0x1

    aget v7, v1, v6

    add-int/lit8 v7, v7, 0x1

    aput v7, v1, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 918
    :catch_0
    :goto_2
    iput v5, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 921
    :try_start_1
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    double-to-int v5, v0

    int-to-double v6, v5

    cmpl-double v8, v6, v0

    if-nez v8, :cond_8

    const/4 v0, 0x0

    .line 931
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 932
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 933
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    return v5

    .line 928
    :cond_8
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :catch_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 924
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final newSession()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 946
    iget-boolean v0, p0, Lo/SessionFiles;->onRelationshipValidationResult:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 951
    :cond_0
    iget v2, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v2, :cond_1

    .line 953
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v2

    :cond_1
    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_2

    .line 957
    invoke-virtual {p0, v4}, Lo/SessionFiles$Builder;->ICustomTabsCallback(I)V

    :goto_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_2
    if-ne v2, v4, :cond_3

    .line 960
    invoke-virtual {p0, v3}, Lo/SessionFiles$Builder;->ICustomTabsCallback(I)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    const-string v5, " at path "

    const-string v6, "Expected a value but was "

    if-ne v2, v3, :cond_5

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    .line 968
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/SessionFiles;->extraCallback:I

    goto/16 :goto_4

    .line 965
    :cond_4
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_6

    .line 975
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v2, v4

    iput v2, p0, Lo/SessionFiles;->extraCallback:I

    goto/16 :goto_4

    .line 972
    :cond_6
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v3, 0xe

    if-eq v2, v3, :cond_f

    const/16 v3, 0xa

    if-ne v2, v3, :cond_8

    goto :goto_3

    :cond_8
    const/16 v3, 0x9

    if-eq v2, v3, :cond_e

    const/16 v3, 0xd

    if-ne v2, v3, :cond_9

    goto :goto_2

    :cond_9
    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    const/16 v3, 0xc

    if-ne v2, v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0x11

    if-ne v2, v3, :cond_b

    .line 983
    iget-object v2, p0, Lo/SessionFiles$Builder;->getInterfaceDescriptor:Lo/updatePriority;

    iget v3, p0, Lo/SessionFiles$Builder;->updateVisuals:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lo/updatePriority;->asInterface(J)V

    goto :goto_4

    :cond_b
    const/16 v3, 0x12

    if-eq v2, v3, :cond_c

    goto :goto_4

    .line 985
    :cond_c
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 986
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 981
    :cond_d
    :goto_1
    sget-object v2, Lo/SessionFiles$Builder;->ICustomTabsCallback$Stub:Lo/matches;

    invoke-direct {p0, v2}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_4

    .line 979
    :cond_e
    :goto_2
    sget-object v2, Lo/SessionFiles$Builder;->asInterface:Lo/matches;

    invoke-direct {p0, v2}, Lo/SessionFiles$Builder;->ICustomTabsCallback(Lo/matches;)V

    goto :goto_4

    .line 977
    :cond_f
    :goto_3
    invoke-direct {p0}, Lo/SessionFiles$Builder;->ICustomTabsService$Stub()V

    .line 988
    :goto_4
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v1, :cond_0

    .line 991
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v1, v4

    aget v2, v0, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    .line 992
    iget-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v1, v4

    const-string v2, "null"

    aput-object v2, v0, v1

    return-void

    .line 947
    :cond_10
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot skip unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(Lo/SessionFiles$onNavigationEvent;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 655
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 657
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0x8

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 663
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/SessionFiles$Builder;->onMessageChannelReady(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I

    move-result p1

    return p1

    .line 666
    :cond_2
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    iget-object v3, p1, Lo/SessionFiles$onNavigationEvent;->extraCallback:Lo/error;

    invoke-interface {v0, v3}, Lo/fullLimitUpdateChild;->onNavigationEvent(Lo/error;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 p1, 0x0

    .line 668
    iput p1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 669
    iget-object p1, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, p1, v1

    return v0

    .line 674
    :cond_3
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v0

    .line 675
    invoke-direct {p0, v0, p1}, Lo/SessionFiles$Builder;->onMessageChannelReady(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 678
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 679
    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 680
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    aput v2, v0, v1

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final onMessageChannelReady()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 125
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 128
    invoke-virtual {p0, v0}, Lo/SessionFiles$Builder;->ICustomTabsCallback(I)V

    .line 129
    iget-object v1, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    aput v0, v1, v2

    .line 130
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    return-void

    .line 132
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected BEGIN_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onNavigationEvent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 140
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 143
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/SessionFiles;->extraCallback:I

    .line 144
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 145
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    return-void

    .line 147
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_ARRAY but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Lo/SessionFiles$onNavigationEvent;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 551
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 553
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 559
    iget-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lo/SessionFiles$Builder;->extraCallback(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I

    move-result p1

    return p1

    .line 562
    :cond_2
    iget-object v0, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    iget-object v3, p1, Lo/SessionFiles$onNavigationEvent;->extraCallback:Lo/error;

    invoke-interface {v0, v3}, Lo/fullLimitUpdateChild;->onNavigationEvent(Lo/error;)I

    move-result v0

    if-eq v0, v2, :cond_3

    const/4 v1, 0x0

    .line 564
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 565
    iget-object v1, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    iget-object p1, p1, Lo/SessionFiles$onNavigationEvent;->onMessageChannelReady:[Ljava/lang/String;

    aget-object p1, p1, v0

    aput-object p1, v1, v2

    return v0

    .line 572
    :cond_3
    iget-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v3, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v3, v3, -0x1

    aget-object v0, v0, v3

    .line 574
    invoke-virtual {p0}, Lo/SessionFiles;->asInterface()Ljava/lang/String;

    move-result-object v3

    .line 575
    invoke-direct {p0, v3, p1}, Lo/SessionFiles$Builder;->extraCallback(Ljava/lang/String;Lo/SessionFiles$onNavigationEvent;)I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 578
    iput v1, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 579
    iput-object v3, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    .line 581
    iget-object v1, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_4
    return p1

    :cond_5
    :goto_0
    return v2
.end method

.method public final onPostMessage()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 169
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 172
    iget v0, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lo/SessionFiles;->extraCallback:I

    .line 173
    iget-object v0, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 174
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    return-void

    .line 177
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected END_OBJECT but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 705
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 708
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 709
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v1, v3

    aget v2, v0, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    return v3

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    .line 712
    iput v2, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 713
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    sub-int/2addr v1, v3

    aget v4, v0, v1

    add-int/2addr v4, v3

    aput v4, v0, v1

    return v2

    .line 716
    :cond_2
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected a boolean but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 716
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onTransact()Lo/SessionFiles$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 193
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 226
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 224
    :pswitch_0
    sget-object v0, Lo/SessionFiles$onPostMessage;->asBinder:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 222
    :pswitch_1
    sget-object v0, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback$Stub:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 209
    :pswitch_2
    sget-object v0, Lo/SessionFiles$onPostMessage;->ICustomTabsCallback:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 219
    :pswitch_3
    sget-object v0, Lo/SessionFiles$onPostMessage;->onRelationshipValidationResult:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 214
    :pswitch_4
    sget-object v0, Lo/SessionFiles$onPostMessage;->onTransact:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 212
    :pswitch_5
    sget-object v0, Lo/SessionFiles$onPostMessage;->asInterface:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 204
    :pswitch_6
    sget-object v0, Lo/SessionFiles$onPostMessage;->onMessageChannelReady:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 202
    :pswitch_7
    sget-object v0, Lo/SessionFiles$onPostMessage;->onNavigationEvent:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 200
    :pswitch_8
    sget-object v0, Lo/SessionFiles$onPostMessage;->extraCallback:Lo/SessionFiles$onPostMessage;

    return-object v0

    .line 198
    :pswitch_9
    sget-object v0, Lo/SessionFiles$onPostMessage;->onPostMessage:Lo/SessionFiles$onPostMessage;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final requestPostMessageChannel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1162
    invoke-virtual {p0}, Lo/SessionFiles;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Lo/SessionFiles;->asInterface()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/SessionFiles$Builder;->postMessage:Ljava/lang/String;

    const/16 v0, 0xb

    .line 1164
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonReader("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/SessionFiles$Builder;->newSession:Lo/fullLimitUpdateChild;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final warmup()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 720
    iget v0, p0, Lo/SessionFiles$Builder;->warmup:I

    if-nez v0, :cond_0

    .line 722
    invoke-direct {p0}, Lo/SessionFiles$Builder;->mayLaunchUrl()I

    move-result v0

    :cond_0
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 725
    iput v0, p0, Lo/SessionFiles$Builder;->warmup:I

    .line 726
    iget-object v0, p0, Lo/SessionFiles;->onPostMessage:[I

    iget v1, p0, Lo/SessionFiles;->extraCallback:I

    add-int/lit8 v1, v1, -0x1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    const/4 v0, 0x0

    return-object v0

    .line 729
    :cond_1
    new-instance v0, Lcom/squareup/moshi/JsonDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected null but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/SessionFiles;->onTransact()Lo/SessionFiles$onPostMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " at path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19508
    iget v2, p0, Lo/SessionFiles;->extraCallback:I

    iget-object v3, p0, Lo/SessionFiles;->onNavigationEvent:[I

    iget-object v4, p0, Lo/SessionFiles;->ICustomTabsCallback:[Ljava/lang/String;

    iget-object v5, p0, Lo/SessionFiles;->onPostMessage:[I

    invoke-static {v2, v3, v4, v5}, Lo/extraCallback$ICustomTabsCallback;->onPostMessage(I[I[Ljava/lang/String;[I)Ljava/lang/String;

    move-result-object v2

    .line 729
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/squareup/moshi/JsonDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
