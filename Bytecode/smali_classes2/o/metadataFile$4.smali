.class final Lo/metadataFile$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JniNativeApi$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/metadataFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lo/sessionFile;",
            ")",
            "Lo/JniNativeApi<",
            "*>;"
        }
    .end annotation

    .line 38
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 39
    :cond_0
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_1

    sget-object p1, Lo/metadataFile;->extraCallback:Lo/JniNativeApi;

    return-object p1

    .line 40
    :cond_1
    sget-object p2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_2

    sget-object p1, Lo/metadataFile;->onNavigationEvent:Lo/JniNativeApi;

    return-object p1

    .line 41
    :cond_2
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_3

    sget-object p1, Lo/metadataFile;->onMessageChannelReady:Lo/JniNativeApi;

    return-object p1

    .line 42
    :cond_3
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_4

    sget-object p1, Lo/metadataFile;->onPostMessage:Lo/JniNativeApi;

    return-object p1

    .line 43
    :cond_4
    sget-object p2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_5

    sget-object p1, Lo/metadataFile;->asBinder:Lo/JniNativeApi;

    return-object p1

    .line 44
    :cond_5
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_6

    sget-object p1, Lo/metadataFile;->asInterface:Lo/JniNativeApi;

    return-object p1

    .line 45
    :cond_6
    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_7

    sget-object p1, Lo/metadataFile;->ICustomTabsCallback$Stub:Lo/JniNativeApi;

    return-object p1

    .line 46
    :cond_7
    sget-object p2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_8

    sget-object p1, Lo/metadataFile;->onRelationshipValidationResult:Lo/JniNativeApi;

    return-object p1

    .line 47
    :cond_8
    const-class p2, Ljava/lang/Boolean;

    if-ne p1, p2, :cond_9

    sget-object p1, Lo/metadataFile;->extraCallback:Lo/JniNativeApi;

    .line 1136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 48
    :cond_9
    const-class p2, Ljava/lang/Byte;

    if-ne p1, p2, :cond_a

    sget-object p1, Lo/metadataFile;->onNavigationEvent:Lo/JniNativeApi;

    .line 2136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 49
    :cond_a
    const-class p2, Ljava/lang/Character;

    if-ne p1, p2, :cond_b

    sget-object p1, Lo/metadataFile;->onMessageChannelReady:Lo/JniNativeApi;

    .line 3136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 50
    :cond_b
    const-class p2, Ljava/lang/Double;

    if-ne p1, p2, :cond_c

    sget-object p1, Lo/metadataFile;->onPostMessage:Lo/JniNativeApi;

    .line 4136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 51
    :cond_c
    const-class p2, Ljava/lang/Float;

    if-ne p1, p2, :cond_d

    sget-object p1, Lo/metadataFile;->asBinder:Lo/JniNativeApi;

    .line 5136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 52
    :cond_d
    const-class p2, Ljava/lang/Integer;

    if-ne p1, p2, :cond_e

    sget-object p1, Lo/metadataFile;->asInterface:Lo/JniNativeApi;

    .line 6136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 53
    :cond_e
    const-class p2, Ljava/lang/Long;

    if-ne p1, p2, :cond_f

    sget-object p1, Lo/metadataFile;->ICustomTabsCallback$Stub:Lo/JniNativeApi;

    .line 7136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 54
    :cond_f
    const-class p2, Ljava/lang/Short;

    if-ne p1, p2, :cond_10

    sget-object p1, Lo/metadataFile;->onRelationshipValidationResult:Lo/JniNativeApi;

    .line 8136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 55
    :cond_10
    const-class p2, Ljava/lang/String;

    if-ne p1, p2, :cond_11

    sget-object p1, Lo/metadataFile;->onTransact:Lo/JniNativeApi;

    .line 9136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 56
    :cond_11
    const-class p2, Ljava/lang/Object;

    if-ne p1, p2, :cond_12

    new-instance p1, Lo/metadataFile$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/metadataFile$onMessageChannelReady;-><init>(Lo/sessionFile;)V

    .line 10136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    .line 58
    :cond_12
    invoke-static {p1}, Lo/serializeSessionOs;->ICustomTabsCallback(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    .line 60
    invoke-static {p3, p1, p2}, Lo/serializeBeginSession;->extraCallback(Lo/sessionFile;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lo/JniNativeApi;

    move-result-object p1

    if-eqz p1, :cond_13

    return-object p1

    .line 65
    :cond_13
    invoke-virtual {p2}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 67
    new-instance p1, Lo/metadataFile$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/metadataFile$onNavigationEvent;-><init>(Ljava/lang/Class;)V

    .line 11136
    new-instance p2, Lo/SessionFilesProvider;

    invoke-direct {p2, p1}, Lo/SessionFilesProvider;-><init>(Lo/JniNativeApi;)V

    return-object p2

    :cond_14
    return-object v0
.end method
