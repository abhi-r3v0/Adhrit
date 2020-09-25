.class public abstract Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Map;

.field protected b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;->a:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xml/security/keys/keyresolver/KeyResolverSpi;->b:Z

    return-void
.end method
