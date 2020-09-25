.class public Lorg/apache/xml/security/keys/keyresolver/KeyResolver;
.super Ljava/lang/Object;


# static fields
.field static a:Lorg/apache/commons/logging/Log;

.field static b:Z

.field static c:Ljava/util/List;

.field static f:Ljava/lang/Class;


# instance fields
.field protected d:Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;

.field protected e:Lorg/apache/xml/security/keys/storage/StorageResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->f:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xml.security.keys.keyresolver.KeyResolver"

    invoke-static {v0}, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->b(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->f:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/String;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->a:Lorg/apache/commons/logging/Log;

    const/4 v0, 0x0

    sput-boolean v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->b:Z

    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->c:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->d:Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;

    iput-object v0, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->e:Lorg/apache/xml/security/keys/storage/StorageResolver;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;

    iput-object p1, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->d:Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;->a(Z)V

    return-void
.end method

.method public static a()V
    .locals 2

    sget-boolean v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->c:Ljava/util/List;

    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->b:Z

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;->c:Ljava/util/List;

    new-instance v1, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;

    invoke-direct {v1, p0}, Lorg/apache/xml/security/keys/keyresolver/KeyResolver;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static b(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method
