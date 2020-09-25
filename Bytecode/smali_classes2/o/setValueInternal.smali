.class public Lo/setValueInternal;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/toException;",
            ">;"
        }
    .end annotation
.end field

.field private static notify:Ljavax/net/ssl/SSLSocketFactory;

.field static final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/child;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/fromStatus;",
            ">;"
        }
    .end annotation
.end field

.field public ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

.field public ICustomTabsService:Lo/setHijackHash;

.field public ICustomTabsService$Stub:I

.field public ICustomTabsService$Stub$Proxy:I

.field public IPostMessageService:Z

.field public IPostMessageService$Stub:I

.field public asBinder:Ljava/net/CookieHandler;

.field public asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/child;",
            ">;"
        }
    .end annotation
.end field

.field private final cancelAll:Lo/setEventTarget;

.field public extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/toException;",
            ">;"
        }
    .end annotation
.end field

.field public extraCommand:Lo/exists;

.field public getInterfaceDescriptor:Ljavax/net/SocketFactory;

.field public mayLaunchUrl:Z

.field public newSession:Ljavax/net/ssl/SSLSocketFactory;

.field onMessageChannelReady:Lo/onClosed;

.field public onNavigationEvent:Ljava/net/Proxy;

.field final onRelationshipValidationResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/fromStatus;",
            ">;"
        }
    .end annotation
.end field

.field public onTransact:Ljava/net/ProxySelector;

.field public postMessage:Lo/onChildMoved;

.field public requestPostMessageChannel:Lo/hasNext;

.field public updateVisuals:Lo/onChildChanged;

.field public validateRelationship:Z

.field public warmup:Lo/serializeSessionDevice;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Lo/toException;

    .line 54
    sget-object v2, Lo/toException;->onPostMessage:Lo/toException;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lo/toException;->ICustomTabsCallback:Lo/toException;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lo/toException;->extraCallback:Lo/toException;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-static {v1}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lo/setValueInternal;->ICustomTabsCallback:Ljava/util/List;

    new-array v0, v0, [Lo/child;

    .line 57
    sget-object v1, Lo/child;->onPostMessage:Lo/child;

    aput-object v1, v0, v3

    sget-object v1, Lo/child;->onNavigationEvent:Lo/child;

    aput-object v1, v0, v4

    sget-object v1, Lo/child;->onMessageChannelReady:Lo/child;

    aput-object v1, v0, v5

    invoke-static {v0}, Lo/createForTests;->onPostMessage([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lo/setValueInternal;->onPostMessage:Ljava/util/List;

    .line 61
    new-instance v0, Lo/setValueInternal$2;

    invoke-direct {v0}, Lo/setValueInternal$2;-><init>()V

    sput-object v0, Lo/goOnline;->onPostMessage:Lo/goOnline;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lo/setValueInternal;->mayLaunchUrl:Z

    .line 142
    iput-boolean v0, p0, Lo/setValueInternal;->validateRelationship:Z

    .line 143
    iput-boolean v0, p0, Lo/setValueInternal;->IPostMessageService:Z

    const/16 v0, 0x2710

    .line 144
    iput v0, p0, Lo/setValueInternal;->IPostMessageService$Stub:I

    .line 145
    iput v0, p0, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    .line 146
    iput v0, p0, Lo/setValueInternal;->ICustomTabsService$Stub:I

    .line 149
    new-instance v0, Lo/setEventTarget;

    invoke-direct {v0}, Lo/setEventTarget;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->cancelAll:Lo/setEventTarget;

    .line 150
    new-instance v0, Lo/onClosed;

    invoke-direct {v0}, Lo/onClosed;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    return-void
.end method

.method constructor <init>(Lo/setValueInternal;)V
    .locals 2

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lo/setValueInternal;->mayLaunchUrl:Z

    .line 142
    iput-boolean v0, p0, Lo/setValueInternal;->validateRelationship:Z

    .line 143
    iput-boolean v0, p0, Lo/setValueInternal;->IPostMessageService:Z

    const/16 v0, 0x2710

    .line 144
    iput v0, p0, Lo/setValueInternal;->IPostMessageService$Stub:I

    .line 145
    iput v0, p0, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    .line 146
    iput v0, p0, Lo/setValueInternal;->ICustomTabsService$Stub:I

    .line 154
    iget-object v0, p1, Lo/setValueInternal;->cancelAll:Lo/setEventTarget;

    iput-object v0, p0, Lo/setValueInternal;->cancelAll:Lo/setEventTarget;

    .line 155
    iget-object v0, p1, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    iput-object v0, p0, Lo/setValueInternal;->onMessageChannelReady:Lo/onClosed;

    .line 156
    iget-object v0, p1, Lo/setValueInternal;->onNavigationEvent:Ljava/net/Proxy;

    iput-object v0, p0, Lo/setValueInternal;->onNavigationEvent:Ljava/net/Proxy;

    .line 157
    iget-object v0, p1, Lo/setValueInternal;->extraCallback:Ljava/util/List;

    iput-object v0, p0, Lo/setValueInternal;->extraCallback:Ljava/util/List;

    .line 158
    iget-object v0, p1, Lo/setValueInternal;->asInterface:Ljava/util/List;

    iput-object v0, p0, Lo/setValueInternal;->asInterface:Ljava/util/List;

    .line 159
    iget-object v0, p0, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    iget-object v1, p1, Lo/setValueInternal;->onRelationshipValidationResult:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 160
    iget-object v0, p0, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    iget-object v1, p1, Lo/setValueInternal;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v0, p1, Lo/setValueInternal;->onTransact:Ljava/net/ProxySelector;

    iput-object v0, p0, Lo/setValueInternal;->onTransact:Ljava/net/ProxySelector;

    .line 162
    iget-object v0, p1, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    iput-object v0, p0, Lo/setValueInternal;->asBinder:Ljava/net/CookieHandler;

    .line 163
    iget-object v0, p1, Lo/setValueInternal;->warmup:Lo/serializeSessionDevice;

    iput-object v0, p0, Lo/setValueInternal;->warmup:Lo/serializeSessionDevice;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, v0, Lo/serializeSessionDevice;->ICustomTabsCallback:Lo/setHijackHash;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lo/setValueInternal;->ICustomTabsService:Lo/setHijackHash;

    :goto_0
    iput-object v0, p0, Lo/setValueInternal;->ICustomTabsService:Lo/setHijackHash;

    .line 165
    iget-object v0, p1, Lo/setValueInternal;->getInterfaceDescriptor:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lo/setValueInternal;->getInterfaceDescriptor:Ljavax/net/SocketFactory;

    .line 166
    iget-object v0, p1, Lo/setValueInternal;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lo/setValueInternal;->newSession:Ljavax/net/ssl/SSLSocketFactory;

    .line 167
    iget-object v0, p1, Lo/setValueInternal;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lo/setValueInternal;->ICustomTabsCallback$Stub$Proxy:Ljavax/net/ssl/HostnameVerifier;

    .line 168
    iget-object v0, p1, Lo/setValueInternal;->updateVisuals:Lo/onChildChanged;

    iput-object v0, p0, Lo/setValueInternal;->updateVisuals:Lo/onChildChanged;

    .line 169
    iget-object v0, p1, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    iput-object v0, p0, Lo/setValueInternal;->postMessage:Lo/onChildMoved;

    .line 170
    iget-object v0, p1, Lo/setValueInternal;->extraCommand:Lo/exists;

    iput-object v0, p0, Lo/setValueInternal;->extraCommand:Lo/exists;

    .line 171
    iget-object v0, p1, Lo/setValueInternal;->requestPostMessageChannel:Lo/hasNext;

    iput-object v0, p0, Lo/setValueInternal;->requestPostMessageChannel:Lo/hasNext;

    .line 172
    iget-boolean v0, p1, Lo/setValueInternal;->mayLaunchUrl:Z

    iput-boolean v0, p0, Lo/setValueInternal;->mayLaunchUrl:Z

    .line 173
    iget-boolean v0, p1, Lo/setValueInternal;->validateRelationship:Z

    iput-boolean v0, p0, Lo/setValueInternal;->validateRelationship:Z

    .line 174
    iget-boolean v0, p1, Lo/setValueInternal;->IPostMessageService:Z

    iput-boolean v0, p0, Lo/setValueInternal;->IPostMessageService:Z

    .line 175
    iget v0, p1, Lo/setValueInternal;->IPostMessageService$Stub:I

    iput v0, p0, Lo/setValueInternal;->IPostMessageService$Stub:I

    .line 176
    iget v0, p1, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    iput v0, p0, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    .line 177
    iget p1, p1, Lo/setValueInternal;->ICustomTabsService$Stub:I

    iput p1, p0, Lo/setValueInternal;->ICustomTabsService$Stub:I

    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1643
    new-instance v0, Lo/setValueInternal;

    invoke-direct {v0, p0}, Lo/setValueInternal;-><init>(Lo/setValueInternal;)V

    return-object v0
.end method

.method public final extraCallback(Lo/fromException;)Lo/onChildAdded;
    .locals 1

    .line 563
    new-instance v0, Lo/onChildAdded;

    invoke-direct {v0, p0, p1}, Lo/onChildAdded;-><init>(Lo/setValueInternal;Lo/fromException;)V

    return-object v0
.end method

.method final declared-synchronized onMessageChannelReady()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    .line 629
    :try_start_0
    sget-object v0, Lo/setValueInternal;->notify:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "TLS"

    .line 631
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 632
    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 633
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lo/setValueInternal;->notify:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 635
    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 638
    :cond_0
    :goto_0
    sget-object v0, Lo/setValueInternal;->notify:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
