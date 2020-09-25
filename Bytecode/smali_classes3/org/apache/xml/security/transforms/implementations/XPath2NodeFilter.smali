.class Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xml/security/signature/NodeFilter;


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Ljava/util/Set;

.field e:Ljava/util/Set;

.field f:Ljava/util/Set;

.field g:I

.field h:I

.field i:I


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->g:I

    iput v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->h:I

    iput v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    iput-object p1, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->d:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a:Z

    iput-object p2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->e:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b:Z

    iput-object p3, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->f:Ljava/util/Set;

    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->c:Z

    return-void
.end method

.method static a(Lorg/w3c/dom/Node;Ljava/util/Set;)Z
    .locals 2

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0, p0}, Lorg/apache/xml/security/utils/XMLUtils;->a(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method static b(Lorg/w3c/dom/Node;Ljava/util/Set;)Z
    .locals 0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)I
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->e:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->f:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-ne v0, v2, :cond_2

    return v2

    :cond_2
    iget-boolean v3, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a:Z

    if-eqz v3, :cond_3

    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->d:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_3
    move v1, v0

    :cond_4
    return v1
.end method

.method public a(Lorg/w3c/dom/Node;I)I
    .locals 5

    iget-boolean v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->g:I

    if-eq v0, v2, :cond_0

    if-gt p2, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->e:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->g:I

    goto :goto_0

    :cond_1
    iput v2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->g:I

    :cond_2
    :goto_0
    iget v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->g:I

    if-eq v0, v2, :cond_3

    const/4 v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    iget-boolean v4, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->c:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->h:I

    if-eq v4, v2, :cond_4

    if-gt p2, v4, :cond_6

    :cond_4
    iget-object v4, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->f:Ljava/util/Set;

    invoke-static {p1, v4}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result v4

    if-nez v4, :cond_5

    iput v2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->h:I

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iput p2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->h:I

    :cond_6
    :goto_2
    iget v4, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    if-gt p2, v4, :cond_7

    iput v2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    :cond_7
    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    iget-boolean v4, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->a:Z

    if-eqz v4, :cond_a

    iget v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->d:Ljava/util/Set;

    invoke-static {p1, v0}, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->b(Lorg/w3c/dom/Node;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_9

    iput p2, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    :cond_9
    iget p1, p0, Lorg/apache/xml/security/transforms/implementations/XPath2NodeFilter;->i:I

    if-eq p1, v2, :cond_b

    return v1

    :cond_a
    move v3, v0

    :cond_b
    return v3
.end method
