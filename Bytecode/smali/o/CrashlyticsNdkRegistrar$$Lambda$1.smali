.class public final Lo/CrashlyticsNdkRegistrar$$Lambda$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/JniNativeApi$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;",
            ">;",
            "Ljava/util/List<",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onNavigationEvent:Ljava/util/List;

    .line 40
    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public static ICustomTabsCallback(Ljava/lang/Object;)Lo/CrashlyticsNdkRegistrar$$Lambda$1;
    .locals 23

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    const-class v3, Ljava/lang/Object;

    if-eq v2, v3, :cond_9

    .line 110
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_8

    aget-object v15, v3, v6

    .line 111
    const-class v7, Lo/SessionMetadataJsonSerializer;

    invoke-virtual {v15, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    const-string v14, "\n    "

    const-string v13, "Unexpected signature for "

    const/4 v12, 0x1

    if-eqz v7, :cond_3

    .line 1148
    invoke-virtual {v15, v12}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1149
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 1150
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v10

    .line 1151
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 1153
    array-length v8, v10

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    aget-object v8, v10, v5

    const-class v5, Lo/deviceFile;

    if-ne v8, v5, :cond_0

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v11, v5, :cond_0

    .line 1156
    invoke-static {v9, v10}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->extraCallback(I[Ljava/lang/reflect/Type;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1159
    aget-object v5, v7, v12

    invoke-static {v5}, Lo/serializeBeginSession;->onNavigationEvent([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v9

    .line 1160
    new-instance v5, Lo/CrashlyticsNdkRegistrar$$Lambda$1$1;

    aget-object v8, v10, v12

    array-length v11, v10

    move-object v7, v5

    move-object/from16 v10, p0

    move/from16 v16, v11

    move-object v11, v15

    move-object/from16 v19, v3

    const/4 v3, 0x1

    move/from16 v12, v16

    invoke-direct/range {v7 .. v12}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$1;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;I)V

    move/from16 v20, v4

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    goto :goto_2

    :cond_0
    move-object/from16 v19, v3

    const/4 v3, 0x1

    .line 1168
    array-length v5, v10

    if-ne v5, v3, :cond_2

    sget-object v5, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v11, v5, :cond_2

    .line 1170
    invoke-static {v15}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Set;

    move-result-object v17

    const/4 v5, 0x0

    .line 1171
    aget-object v8, v7, v5

    .line 1172
    invoke-static {v8}, Lo/serializeBeginSession;->onNavigationEvent([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v16

    .line 1173
    aget-object v7, v7, v5

    invoke-static {v7}, Lo/serializeBeginSession;->onMessageChannelReady([Ljava/lang/annotation/Annotation;)Z

    move-result v20

    .line 1174
    new-instance v21, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;

    aget-object v8, v10, v5

    array-length v12, v10

    move-object/from16 v7, v21

    move-object/from16 v9, v16

    move-object v5, v10

    move-object/from16 v10, p0

    move-object/from16 v22, v11

    move-object v11, v15

    move-object v3, v13

    move/from16 v13, v20

    move/from16 v20, v4

    move-object v4, v14

    move-object v14, v5

    move-object v5, v15

    move-object/from16 v15, v22

    invoke-direct/range {v7 .. v17}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$3;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    .line 113
    :goto_2
    iget-object v8, v7, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    iget-object v9, v7, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Set;

    invoke-static {v0, v8, v9}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    move-result-object v8

    if-nez v8, :cond_1

    .line 119
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 115
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflicting @ToJson methods:\n    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v8, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move-object v3, v13

    move-object v5, v15

    .line 1194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n@ToJson method signatures may have one of the following structures:\n    <any access modifier> void toJson(JsonWriter writer, T value) throws <any>;\n    <any access modifier> void toJson(JsonWriter writer, T value, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R toJson(T value) throws <any>;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-object/from16 v19, v3

    move/from16 v20, v4

    move-object v3, v13

    move-object v4, v14

    move-object v5, v15

    .line 122
    :goto_3
    const-class v7, Lo/nativeInit;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Method;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    .line 1217
    invoke-virtual {v5, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1218
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v15

    .line 1219
    invoke-static {v5}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Set;

    move-result-object v17

    .line 1220
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 1221
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v7

    .line 1223
    array-length v8, v14

    if-lez v8, :cond_4

    const/4 v8, 0x0

    aget-object v9, v14, v8

    const-class v8, Lo/SessionFiles;

    if-ne v9, v8, :cond_4

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v15, v8, :cond_4

    const/4 v8, 0x1

    .line 1226
    invoke-static {v8, v14}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->extraCallback(I[Ljava/lang/reflect/Type;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1229
    new-instance v3, Lo/CrashlyticsNdkRegistrar$$Lambda$1$2;

    array-length v12, v14

    move-object v7, v3

    move-object v8, v15

    move-object/from16 v9, v17

    move-object/from16 v10, p0

    move-object v11, v5

    invoke-direct/range {v7 .. v12}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$2;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;I)V

    const/16 v18, 0x0

    goto :goto_4

    .line 1237
    :cond_4
    array-length v8, v14

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    sget-object v8, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v15, v8, :cond_6

    const/16 v18, 0x0

    .line 1239
    aget-object v3, v7, v18

    .line 1240
    invoke-static {v3}, Lo/serializeBeginSession;->onNavigationEvent([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v16

    .line 1241
    aget-object v3, v7, v18

    invoke-static {v3}, Lo/serializeBeginSession;->onMessageChannelReady([Ljava/lang/annotation/Annotation;)Z

    move-result v13

    .line 1242
    new-instance v3, Lo/CrashlyticsNdkRegistrar$$Lambda$1$4;

    array-length v12, v14

    move-object v7, v3

    move-object v8, v15

    move-object/from16 v9, v17

    move-object/from16 v10, p0

    move-object v11, v5

    invoke-direct/range {v7 .. v17}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$4;-><init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IZ[Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/util/Set;)V

    .line 124
    :goto_4
    iget-object v5, v3, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    iget-object v7, v3, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Set;

    invoke-static {v1, v5, v7}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    move-result-object v5

    if-nez v5, :cond_5

    .line 130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 126
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Conflicting @FromJson methods:\n    "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v5, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v3, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1262
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".\n@FromJson method signatures may have one of the following structures:\n    <any access modifier> R fromJson(JsonReader jsonReader) throws <any>;\n    <any access modifier> R fromJson(JsonReader jsonReader, JsonAdapter<any> delegate, <any more delegates>) throws <any>;\n    <any access modifier> R fromJson(T value) throws <any>;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    const/16 v18, 0x0

    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    const/4 v5, 0x0

    goto/16 :goto_1

    .line 109
    :cond_8
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    goto/16 :goto_0

    .line 135
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_6

    .line 136
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected at least one @ToJson or @FromJson method on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_b
    :goto_6
    new-instance v2, Lo/CrashlyticsNdkRegistrar$$Lambda$1;

    invoke-direct {v2, v0, v1}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method private static extraCallback(I[Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 205
    array-length v0, p1

    :goto_0
    if-ge p0, v0, :cond_2

    .line 206
    aget-object v1, p1, p0

    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 207
    :cond_0
    aget-object v1, p1, p0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v3, Lo/JniNativeApi;

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static onPostMessage(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;"
        }
    .end annotation

    .line 274
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    .line 276
    iget-object v3, v2, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    invoke-static {v3, p1}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v3, p2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/reflect/Type;Ljava/util/Set;Lo/sessionFile;)Lo/JniNativeApi;
    .locals 8
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

    .line 45
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onNavigationEvent:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    move-result-object v2

    .line 46
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage:Ljava/util/List;

    invoke-static {v0, p1, p2}, Lo/CrashlyticsNdkRegistrar$$Lambda$1;->onPostMessage(Ljava/util/List;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;

    move-result-object v5

    const/4 v0, 0x0

    if-nez v2, :cond_0

    if-nez v5, :cond_0

    return-object v0

    :cond_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_2

    .line 52
    :cond_1
    :try_start_0
    invoke-virtual {p3, p0, p1, p2}, Lo/sessionFile;->onMessageChannelReady(Lo/JniNativeApi$onPostMessage;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/JniNativeApi;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v3, v0

    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {v2, p3, p0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback(Lo/sessionFile;Lo/JniNativeApi$onPostMessage;)V

    :cond_3
    if-eqz v5, :cond_4

    .line 63
    invoke-virtual {v5, p3, p0}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback(Lo/sessionFile;Lo/JniNativeApi$onPostMessage;)V

    .line 65
    :cond_4
    new-instance v0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;

    move-object v1, v0

    move-object v4, p3

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lo/CrashlyticsNdkRegistrar$$Lambda$1$5;-><init>(Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;Lo/JniNativeApi;Lo/sessionFile;Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;Ljava/util/Set;Ljava/lang/reflect/Type;)V

    return-object v0

    :catch_0
    move-exception p3

    if-nez v2, :cond_5

    const-string v0, "@ToJson"

    goto :goto_0

    :cond_5
    const-string v0, "@FromJson"

    .line 55
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " adapter for "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-static {p1, p2}, Lo/serializeBeginSession;->onPostMessage(Ljava/lang/reflect/Type;Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
