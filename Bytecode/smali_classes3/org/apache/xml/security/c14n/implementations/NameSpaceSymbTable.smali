.class public Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;
.super Ljava/lang/Object;


# static fields
.field static final e:Lorg/apache/xml/security/c14n/implementations/SymbMap;


# instance fields
.field a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

.field b:I

.field c:Ljava/util/List;

.field d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-direct {v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;-><init>()V

    sput-object v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    new-instance v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    const-string v1, "xmlns"

    const-string v2, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4, v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;ZLjava/lang/String;)V

    iput-object v2, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    sget-object v2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v2, v1, v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    sget-object v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v2, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v1, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    const/4 p1, 0x1

    iput-boolean p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    iget p1, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    iput p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->a:I

    iget-object p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    iput-object p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    iget-object p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c()V

    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    iget-boolean v2, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iget-object v3, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    iget-object v2, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    iget-object v1, v1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Z
    .locals 3

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    new-instance v2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v2, p2, p3, v1, p1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object p3, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {p3, p1, v2}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    const/4 p1, 0x1

    if-eqz v0, :cond_1

    iget-object p3, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    iput-object p3, v2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    iget-object p3, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iput-boolean p1, v2, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    :cond_1
    return p1
.end method

.method public b(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    iget-object p1, p1, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Node;
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->c:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean p3, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-nez p3, :cond_0

    invoke-virtual {v0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1, p3}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    iput-object p2, p3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    iput-boolean v2, p3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    iget-object p1, p3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    return-object p1

    :cond_0
    return-object v1

    :cond_1
    new-instance v3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    invoke-direct {v3, p2, p3, v2, p1}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;-><init>(Ljava/lang/String;Lorg/w3c/dom/Attr;ZLjava/lang/String;)V

    iput-object p2, v3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object p3, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {p3, p1, v3}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    if-eqz v0, :cond_2

    iget-object p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v2, v3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    return-object v1

    :cond_2
    iget-object p1, v3, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->f:Lorg/w3c/dom/Attr;

    return-object p1
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->b:I

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d()V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    check-cast v2, Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iput-object v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    return-void

    :cond_1
    iput-boolean v3, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    :cond_0
    return-void
.end method

.method final e()V
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v3, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-interface {v0, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iput-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    iput-boolean v2, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->d:Z

    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    invoke-virtual {v0, p1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;)Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->e()V

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->a:Lorg/apache/xml/security/c14n/implementations/SymbMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/xml/security/c14n/implementations/SymbMap;->a(Ljava/lang/String;Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbEntry;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lorg/apache/xml/security/c14n/implementations/NameSpaceSymbTable;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
