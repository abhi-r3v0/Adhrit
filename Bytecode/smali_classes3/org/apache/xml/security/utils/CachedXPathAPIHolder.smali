.class public Lorg/apache/xml/security/utils/CachedXPathAPIHolder;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/ThreadLocal;

.field static b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lorg/apache/xpath/CachedXPathAPI;
    .locals 3

    sget-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/CachedXPathAPI;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xpath/CachedXPathAPI;

    invoke-direct {v0}, Lorg/apache/xpath/CachedXPathAPI;-><init>()V

    sget-object v1, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v1, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->b:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lorg/w3c/dom/Document;)V
    .locals 2

    sget-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_1

    sget-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xpath/CachedXPathAPI;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/xpath/CachedXPathAPI;

    invoke-direct {v0}, Lorg/apache/xpath/CachedXPathAPI;-><init>()V

    sget-object v1, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    sget-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/apache/xpath/CachedXPathAPI;->getXPathContext()Lorg/apache/xpath/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xpath/XPathContext;->reset()V

    sget-object v0, Lorg/apache/xml/security/utils/CachedXPathAPIHolder;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
