.class final Lo/leafCompare;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/leafCompare$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Ljava/util/regex/Pattern;

.field static final onMessageChannelReady:Ljava/util/regex/Pattern;


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/isFiltered;

.field private final ICustomTabsCallback$Stub$Proxy:[Lo/getFirstChild;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/getFirstChild<",
            "*>;"
        }
    .end annotation
.end field

.field private final asBinder:Ljava/lang/String;

.field private final asInterface:Lo/shouldIncludeField;

.field final extraCallback:Lo/getQueryDefinition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getQueryDefinition<",
            "TR;TT;>;"
        }
    .end annotation
.end field

.field private final getInterfaceDescriptor:Z

.field private final newSession:Z

.field final onNavigationEvent:Lo/ensureIndexed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "TR;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/convertInteger$ICustomTabsCallback;

.field private final onRelationshipValidationResult:Lo/isFullyInitialized;

.field private final onTransact:Ljava/lang/String;

.field private final warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 64
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/leafCompare;->onMessageChannelReady:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 65
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo/leafCompare;->ICustomTabsCallback:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lo/leafCompare$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/leafCompare$ICustomTabsCallback<",
            "TR;TT;>;)V"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback:Lo/NodeFromJSON;

    .line 1182
    iget-object v0, v0, Lo/NodeFromJSON;->onNavigationEvent:Lo/convertInteger$ICustomTabsCallback;

    .line 82
    iput-object v0, p0, Lo/leafCompare;->onPostMessage:Lo/convertInteger$ICustomTabsCallback;

    .line 83
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->extraCommand:Lo/getQueryDefinition;

    iput-object v0, p0, Lo/leafCompare;->extraCallback:Lo/getQueryDefinition;

    .line 84
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback:Lo/NodeFromJSON;

    .line 1187
    iget-object v0, v0, Lo/NodeFromJSON;->ICustomTabsCallback:Lo/isFullyInitialized;

    .line 84
    iput-object v0, p0, Lo/leafCompare;->onRelationshipValidationResult:Lo/isFullyInitialized;

    .line 85
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->updateVisuals:Lo/ensureIndexed;

    iput-object v0, p0, Lo/leafCompare;->onNavigationEvent:Lo/ensureIndexed;

    .line 86
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iput-object v0, p0, Lo/leafCompare;->asBinder:Ljava/lang/String;

    .line 87
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->newSession:Ljava/lang/String;

    iput-object v0, p0, Lo/leafCompare;->onTransact:Ljava/lang/String;

    .line 88
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->warmup:Lo/shouldIncludeField;

    iput-object v0, p0, Lo/leafCompare;->asInterface:Lo/shouldIncludeField;

    .line 89
    iget-object v0, p1, Lo/leafCompare$ICustomTabsCallback;->requestPostMessageChannel:Lo/isFiltered;

    iput-object v0, p0, Lo/leafCompare;->ICustomTabsCallback$Stub:Lo/isFiltered;

    .line 90
    iget-boolean v0, p1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsCallback$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/leafCompare;->newSession:Z

    .line 91
    iget-boolean v0, p1, Lo/leafCompare$ICustomTabsCallback;->getInterfaceDescriptor:Z

    iput-boolean v0, p0, Lo/leafCompare;->getInterfaceDescriptor:Z

    .line 92
    iget-boolean v0, p1, Lo/leafCompare$ICustomTabsCallback;->ICustomTabsService:Z

    iput-boolean v0, p0, Lo/leafCompare;->warmup:Z

    .line 93
    iget-object p1, p1, Lo/leafCompare$ICustomTabsCallback;->postMessage:[Lo/getFirstChild;

    iput-object p1, p0, Lo/leafCompare;->ICustomTabsCallback$Stub$Proxy:[Lo/getFirstChild;

    return-void
.end method

.method static extraCallback(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 770
    sget-object v0, Lo/leafCompare;->onMessageChannelReady:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 771
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 772
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 773
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static onMessageChannelReady(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 779
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 780
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 781
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 782
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 783
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 784
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 785
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 786
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method


# virtual methods
.method final varargs onNavigationEvent([Ljava/lang/Object;)Lo/isCompleteForChild;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    new-instance v9, Lo/getMaxNode;

    iget-object v1, p0, Lo/leafCompare;->asBinder:Ljava/lang/String;

    iget-object v2, p0, Lo/leafCompare;->onRelationshipValidationResult:Lo/isFullyInitialized;

    iget-object v3, p0, Lo/leafCompare;->onTransact:Ljava/lang/String;

    iget-object v4, p0, Lo/leafCompare;->asInterface:Lo/shouldIncludeField;

    iget-object v5, p0, Lo/leafCompare;->ICustomTabsCallback$Stub:Lo/isFiltered;

    iget-boolean v6, p0, Lo/leafCompare;->newSession:Z

    iget-boolean v7, p0, Lo/leafCompare;->getInterfaceDescriptor:Z

    iget-boolean v8, p0, Lo/leafCompare;->warmup:Z

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lo/getMaxNode;-><init>(Ljava/lang/String;Lo/isFullyInitialized;Ljava/lang/String;Lo/shouldIncludeField;Lo/isFiltered;ZZZ)V

    .line 102
    iget-object v0, p0, Lo/leafCompare;->ICustomTabsCallback$Stub$Proxy:[Lo/getFirstChild;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 104
    array-length v2, p1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 105
    :goto_0
    array-length v3, v0

    if-ne v2, v3, :cond_b

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    .line 111
    aget-object v4, v0, v3

    aget-object v5, p1, v3

    invoke-virtual {v4, v9, v5}, Lo/getFirstChild;->onPostMessage(Lo/getMaxNode;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1191
    :cond_1
    iget-object p1, v9, Lo/getMaxNode;->extraCallback:Lo/isFullyInitialized$onNavigationEvent;

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1193
    invoke-virtual {p1}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object p1

    goto :goto_3

    .line 1197
    :cond_2
    iget-object p1, v9, Lo/getMaxNode;->onPostMessage:Lo/isFullyInitialized;

    iget-object v2, v9, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    .line 1867
    invoke-virtual {p1, v2}, Lo/isFullyInitialized;->ICustomTabsCallback(Ljava/lang/String;)Lo/isFullyInitialized$onNavigationEvent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1868
    invoke-virtual {p1}, Lo/isFullyInitialized$onNavigationEvent;->ICustomTabsCallback()Lo/isFullyInitialized;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_a

    .line 1204
    :goto_3
    iget-object v2, v9, Lo/getMaxNode;->asInterface:Lo/isCompleteForPath;

    if-nez v2, :cond_6

    .line 1207
    iget-object v3, v9, Lo/getMaxNode;->ICustomTabsCallback$Stub:Lo/shouldIncludeSetter$onMessageChannelReady;

    if-eqz v3, :cond_4

    .line 1208
    iget-object v0, v9, Lo/getMaxNode;->ICustomTabsCallback$Stub:Lo/shouldIncludeSetter$onMessageChannelReady;

    .line 2137
    new-instance v2, Lo/shouldIncludeSetter;

    iget-object v1, v0, Lo/shouldIncludeSetter$onMessageChannelReady;->onPostMessage:Ljava/util/List;

    iget-object v0, v0, Lo/shouldIncludeSetter$onMessageChannelReady;->onMessageChannelReady:Ljava/util/List;

    invoke-direct {v2, v1, v0}, Lo/shouldIncludeSetter;-><init>(Ljava/util/List;Ljava/util/List;)V

    goto :goto_4

    .line 1209
    :cond_4
    iget-object v3, v9, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    if-eqz v3, :cond_5

    .line 1210
    iget-object v0, v9, Lo/getMaxNode;->asBinder:Lo/serializedName$onMessageChannelReady;

    invoke-virtual {v0}, Lo/serializedName$onMessageChannelReady;->onNavigationEvent()Lo/serializedName;

    move-result-object v2

    goto :goto_4

    .line 1211
    :cond_5
    iget-boolean v3, v9, Lo/getMaxNode;->onRelationshipValidationResult:Z

    if-eqz v3, :cond_6

    new-array v1, v1, [B

    .line 1213
    invoke-static {v0, v1}, Lo/isCompleteForPath;->ICustomTabsCallback(Lo/isFiltered;[B)Lo/isCompleteForPath;

    move-result-object v2

    .line 1217
    :cond_6
    :goto_4
    iget-object v0, v9, Lo/getMaxNode;->onTransact:Lo/isFiltered;

    if-eqz v0, :cond_8

    if-eqz v2, :cond_7

    .line 1220
    new-instance v1, Lo/getMaxNode$extraCallback;

    invoke-direct {v1, v2, v0}, Lo/getMaxNode$extraCallback;-><init>(Lo/isCompleteForPath;Lo/isFiltered;)V

    move-object v2, v1

    goto :goto_5

    .line 1222
    :cond_7
    iget-object v1, v9, Lo/getMaxNode;->onNavigationEvent:Lo/isCompleteForChild$ICustomTabsCallback;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2196
    iget-object v1, v1, Lo/isCompleteForChild$ICustomTabsCallback;->extraCallback:Lo/shouldIncludeField$onMessageChannelReady;

    const-string v3, "Content-Type"

    invoke-virtual {v1, v3, v0}, Lo/shouldIncludeField$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/String;)Lo/shouldIncludeField$onMessageChannelReady;

    .line 1226
    :cond_8
    :goto_5
    iget-object v0, v9, Lo/getMaxNode;->onNavigationEvent:Lo/isCompleteForChild$ICustomTabsCallback;

    .line 3145
    iput-object p1, v0, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    .line 1227
    iget-object p1, v9, Lo/getMaxNode;->ICustomTabsCallback:Ljava/lang/String;

    .line 1228
    invoke-virtual {v0, p1, v2}, Lo/isCompleteForChild$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;Lo/isCompleteForPath;)Lo/isCompleteForChild$ICustomTabsCallback;

    move-result-object p1

    .line 3292
    iget-object v0, p1, Lo/isCompleteForChild$ICustomTabsCallback;->onPostMessage:Lo/isFullyInitialized;

    if-eqz v0, :cond_9

    .line 3293
    new-instance v0, Lo/isCompleteForChild;

    invoke-direct {v0, p1}, Lo/isCompleteForChild;-><init>(Lo/isCompleteForChild$ICustomTabsCallback;)V

    return-object v0

    .line 3292
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "url == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1199
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed URL. Base: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v9, Lo/getMaxNode;->onPostMessage:Lo/isFullyInitialized;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Relative: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lo/getMaxNode;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 106
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Argument count ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") doesn\'t match expected count ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
