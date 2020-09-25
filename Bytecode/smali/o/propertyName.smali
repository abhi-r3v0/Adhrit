.class public Lo/propertyName;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lo/convertInteger$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/propertyName$onPostMessage;
    }
.end annotation


# static fields
.field static final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/valueChange;",
            ">;"
        }
    .end annotation
.end field

.field static final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/convertString;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback:Ljava/net/Proxy;

.field final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub$Proxy:Lo/changeComparator;

.field public final ICustomTabsService:Lo/addProperty;

.field public final ICustomTabsService$Stub:Lo/shouldIncludeGetter;

.field public final ICustomTabsService$Stub$Proxy:Z

.field final INotificationSideChannel:I

.field public final IPostMessageService:Z

.field public final IPostMessageService$Stub:Z

.field public final IPostMessageService$Stub$Proxy:I

.field public final asBinder:Ljava/net/ProxySelector;

.field final asInterface:Lo/resolveType$ICustomTabsCallback;

.field final cancel:I

.field final cancelAll:I

.field public final extraCommand:Lo/deserializeToEnum;

.field public final getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

.field public final mayLaunchUrl:Lo/deserializeToEnum;

.field final newSession:Lo/deserializeToClass;

.field final notify:I

.field public final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/valueChange;",
            ">;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/convertBean;

.field final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/annotatedName;",
            ">;"
        }
    .end annotation
.end field

.field public final onTransact:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/convertString;",
            ">;"
        }
    .end annotation
.end field

.field public final postMessage:Lo/expectMap;

.field public final requestPostMessageChannel:Ljavax/net/ssl/HostnameVerifier;

.field final updateVisuals:Lo/trackChildChange;

.field public final validateRelationship:Lo/deserialize;

.field public final warmup:Ljavax/net/SocketFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [Lo/valueChange;

    .line 127
    sget-object v2, Lo/valueChange;->onNavigationEvent:Lo/valueChange;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/valueChange;->onPostMessage:Lo/valueChange;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lo/generateEventsForType;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/propertyName;->extraCallback:Ljava/util/List;

    new-array v0, v0, [Lo/convertString;

    .line 130
    sget-object v1, Lo/convertString;->onMessageChannelReady:Lo/convertString;

    aput-object v1, v0, v3

    sget-object v1, Lo/convertString;->extraCallback:Lo/convertString;

    aput-object v1, v0, v4

    invoke-static {v0}, Lo/generateEventsForType;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/propertyName;->onNavigationEvent:Ljava/util/List;

    .line 134
    new-instance v0, Lo/propertyName$1;

    invoke-direct {v0}, Lo/propertyName$1;-><init>()V

    sput-object v0, Lo/childChangedChange;->onPostMessage:Lo/childChangedChange;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 231
    new-instance v0, Lo/propertyName$onPostMessage;

    invoke-direct {v0}, Lo/propertyName$onPostMessage;-><init>()V

    invoke-direct {p0, v0}, Lo/propertyName;-><init>(Lo/propertyName$onPostMessage;)V

    return-void
.end method

.method public constructor <init>(Lo/propertyName$onPostMessage;)V
    .locals 4

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iget-object v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsCallback:Lo/convertBean;

    iput-object v0, p0, Lo/propertyName;->onPostMessage:Lo/convertBean;

    .line 236
    iget-object v0, p1, Lo/propertyName$onPostMessage;->onMessageChannelReady:Ljava/net/Proxy;

    iput-object v0, p0, Lo/propertyName;->ICustomTabsCallback:Ljava/net/Proxy;

    .line 237
    iget-object v0, p1, Lo/propertyName$onPostMessage;->onNavigationEvent:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName;->onMessageChannelReady:Ljava/util/List;

    .line 238
    iget-object v0, p1, Lo/propertyName$onPostMessage;->onPostMessage:Ljava/util/List;

    iput-object v0, p0, Lo/propertyName;->onTransact:Ljava/util/List;

    .line 239
    iget-object v0, p1, Lo/propertyName$onPostMessage;->extraCallback:Ljava/util/List;

    invoke-static {v0}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/propertyName;->onRelationshipValidationResult:Ljava/util/List;

    .line 240
    iget-object v0, p1, Lo/propertyName$onPostMessage;->asBinder:Ljava/util/List;

    invoke-static {v0}, Lo/generateEventsForType;->onMessageChannelReady(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lo/propertyName;->ICustomTabsCallback$Stub:Ljava/util/List;

    .line 241
    iget-object v0, p1, Lo/propertyName$onPostMessage;->onRelationshipValidationResult:Lo/resolveType$ICustomTabsCallback;

    iput-object v0, p0, Lo/propertyName;->asInterface:Lo/resolveType$ICustomTabsCallback;

    .line 242
    iget-object v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub:Ljava/net/ProxySelector;

    iput-object v0, p0, Lo/propertyName;->asBinder:Ljava/net/ProxySelector;

    .line 243
    iget-object v0, p1, Lo/propertyName$onPostMessage;->onTransact:Lo/addProperty;

    iput-object v0, p0, Lo/propertyName;->ICustomTabsService:Lo/addProperty;

    .line 244
    iget-object v0, p1, Lo/propertyName$onPostMessage;->asInterface:Lo/deserializeToClass;

    iput-object v0, p0, Lo/propertyName;->newSession:Lo/deserializeToClass;

    .line 245
    iget-object v0, p1, Lo/propertyName$onPostMessage;->getInterfaceDescriptor:Lo/changeComparator;

    iput-object v0, p0, Lo/propertyName;->ICustomTabsCallback$Stub$Proxy:Lo/changeComparator;

    .line 246
    iget-object v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsService:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lo/propertyName;->warmup:Ljavax/net/SocketFactory;

    .line 249
    iget-object v0, p0, Lo/propertyName;->onTransact:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/convertString;

    if-nez v2, :cond_1

    .line 1127
    iget-boolean v2, v3, Lo/convertString;->onPostMessage:Z

    if-eqz v2, :cond_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    iget-object v0, p1, Lo/propertyName$onPostMessage;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_1

    .line 257
    :cond_3
    invoke-static {}, Lo/generateEventsForType;->extraCallback()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 258
    invoke-static {v0}, Lo/propertyName;->onPostMessage(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    iput-object v1, p0, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    .line 2041
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getChildAfterChild;->onMessageChannelReady(Ljavax/net/ssl/X509TrustManager;)Lo/trackChildChange;

    move-result-object v0

    .line 259
    iput-object v0, p0, Lo/propertyName;->updateVisuals:Lo/trackChildChange;

    goto :goto_2

    .line 254
    :cond_4
    :goto_1
    iget-object v0, p1, Lo/propertyName$onPostMessage;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    .line 255
    iget-object v0, p1, Lo/propertyName$onPostMessage;->warmup:Lo/trackChildChange;

    iput-object v0, p0, Lo/propertyName;->updateVisuals:Lo/trackChildChange;

    .line 262
    :goto_2
    iget-object v0, p0, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 263
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    iget-object v1, p0, Lo/propertyName;->getInterfaceDescriptor:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v1}, Lo/getChildAfterChild;->onMessageChannelReady(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 266
    :cond_5
    iget-object v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lo/propertyName;->requestPostMessageChannel:Ljavax/net/ssl/HostnameVerifier;

    .line 267
    iget-object v0, p1, Lo/propertyName$onPostMessage;->mayLaunchUrl:Lo/expectMap;

    iget-object v1, p0, Lo/propertyName;->updateVisuals:Lo/trackChildChange;

    .line 2231
    iget-object v2, v0, Lo/expectMap;->onMessageChannelReady:Lo/trackChildChange;

    invoke-static {v2, v1}, Lo/generateEventsForType;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 2233
    :cond_6
    new-instance v2, Lo/expectMap;

    iget-object v0, v0, Lo/expectMap;->ICustomTabsCallback:Ljava/util/Set;

    invoke-direct {v2, v0, v1}, Lo/expectMap;-><init>(Ljava/util/Set;Lo/trackChildChange;)V

    move-object v0, v2

    .line 267
    :goto_3
    iput-object v0, p0, Lo/propertyName;->postMessage:Lo/expectMap;

    .line 269
    iget-object v0, p1, Lo/propertyName$onPostMessage;->extraCommand:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName;->extraCommand:Lo/deserializeToEnum;

    .line 270
    iget-object v0, p1, Lo/propertyName$onPostMessage;->updateVisuals:Lo/deserializeToEnum;

    iput-object v0, p0, Lo/propertyName;->mayLaunchUrl:Lo/deserializeToEnum;

    .line 271
    iget-object v0, p1, Lo/propertyName$onPostMessage;->postMessage:Lo/deserialize;

    iput-object v0, p0, Lo/propertyName;->validateRelationship:Lo/deserialize;

    .line 272
    iget-object v0, p1, Lo/propertyName$onPostMessage;->requestPostMessageChannel:Lo/shouldIncludeGetter;

    iput-object v0, p0, Lo/propertyName;->ICustomTabsService$Stub:Lo/shouldIncludeGetter;

    .line 273
    iget-boolean v0, p1, Lo/propertyName$onPostMessage;->IPostMessageService:Z

    iput-boolean v0, p0, Lo/propertyName;->ICustomTabsService$Stub$Proxy:Z

    .line 274
    iget-boolean v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub$Proxy:Z

    iput-boolean v0, p0, Lo/propertyName;->IPostMessageService$Stub:Z

    .line 275
    iget-boolean v0, p1, Lo/propertyName$onPostMessage;->ICustomTabsService$Stub:Z

    iput-boolean v0, p0, Lo/propertyName;->IPostMessageService:Z

    .line 276
    iget v0, p1, Lo/propertyName$onPostMessage;->validateRelationship:I

    iput v0, p0, Lo/propertyName;->INotificationSideChannel:I

    .line 277
    iget v0, p1, Lo/propertyName$onPostMessage;->IPostMessageService$Stub:I

    iput v0, p0, Lo/propertyName;->cancel:I

    .line 278
    iget v0, p1, Lo/propertyName$onPostMessage;->notify:I

    iput v0, p0, Lo/propertyName;->cancelAll:I

    .line 279
    iget v0, p1, Lo/propertyName$onPostMessage;->INotificationSideChannel:I

    iput v0, p0, Lo/propertyName;->notify:I

    .line 280
    iget p1, p1, Lo/propertyName$onPostMessage;->cancel:I

    iput p1, p0, Lo/propertyName;->IPostMessageService$Stub$Proxy:I

    .line 282
    iget-object p1, p0, Lo/propertyName;->onRelationshipValidationResult:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 285
    iget-object p1, p0, Lo/propertyName;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return-void

    .line 286
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null network interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/propertyName;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 283
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Null interceptor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/propertyName;->onRelationshipValidationResult:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static onPostMessage(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .line 292
    :try_start_0
    invoke-static {}, Lo/getChildAfterChild;->onRelationshipValidationResult()Lo/getChildAfterChild;

    move-result-object v0

    invoke-virtual {v0}, Lo/getChildAfterChild;->extraCallback()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x0

    .line 293
    invoke-virtual {v0, p0, v1, p0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 294
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "No System TLS"

    .line 296
    invoke-static {v0, p0}, Lo/generateEventsForType;->extraCallback(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/AssertionError;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/isCompleteForChild;)Lo/convertInteger;
    .locals 1

    const/4 v0, 0x0

    .line 427
    invoke-static {p0, p1, v0}, Lo/getIndexedNode;->extraCallback(Lo/propertyName;Lo/isCompleteForChild;Z)Lo/getIndexedNode;

    move-result-object p1

    return-object p1
.end method
