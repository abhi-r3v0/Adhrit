.class final Lo/getMaxNode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getMaxNode$extraCallback;
    }
.end annotation


# static fields
.field private static final getInterfaceDescriptor:[C


# instance fields
.field final ICustomTabsCallback:Ljava/lang/String;

.field ICustomTabsCallback$Stub:Lo/shouldIncludeSetter$onMessageChannelReady;

.field asBinder:Lo/serializedName$onMessageChannelReady;

.field asInterface:Lo/isCompleteForPath;

.field extraCallback:Lo/isFullyInitialized$onNavigationEvent;

.field onMessageChannelReady:Ljava/lang/String;

.field final onNavigationEvent:Lo/isCompleteForChild$ICustomTabsCallback;

.field final onPostMessage:Lo/isFullyInitialized;

.field final onRelationshipValidationResult:Z

.field onTransact:Lo/isFiltered;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 31
    fill-array-data v0, :array_0

    sput-object v0, Lo/getMaxNode;->getInterfaceDescriptor:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lo/isFullyInitialized;Ljava/lang/String;Lo/shouldIncludeField;Lo/isFiltered;ZZZ)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/getMaxNode;->ICustomTabsCallback:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lo/getMaxNode;->onPostMessage:Lo/isFullyInitialized;

    .line 54
    iput-object p3, p0, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    .line 55
    new-instance p1, Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-direct {p1}, Lo/isCompleteForChild$ICustomTabsCallback;-><init>()V

    iput-object p1, p0, Lo/getMaxNode;->onNavigationEvent:Lo/isCompleteForChild$ICustomTabsCallback;

    .line 56
    iput-object p5, p0, Lo/getMaxNode;->onTransact:Lo/isFiltered;

    .line 57
    iput-boolean p6, p0, Lo/getMaxNode;->onRelationshipValidationResult:Z

    if-eqz p4, :cond_0

    .line 2131
    new-instance p2, Lo/shouldIncludeField$onMessageChannelReady;

    invoke-direct {p2}, Lo/shouldIncludeField$onMessageChannelReady;-><init>()V

    .line 2132
    iget-object p3, p2, Lo/shouldIncludeField$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object p4, p4, Lo/shouldIncludeField;->onPostMessage:[Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1208
    iput-object p2, p1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    :cond_0
    if-eqz p7, :cond_1

    .line 65
    new-instance p1, Lo/shouldIncludeSetter$onMessageChannelReady;

    invoke-direct {p1}, Lo/shouldIncludeSetter$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/getMaxNode;->ICustomTabsCallback$Stub:Lo/shouldIncludeSetter$onMessageChannelReady;

    return-void

    :cond_1
    if-eqz p8, :cond_2

    .line 68
    new-instance p1, Lo/serializedName$onMessageChannelReady;

    invoke-direct {p1}, Lo/serializedName$onMessageChannelReady;-><init>()V

    iput-object p1, p0, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    .line 69
    sget-object p2, Lo/serializedName;->onPostMessage:Lo/isFiltered;

    invoke-virtual {p1, p2}, Lo/serializedName$onMessageChannelReady;->extraCallback(Lo/isFiltered;)Lo/serializedName$onMessageChannelReady;

    :cond_2
    return-void
.end method

.method static onNavigationEvent(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 99
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x2f

    const/4 v6, -0x1

    const-string v7, " \"<>^`{}|\\?#"

    const/16 v8, 0x7f

    const/16 v9, 0x20

    const/16 v10, 0x25

    if-lt v4, v9, :cond_1

    if-ge v4, v8, :cond_1

    .line 102
    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v6, :cond_1

    if-nez p1, :cond_0

    if-eq v4, v5, :cond_1

    if-ne v4, v10, :cond_0

    goto :goto_1

    .line 99
    :cond_0
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_0

    .line 105
    :cond_1
    :goto_1
    new-instance v4, Lo/updatePriority;

    invoke-direct {v4}, Lo/updatePriority;-><init>()V

    .line 106
    invoke-virtual {v4, v0, v2, v3}, Lo/updatePriority;->onPostMessage(Ljava/lang/String;II)Lo/updatePriority;

    const/4 v11, 0x0

    :goto_2
    if-ge v3, v1, :cond_8

    .line 3121
    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-eqz p1, :cond_2

    const/16 v13, 0x9

    if-eq v12, v13, :cond_7

    const/16 v13, 0xa

    if-eq v12, v13, :cond_7

    const/16 v13, 0xc

    if-eq v12, v13, :cond_7

    const/16 v13, 0xd

    if-eq v12, v13, :cond_7

    :cond_2
    if-lt v12, v9, :cond_4

    if-ge v12, v8, :cond_4

    .line 3126
    invoke-virtual {v7, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ne v13, v6, :cond_4

    if-nez p1, :cond_3

    if-eq v12, v5, :cond_4

    if-ne v12, v10, :cond_3

    goto :goto_3

    .line 3141
    :cond_3
    invoke-virtual {v4, v12}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    goto :goto_6

    :cond_4
    :goto_3
    if-nez v11, :cond_5

    .line 3130
    new-instance v11, Lo/updatePriority;

    invoke-direct {v11}, Lo/updatePriority;-><init>()V

    .line 3132
    :cond_5
    invoke-virtual {v11, v12}, Lo/updatePriority;->onMessageChannelReady(I)Lo/updatePriority;

    .line 4109
    :goto_4
    iget-wide v13, v11, Lo/updatePriority;->ICustomTabsCallback:J

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_6

    const/4 v13, 0x1

    goto :goto_5

    :cond_6
    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_7

    .line 3134
    invoke-virtual {v11}, Lo/updatePriority;->ICustomTabsCallback$Stub()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    .line 3135
    invoke-virtual {v4, v10}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 3136
    sget-object v14, Lo/getMaxNode;->getInterfaceDescriptor:[C

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v14, v14, v15

    invoke-virtual {v4, v14}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    .line 3137
    sget-object v14, Lo/getMaxNode;->getInterfaceDescriptor:[C

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v14, v13

    invoke-virtual {v4, v13}, Lo/updatePriority;->extraCallback(I)Lo/updatePriority;

    goto :goto_4

    .line 3120
    :cond_7
    :goto_6
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_2

    .line 108
    :cond_8
    invoke-virtual {v4}, Lo/updatePriority;->warmup()Ljava/lang/String;

    move-result-object v0

    :cond_9
    return-object v0
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lo/getMaxNode;->onPostMessage:Lo/isFullyInitialized;

    invoke-virtual {v1, v0}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object v0

    iput-object v0, p0, Lo/getMaxNode;->extraCallback:Lo/isFullyInitialized$onNavigationEvent;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lo/getMaxNode;->onPostMessage:Lo/isFullyInitialized;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 159
    iget-object p3, p0, Lo/getMaxNode;->extraCallback:Lo/isFullyInitialized$onNavigationEvent;

    invoke-virtual {p3, p1, p2}, Lo/isFullyInitialized$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    return-void

    .line 162
    :cond_2
    iget-object p3, p0, Lo/getMaxNode;->extraCallback:Lo/isFullyInitialized$onNavigationEvent;

    invoke-virtual {p3, p1, p2}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    return-void
.end method

.method final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-static {p2}, Lo/isFiltered;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFiltered;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lo/getMaxNode;->onTransact:Lo/isFiltered;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Malformed content type: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_1
    iget-object v0, p0, Lo/getMaxNode;->onNavigationEvent:Lo/isCompleteForChild$ICustomTabsCallback;

    .line 2196
    iget-object v0, v0, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    invoke-virtual {v0, p1, p2}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    return-void
.end method
