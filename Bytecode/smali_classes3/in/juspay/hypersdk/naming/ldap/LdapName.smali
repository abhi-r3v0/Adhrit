.class public Lin/juspay/hypersdk/naming/ldap/LdapName;
.super Ljava/lang/Object;

# interfaces
.implements Lin/juspay/hypersdk/naming/Name;


# static fields
.field private static final serialVersionUID:J = -0x16246d04a99df8ecL


# instance fields
.field private transient rdns:Ljava/util/ArrayList;

.field private transient unparsed:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/LdapName;->parse()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-virtual {p2, p3, p4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    return-void
.end method

.method private doesListMatch(IILjava/util/List;)Z
    .locals 3

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    sub-int v2, v0, p1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private matches(IILin/juspay/hypersdk/naming/Name;)Z
    .locals 4

    instance-of v0, p3, Lin/juspay/hypersdk/naming/ldap/LdapName;

    if-eqz v0, :cond_0

    check-cast p3, Lin/juspay/hypersdk/naming/ldap/LdapName;

    iget-object p3, p3, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-direct {p0, p1, p2, p3}, Lin/juspay/hypersdk/naming/ldap/LdapName;->doesListMatch(IILjava/util/List;)Z

    move-result p1

    return p1

    :cond_0
    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_2

    sub-int v1, v0, p1

    invoke-interface {p3, v1}, Lin/juspay/hypersdk/naming/Name;->get(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;

    invoke-direct {v3, v1}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseRdn()Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object v1
    :try_end_0
    .catch Lin/juspay/hypersdk/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private parse()V
    .locals 2

    new-instance v0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-direct {v0, v1}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseDn()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    :try_start_0
    invoke-direct {p0}, Lin/juspay/hypersdk/naming/ldap/LdapName;->parse()V
    :try_end_0
    .catch Lin/juspay/hypersdk/naming/InvalidNameException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/io/StreamCorruptedException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public add(ILin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/Name;
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Cannot set comp to null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public add(ILjava/lang/String;)Lin/juspay/hypersdk/naming/Name;
    .locals 1

    new-instance v0, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;

    invoke-direct {v0, p2}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lin/juspay/hypersdk/naming/ldap/Rfc2253Parser;->parseRdn()Lin/juspay/hypersdk/naming/ldap/Rdn;

    move-result-object p2

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    return-object p0
.end method

.method public add(Lin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/Name;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/naming/ldap/LdapName;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->add(ILin/juspay/hypersdk/naming/ldap/Rdn;)Lin/juspay/hypersdk/naming/Name;

    move-result-object p1

    return-object p1
.end method

.method public add(Ljava/lang/String;)Lin/juspay/hypersdk/naming/Name;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/naming/ldap/LdapName;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->add(ILjava/lang/String;)Lin/juspay/hypersdk/naming/Name;

    move-result-object p1

    return-object p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lin/juspay/hypersdk/naming/ldap/LdapName;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lin/juspay/hypersdk/naming/ldap/LdapName;-><init>(Ljava/lang/String;Ljava/util/ArrayList;II)V

    return-object v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 4

    instance-of v0, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Lin/juspay/hypersdk/naming/ldap/LdapName;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v2, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    iget-object v3, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-virtual {v2, v3}, Lin/juspay/hypersdk/naming/ldap/Rdn;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-eqz v2, :cond_2

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    iget-object p1, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_4
    new-instance p1, Ljava/lang/ClassCastException;

    const-string v0, "The obj is not a LdapName"

    invoke-direct {p1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public endsWith(Lin/juspay/hypersdk/naming/Name;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Lin/juspay/hypersdk/naming/Name;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    sub-int v2, v1, v2

    invoke-direct {p0, v2, v1, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->matches(IILin/juspay/hypersdk/naming/Name;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public endsWith(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/hypersdk/naming/ldap/Rdn;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    sub-int v2, v1, v2

    invoke-direct {p0, v2, v1, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->doesListMatch(IILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lin/juspay/hypersdk/naming/ldap/LdapName;

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    iget-object v3, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/juspay/hypersdk/naming/ldap/Rdn;

    iget-object v4, p1, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAll()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lin/juspay/hypersdk/naming/ldap/LdapName$1;

    invoke-direct {v1, p0, v0}, Lin/juspay/hypersdk/naming/ldap/LdapName$1;-><init>(Lin/juspay/hypersdk/naming/ldap/LdapName;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getPrefix(I)Lin/juspay/hypersdk/naming/Name;
    .locals 4

    :try_start_0
    new-instance v0, Lin/juspay/hypersdk/naming/ldap/LdapName;

    const/4 v1, 0x0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;-><init>(Ljava/lang/String;Ljava/util/ArrayList;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Posn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getRdns()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lin/juspay/hypersdk/naming/ldap/Rdn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSuffix(I)Lin/juspay/hypersdk/naming/Name;
    .locals 4

    :try_start_0
    new-instance v0, Lin/juspay/hypersdk/naming/ldap/LdapName;

    const/4 v1, 0x0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, p1, v3}, Lin/juspay/hypersdk/naming/ldap/LdapName;-><init>(Ljava/lang/String;Ljava/util/ArrayList;II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Posn: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public startsWith(Lin/juspay/hypersdk/naming/Name;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Lin/juspay/hypersdk/naming/Name;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0, v2, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->matches(IILin/juspay/hypersdk/naming/Name;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public startsWith(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lin/juspay/hypersdk/naming/ldap/Rdn;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v0, v2, p1}, Lin/juspay/hypersdk/naming/ldap/LdapName;->doesListMatch(IILjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    if-ltz v2, :cond_1

    iget-object v3, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, -0x2

    :goto_0
    if-ltz v1, :cond_2

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->rdns:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lin/juspay/hypersdk/naming/ldap/Rdn;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/hypersdk/naming/ldap/LdapName;->unparsed:Ljava/lang/String;

    return-object v0
.end method
