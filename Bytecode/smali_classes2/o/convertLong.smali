.class public final Lo/convertLong;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final ICustomTabsCallback:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final ICustomTabsCallback$Stub:Lo/convertLong;

.field public static final ICustomTabsCallback$Stub$Proxy:Lo/convertLong;

.field public static final ICustomTabsService:Lo/convertLong;

.field private static final ICustomTabsService$Stub$Proxy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/convertLong;",
            ">;"
        }
    .end annotation
.end field

.field public static final asBinder:Lo/convertLong;

.field public static final asInterface:Lo/convertLong;

.field public static final extraCallback:Lo/convertLong;

.field public static final extraCommand:Lo/convertLong;

.field public static final getInterfaceDescriptor:Lo/convertLong;

.field public static final mayLaunchUrl:Lo/convertLong;

.field public static final newSession:Lo/convertLong;

.field public static final onMessageChannelReady:Lo/convertLong;

.field public static final onNavigationEvent:Lo/convertLong;

.field public static final onPostMessage:Lo/convertLong;

.field public static final onRelationshipValidationResult:Lo/convertLong;

.field public static final onTransact:Lo/convertLong;

.field public static final postMessage:Lo/convertLong;

.field public static final requestPostMessageChannel:Lo/convertLong;

.field public static final warmup:Lo/convertLong;


# instance fields
.field final updateVisuals:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lo/convertLong$5;

    invoke-direct {v0}, Lo/convertLong$5;-><init>()V

    sput-object v0, Lo/convertLong;->ICustomTabsCallback:Ljava/util/Comparator;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    .line 1457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_NULL_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 1458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 2458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_EXPORT_WITH_RC4_40_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 3458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_RC4_128_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 4458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 5458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 6458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_DES_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 7458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 8458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sput-object v0, Lo/convertLong;->onMessageChannelReady:Lo/convertLong;

    .line 9457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 9458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_DSS_WITH_DES_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 10458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 11458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 12458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_RSA_WITH_DES_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 13458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 14458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 15458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DH_anon_WITH_RC4_128_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 16458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 17458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DH_anon_WITH_DES_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 18458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19457
    new-instance v0, Lo/convertLong;

    const-string v1, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 19458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 20458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 21458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 22458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_DES_CBC_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 23458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 24458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_WITH_RC4_128_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 25458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 26458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 27458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 28458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 29458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 30458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sput-object v0, Lo/convertLong;->extraCallback:Lo/convertLong;

    .line 31457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 31458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 32458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 33458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 34458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sput-object v0, Lo/convertLong;->onNavigationEvent:Lo/convertLong;

    .line 35457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 35458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 36458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 37458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_NULL_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 38458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 39458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_256_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 40458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 41458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 42458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 43458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 44458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 45458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 46458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 47458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 48458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_256_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 49458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50457
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50458
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50460
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50461
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50463
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50464
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50466
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_PSK_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50467
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50469
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_PSK_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50470
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50472
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50473
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50475
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50476
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50478
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_SEED_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50479
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50481
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50482
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sput-object v0, Lo/convertLong;->onPostMessage:Lo/convertLong;

    .line 50484
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50485
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sput-object v0, Lo/convertLong;->onTransact:Lo/convertLong;

    .line 50487
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50488
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50490
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50491
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50493
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50494
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50496
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50497
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50499
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50500
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50502
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DH_anon_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50503
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50505
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50506
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50508
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_FALLBACK_SCSV"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50509
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50511
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50512
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50514
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50515
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50517
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50518
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50520
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50521
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50523
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50524
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50526
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50527
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50529
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50530
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50532
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50533
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50535
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50536
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50538
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50539
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50541
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50542
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50544
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50545
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50547
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50548
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50550
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50551
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50553
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50554
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50556
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50557
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50559
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50560
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50562
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50563
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50565
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50566
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sput-object v0, Lo/convertLong;->ICustomTabsCallback$Stub:Lo/convertLong;

    .line 50568
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50569
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sput-object v0, Lo/convertLong;->asInterface:Lo/convertLong;

    .line 50571
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_anon_WITH_NULL_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50572
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50574
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_anon_WITH_RC4_128_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50575
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50577
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50578
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50580
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50581
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50583
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50584
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50586
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50587
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50589
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50590
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50592
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50593
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50595
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50596
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50598
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50599
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50601
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50602
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50604
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50605
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50607
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50608
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50610
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50611
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sput-object v0, Lo/convertLong;->onRelationshipValidationResult:Lo/convertLong;

    .line 50613
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50614
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sput-object v0, Lo/convertLong;->asBinder:Lo/convertLong;

    .line 50616
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50617
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50619
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50620
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50622
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50623
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sput-object v0, Lo/convertLong;->warmup:Lo/convertLong;

    .line 50625
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50626
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sput-object v0, Lo/convertLong;->ICustomTabsCallback$Stub$Proxy:Lo/convertLong;

    .line 50628
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50629
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50631
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50632
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50634
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50635
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50637
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50638
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50640
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50641
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    sput-object v0, Lo/convertLong;->newSession:Lo/convertLong;

    .line 50643
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50644
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    sput-object v0, Lo/convertLong;->getInterfaceDescriptor:Lo/convertLong;

    .line 50646
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50647
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50649
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50650
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50652
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_AES_128_GCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50653
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    sput-object v0, Lo/convertLong;->ICustomTabsService:Lo/convertLong;

    .line 50655
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_AES_256_GCM_SHA384"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50656
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    sput-object v0, Lo/convertLong;->mayLaunchUrl:Lo/convertLong;

    .line 50658
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_CHACHA20_POLY1305_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50659
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    sput-object v0, Lo/convertLong;->requestPostMessageChannel:Lo/convertLong;

    .line 50661
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_AES_128_CCM_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50662
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    sput-object v0, Lo/convertLong;->postMessage:Lo/convertLong;

    .line 50664
    new-instance v0, Lo/convertLong;

    const-string v1, "TLS_AES_256_CCM_8_SHA256"

    invoke-direct {v0, v1}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 50665
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    sput-object v0, Lo/convertLong;->extraCommand:Lo/convertLong;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 448
    iput-object p1, p0, Lo/convertLong;->updateVisuals:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 446
    throw p1
.end method

.method static varargs ICustomTabsCallback([Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/convertLong;",
            ">;"
        }
    .end annotation

    .line 437
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 438
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 439
    invoke-static {v3}, Lo/convertLong;->extraCallback(Ljava/lang/String;)Lo/convertLong;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized extraCallback(Ljava/lang/String;)Lo/convertLong;
    .locals 5

    const-class v0, Lo/convertLong;

    monitor-enter v0

    .line 412
    :try_start_0
    sget-object v1, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/convertLong;

    if-nez v1, :cond_3

    .line 414
    sget-object v1, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    const-string v2, "TLS_"

    .line 1427
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x4

    if-eqz v2, :cond_0

    .line 1428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "SSL_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "SSL_"

    .line 1429
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1430
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TLS_"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, p0

    .line 414
    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/convertLong;

    if-nez v1, :cond_2

    .line 417
    new-instance v1, Lo/convertLong;

    invoke-direct {v1, p0}, Lo/convertLong;-><init>(Ljava/lang/String;)V

    .line 421
    :cond_2
    sget-object v2, Lo/convertLong;->ICustomTabsService$Stub$Proxy:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 473
    iget-object v0, p0, Lo/convertLong;->updateVisuals:Ljava/lang/String;

    return-object v0
.end method
