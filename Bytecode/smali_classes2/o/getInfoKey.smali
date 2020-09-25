.class final Lo/getInfoKey;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/intValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getInfoKey$AudioAttributesCompatParcelizer;,
        Lo/getInfoKey$extraCommand;,
        Lo/getInfoKey$connect;,
        Lo/getInfoKey$warmup;,
        Lo/getInfoKey$onTransact;,
        Lo/getInfoKey$onMessageChannelReady;,
        Lo/getInfoKey$ICustomTabsCallback;,
        Lo/getInfoKey$asInterface;,
        Lo/getInfoKey$ICustomTabsService$Stub$Proxy;,
        Lo/getInfoKey$onRelationshipValidationResult;,
        Lo/getInfoKey$mayLaunchUrl;,
        Lo/getInfoKey$updateVisuals;,
        Lo/getInfoKey$INotificationSideChannel$Stub$Proxy;,
        Lo/getInfoKey$IPostMessageService$Stub;,
        Lo/getInfoKey$AudioAttributesImplBaseParcelizer;,
        Lo/getInfoKey$disconnect;,
        Lo/getInfoKey$ICustomTabsService;,
        Lo/getInfoKey$INotificationSideChannel;,
        Lo/getInfoKey$isConnected;,
        Lo/getInfoKey$read;,
        Lo/getInfoKey$getRoot;,
        Lo/getInfoKey$IPostMessageService;,
        Lo/getInfoKey$INotificationSideChannel$Stub;,
        Lo/getInfoKey$notify;,
        Lo/getInfoKey$getDefaultImpl;,
        Lo/getInfoKey$write;,
        Lo/getInfoKey$getSessionToken;,
        Lo/getInfoKey$asBinder;,
        Lo/getInfoKey$requestPostMessageChannel;,
        Lo/getInfoKey$postMessage;,
        Lo/getInfoKey$INotificationSideChannel$Default;,
        Lo/getInfoKey$validateRelationship;,
        Lo/getInfoKey$AudioAttributesImplApi21Parcelizer;,
        Lo/getInfoKey$getInterfaceDescriptor;,
        Lo/getInfoKey$getServiceComponent;,
        Lo/getInfoKey$IconCompatParcelizer;,
        Lo/getInfoKey$getExtras;,
        Lo/getInfoKey$RemoteActionCompatParcelizer;,
        Lo/getInfoKey$cancelAll;,
        Lo/getInfoKey$cancel;,
        Lo/getInfoKey$IPostMessageService$Stub$Proxy;,
        Lo/getInfoKey$MediaBrowserCompat;,
        Lo/getInfoKey$onPostMessage;,
        Lo/getInfoKey$ICustomTabsService$Stub;,
        Lo/getInfoKey$onNavigationEvent;,
        Lo/getInfoKey$ICustomTabsCallback$Stub$Proxy;,
        Lo/getInfoKey$ICustomTabsCallback$Stub;,
        Lo/getInfoKey$extraCallback;,
        Lo/getInfoKey$newSession;,
        Lo/getInfoKey$setDefaultImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/intValue<",
        "Lo/getMaxName$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/getInfoKey;


# instance fields
.field private final onNavigationEvent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lo/getMaxName$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lo/getInfoKey;

    invoke-direct {v0}, Lo/getInfoKey;-><init>()V

    sput-object v0, Lo/getInfoKey;->onPostMessage:Lo/getInfoKey;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    .line 35
    const-class v1, Ljava/util/Collection;

    new-instance v2, Lo/getInfoKey$getInterfaceDescriptor;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/getInfoKey$getInterfaceDescriptor;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/List;

    new-instance v2, Lo/getInfoKey$setDefaultImpl;

    invoke-direct {v2, v3}, Lo/getInfoKey$setDefaultImpl;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/ArrayList;

    new-instance v2, Lo/getInfoKey$setDefaultImpl;

    invoke-direct {v2, v3}, Lo/getInfoKey$setDefaultImpl;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/Set;

    new-instance v2, Lo/getInfoKey$RemoteActionCompatParcelizer;

    invoke-direct {v2, v3}, Lo/getInfoKey$RemoteActionCompatParcelizer;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/HashSet;

    new-instance v2, Lo/getInfoKey$RemoteActionCompatParcelizer;

    invoke-direct {v2, v3}, Lo/getInfoKey$RemoteActionCompatParcelizer;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/TreeSet;

    new-instance v2, Lo/getInfoKey$getExtras;

    invoke-direct {v2, v3}, Lo/getInfoKey$getExtras;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Landroid/util/SparseArray;

    new-instance v2, Lo/getInfoKey$AudioAttributesImplApi21Parcelizer;

    invoke-direct {v2, v3}, Lo/getInfoKey$AudioAttributesImplApi21Parcelizer;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    new-instance v2, Lo/getInfoKey$IconCompatParcelizer;

    invoke-direct {v2, v3}, Lo/getInfoKey$IconCompatParcelizer;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/HashMap;

    new-instance v2, Lo/getInfoKey$IconCompatParcelizer;

    invoke-direct {v2, v3}, Lo/getInfoKey$IconCompatParcelizer;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/TreeMap;

    new-instance v2, Lo/getInfoKey$getServiceComponent;

    invoke-direct {v2, v3}, Lo/getInfoKey$getServiceComponent;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lo/getInfoKey$validateRelationship;

    invoke-direct {v2, v3}, Lo/getInfoKey$validateRelationship;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Long;

    new-instance v2, Lo/getInfoKey$INotificationSideChannel$Default;

    invoke-direct {v2, v3}, Lo/getInfoKey$INotificationSideChannel$Default;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Double;

    new-instance v2, Lo/getInfoKey$postMessage;

    invoke-direct {v2, v3}, Lo/getInfoKey$postMessage;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Float;

    new-instance v2, Lo/getInfoKey$requestPostMessageChannel;

    invoke-direct {v2, v3}, Lo/getInfoKey$requestPostMessageChannel;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Byte;

    new-instance v2, Lo/getInfoKey$asBinder;

    invoke-direct {v2, v3}, Lo/getInfoKey$asBinder;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/String;

    new-instance v2, Lo/getInfoKey$getSessionToken;

    invoke-direct {v2, v3}, Lo/getInfoKey$getSessionToken;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Character;

    new-instance v2, Lo/getInfoKey$newSession;

    invoke-direct {v2, v3}, Lo/getInfoKey$newSession;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lo/getInfoKey$extraCallback;

    invoke-direct {v2, v3}, Lo/getInfoKey$extraCallback;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, [B

    new-instance v2, Lo/getInfoKey$ICustomTabsCallback$Stub;

    invoke-direct {v2, v3}, Lo/getInfoKey$ICustomTabsCallback$Stub;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, [C

    new-instance v2, Lo/getInfoKey$ICustomTabsCallback$Stub$Proxy;

    invoke-direct {v2, v3}, Lo/getInfoKey$ICustomTabsCallback$Stub$Proxy;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, [Z

    new-instance v2, Lo/getInfoKey$onNavigationEvent;

    invoke-direct {v2, v3}, Lo/getInfoKey$onNavigationEvent;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Landroid/os/IBinder;

    new-instance v2, Lo/getInfoKey$ICustomTabsService$Stub;

    invoke-direct {v2, v3}, Lo/getInfoKey$ICustomTabsService$Stub;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Landroid/os/Bundle;

    new-instance v2, Lo/getInfoKey$onPostMessage;

    invoke-direct {v2, v3}, Lo/getInfoKey$onPostMessage;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Landroid/util/SparseBooleanArray;

    new-instance v2, Lo/getInfoKey$MediaBrowserCompat;

    invoke-direct {v2, v3}, Lo/getInfoKey$MediaBrowserCompat;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/LinkedList;

    new-instance v2, Lo/getInfoKey$IPostMessageService$Stub$Proxy;

    invoke-direct {v2, v3}, Lo/getInfoKey$IPostMessageService$Stub$Proxy;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/LinkedHashMap;

    new-instance v2, Lo/getInfoKey$cancel;

    invoke-direct {v2, v3}, Lo/getInfoKey$cancel;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/SortedMap;

    new-instance v2, Lo/getInfoKey$getServiceComponent;

    invoke-direct {v2, v3}, Lo/getInfoKey$getServiceComponent;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/SortedSet;

    new-instance v2, Lo/getInfoKey$getExtras;

    invoke-direct {v2, v3}, Lo/getInfoKey$getExtras;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    const-class v1, Ljava/util/LinkedHashSet;

    new-instance v2, Lo/getInfoKey$cancelAll;

    invoke-direct {v2, v3}, Lo/getInfoKey$cancelAll;-><init>(B)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static onPostMessage()Lo/getInfoKey;
    .locals 1

    .line 68
    sget-object v0, Lo/getInfoKey;->onPostMessage:Lo/getInfoKey;

    return-object v0
.end method


# virtual methods
.method public final onMessageChannelReady()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lo/getMaxName$onPostMessage;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/getInfoKey;->onNavigationEvent:Ljava/util/Map;

    return-object v0
.end method
