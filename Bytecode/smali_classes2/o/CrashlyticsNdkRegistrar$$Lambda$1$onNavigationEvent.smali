.class abstract Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsNdkRegistrar$$Lambda$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "onNavigationEvent"
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field final extraCallback:Ljava/lang/reflect/Type;

.field final onMessageChannelReady:Ljava/lang/reflect/Method;

.field private onNavigationEvent:Ljava/lang/Object;

.field final onPostMessage:Z

.field private onRelationshipValidationResult:[Lo/JniNativeApi;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lo/JniNativeApi<",
            "*>;"
        }
    .end annotation
.end field

.field private onTransact:I


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/Object;Ljava/lang/reflect/Method;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "IIZ)V"
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-static {p1}, Lo/serializeBeginSession;->onMessageChannelReady(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    .line 295
    iput-object p2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Set;

    .line 296
    iput-object p3, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onNavigationEvent:Ljava/lang/Object;

    .line 297
    iput-object p4, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    .line 298
    iput p6, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onTransact:I

    sub-int/2addr p5, p6

    .line 299
    new-array p1, p5, [Lo/JniNativeApi;

    iput-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onRelationshipValidationResult:[Lo/JniNativeApi;

    .line 300
    iput-boolean p7, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/deviceFile;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 320
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public ICustomTabsCallback(Lo/sessionFile;Lo/JniNativeApi$onPostMessage;)V
    .locals 9

    .line 304
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onRelationshipValidationResult:[Lo/JniNativeApi;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 305
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 307
    iget v2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onTransact:I

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    .line 308
    aget-object v4, v0, v2

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 309
    aget-object v5, v1, v2

    invoke-static {v5}, Lo/serializeBeginSession;->onNavigationEvent([Ljava/lang/annotation/Annotation;)Ljava/util/Set;

    move-result-object v5

    .line 310
    iget-object v6, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onRelationshipValidationResult:[Lo/JniNativeApi;

    iget v7, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onTransact:I

    sub-int v7, v2, v7

    .line 311
    iget-object v8, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->extraCallback:Ljava/lang/reflect/Type;

    invoke-static {v8, v4}, Lo/serializeSessionOs;->onNavigationEvent(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->ICustomTabsCallback:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 312
    invoke-virtual {p1, p2, v4, v5}, Lo/sessionFile;->onMessageChannelReady(Lo/JniNativeApi$onPostMessage;Ljava/lang/reflect/Type;Ljava/util/Set;)Lo/JniNativeApi;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 1098
    invoke-virtual {p1, v4, v5, v8}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object v4

    .line 313
    :goto_1
    aput-object v4, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onRelationshipValidationResult:[Lo/JniNativeApi;

    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 331
    aput-object p1, v1, v3

    .line 332
    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    :try_start_0
    iget-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 337
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected final extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onRelationshipValidationResult:[Lo/JniNativeApi;

    array-length v1, v0

    const/4 v2, 0x2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 345
    aput-object p1, v1, v3

    const/4 p1, 0x1

    .line 346
    aput-object p2, v1, p1

    .line 347
    array-length p1, v0

    invoke-static {v0, v3, v1, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    :try_start_0
    iget-object p1, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onMessageChannelReady:Ljava/lang/reflect/Method;

    iget-object p2, p0, Lo/CrashlyticsNdkRegistrar$$Lambda$1$onNavigationEvent;->onNavigationEvent:Ljava/lang/Object;

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 352
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public onPostMessage(Lo/SessionFiles;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 325
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method
